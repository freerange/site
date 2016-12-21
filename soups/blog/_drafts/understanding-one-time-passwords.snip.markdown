# Understanding one-time passwords

I recently spent some time investigating the [HOTP][hotp] (HMAC-based) and [TOTP][totp] (Time-based) algorithms for generating one-time passwords. It turns out they they're much simpler than I'd assumed they might be!

This post describes how to generate HOTPs in Ruby before moving on to demonstrate how the same code can be used to generate TOTPs.

[hotp]: https://en.wikipedia.org/wiki/HMAC-based_One-time_Password_Algorithm
[totp]: https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm

## Generating an HOTP in Ruby

### 1. Generate the HMAC

_NOTE._ This example uses the key and a counter from the Test Values in Appendix 4 of [HOTP RFC 4226][rfc-4226] so that we can verify the output.

[rfc-4226]: https://www.ietf.org/rfc/rfc4226.txt

The HMAC is a 20 byte (160 bit) string.

```ruby
require 'openssl'

key = '12345678901234567890'
counter = 5
counter_as_byte_string = [counter].pack('Q>')

digest = OpenSSL::Digest.new('sha1')
hmac = OpenSSL::HMAC.digest(digest, key, counter_as_byte_string)

puts hmac.unpack('H*')
#=> 'a37e783d7b7233c083d4f62926c7a25f238d0316'
# Or as an array
# [0xa3, 0x7e, 0x78, 0x3d, 0x7b, 0x72, 0x33, 0xc0, 0x83, 0xd4,
#  0xf6, 0x29, 0x26, 0xc7, 0xa2, 0x5f, 0x23, 0x8d, 0x03, 0x16]
```

### 2. Generate the offset

The offset is the number represented by the last 4 bits of the last byte.

```ruby
offset = hmac.bytes.last & 0x0f
# Equivalent to: 0x16 & 0x0f
# Equals: 0x06
# Or as a decimal: 6
```

### 3. Take 4 bytes starting at the offset

```ruby
bytes = hmac.bytes[offset..offset + 3]
# Equivalent to: hmac.bytes[6..9]
# Equals: [0x33, 0xc0, 0x83, 0xd4]
# Or as decimals: [51, 192, 131, 212]
```

### 4. Mask the most significant bit of the first byte

To avoid any confusion around signed vs unsigned integers.

```ruby
bytes[0] = bytes[0] & 0x7f
# Equivalent to: 0x33 & 0x7f
# Equals: 0x33 # No-op in this instance
```

### 5. Convert the 4 bytes into a 32bit integer

```ruby
bytes_as_integer = (bytes[0] << 24) + (bytes[1] << 16) + (bytes[2] << 8) + bytes[3]
# Equivalent to: (0x33 << 24) + (0xc0 << 16) + (0x83 << 8) + 0xd4
# Equals: 868254676
```

### 6. Generate OTP

The OTP is the last n digits (6 by default) of the number we've generated.

```ruby
digits = 6
puts bytes_as_integer.modulo(10 ** digits)
# Equivalent to: 868254676.modulo(1_000_000)
#=> 254676
```

### The code in full

```ruby
require 'openssl'

key = '12345678901234567890'
counter = 5
digits = 6

counter_as_byte_string = [counter].pack('Q>')
digest = OpenSSL::Digest.new('sha1')
hmac = OpenSSL::HMAC.digest(digest, key, counter_as_byte_string)
offset = hmac.bytes.last & 0x0f
bytes = hmac.bytes[offset..offset + 3]
bytes[0] = bytes[0] & 0x7f
bytes_as_integer = (bytes[0] << 24) + (bytes[1] << 16) + (bytes[2] << 8) + bytes[3]
puts bytes_as_integer.modulo(10 ** digits)
```

## Generating TOTPs

TOTPs use the same algorithm as HOTPs but use the number of 30 second intervals in the current [unix time][unix-time] as the counter.

We can demonstrate this using `oathtool` from the [OATH Toolkit][oath-toolkit]. We start by generating a TOTP based on the current time before generating an HOTP using the counter we're given in the verbose output.

[oath-toolkit]: http://www.nongnu.org/oath-toolkit/

```bash
# Generate TOTP for current time
$ oathtool --totp --verbose 3132333435363738393031323334353637383930
Hex secret: 3132333435363738393031323334353637383930
Base32 secret: GEZDGNBVGY3TQOJQGEZDGNBVGY3TQOJQ
Digits: 6
Window size: 0
Step size (seconds): 30
Start time: 1970-01-01 00:00:00 UTC (0)
Current time: 2016-12-21 10:52:10 UTC (1482317530)
Counter: 0x2F1F218 (49410584)

744955

# Generate HOTP using counter above
$ oathtool --hotp --counter 49410584 3132333435363738393031323334353637383930
744955
```

Now that we know that the only difference is in the value of the counter we can update our Ruby script to generate TOTPs.

```ruby
require 'openssl'

key = '12345678901234567890'
counter = Time.now.to_i / 30 # 30 second intervals in current unix time
digits = 6

counter_as_byte_string = [counter].pack('Q>')
digest = OpenSSL::Digest.new('sha1')
hmac = OpenSSL::HMAC.digest(digest, key, counter_as_byte_string)
offset = hmac.bytes.last & 0x0f
bytes = hmac.bytes[offset..offset + 3]
bytes[0] = bytes[0] & 0x7f
bytes_as_integer = (bytes[0] << 24) + (bytes[1] << 16) + (bytes[2] << 8) + bytes[3]
puts bytes_as_integer.modulo(10 ** digits)
```

Assuming we've saved the Ruby script as totp.rb, we can use `oathtool` to verify the generated OTP.

```bash
$ ruby totp.rb
662110

$ oathtool --totp 3132333435363738393031323334353637383930
662110
```

Note that the key we pass to `oathtool` is the hex encoded representation of the key in our Ruby script.

```ruby
'12345678901234567890'.unpack('H*')
=> ["3132333435363738393031323334353637383930"]
```

[unix-time]: https://en.wikipedia.org/wiki/Unix_time

:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-12-21 11:25:00 +00:00
:updated_at: 2016-12-21 11:25:00 +00:00
:page_title: Understanding one-time passwords
