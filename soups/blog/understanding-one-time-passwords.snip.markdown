Understanding one-time passwords
--------------------------------

I recently spent some time investigating the [HOTP][hotp] (HMAC-based) and [TOTP][totp] (Time-based) one-time password algorithms. You're probably relying on one of these algorithms if you've enabled [two-factor authentication][2fa] for a service (e.g. GitHub) and are using something like [Google Authenticator][google-authenticator], [Authy][authy] or [1Password][1password-otp] to generate a 6 digit code when signing in.

I've enabled two-factor authentication on quite a few services I use and wanted to understand how the one-time password was being generated. I was surprised to learn quite how simple the algorithms are and thought I'd share what I understand. This post describes how to generate HOTPs in Ruby before moving on to demonstrate how the same code can be used to generate TOTPs.

[1password-otp]: https://support.1password.com/one-time-passwords/
[2fa]: https://en.wikipedia.org/wiki/Multi-factor_authentication
[authy]: https://www.authy.com/
[google-authenticator]: https://en.wikipedia.org/wiki/Google_Authenticator
[hotp]: https://en.wikipedia.org/wiki/HMAC-based_One-time_Password_Algorithm
[totp]: https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm

## Generating an HOTP in Ruby

The step numbers (1 to 3) below correspond to the steps in section 5.3 ("Generating an HOTP Value") of [HOTP RFC 4226][rfc-4226].

### 1. Generate an HMAC-SHA-1 value

I'm using the key and a counter from the Test Values in Appendix D of HOTP RFC 4226 so that we can verify the output. In the real world you'd be given the key (often encoded in a QR code) by the site that you're enabling 2FA for.

[rfc-4226]: https://www.ietf.org/rfc/rfc4226.txt

The resulting HMAC is a 20 byte (160 bit) string.

~~~ruby
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
~~~

### 2. Generate a 4-byte string

#### 2a. Generate the offset

The offset is the number represented by the last 4 bits of the last byte.

~~~ruby
offset = hmac.bytes.last & 0x0f
# Equivalent to: 0x16 & 0x0f
# Equals: 0x06
# Or as a decimal: 6
~~~

#### 2b. Take 4 bytes starting at the offset

~~~ruby
bytes = hmac.bytes[offset..offset + 3]
# Equivalent to: hmac.bytes[6..9]
# Equals: [0x33, 0xc0, 0x83, 0xd4]
# Or as decimals: [51, 192, 131, 212]
~~~

#### 2c. Mask the most significant bit of the first byte

To avoid any confusion around signed vs unsigned integers.

~~~ruby
bytes[0] = bytes[0] & 0x7f
# Equivalent to: 0x33 & 0x7f
# Equals: 0x33 # No-op in this instance
~~~

### 3. Compute an HOTP value

#### 3a. Convert the 4 bytes into a 32bit integer

There are two implementations below. The first uses bit-shifting and the second (suggested by [James][james-mead]) uses `Array#pack` and `String#unpack`. While the second implementation is more concise, I've retained both as I think the first makes it easier to see what's going on.

~~~ruby
# 1. Bit-shifting
bytes_as_integer = (bytes[0] << 24) + (bytes[1] << 16) + (bytes[2] << 8) + bytes[3]
# Equivalent to: (0x33 << 24) + (0xc0 << 16) + (0x83 << 8) + 0xd4
# or in decimal: (51 * (2**24)) + (192 * (2**16)) + (131 * (2**8)) + 212
# Equals: 855638016 + 12582912 + 33536 + 212
# Equals: 868254676

# 2. Using `Array#pack` and `String#unpack`
bytes_as_integer = bytes.pack('c*').unpack('N')[0]
# Equals: 868254676
~~~

[james-mead]: /james-mead

#### 3b. Generate OTP

The OTP is the last n digits (6 by default) of the number we've generated.

~~~ruby
digits = 6
puts bytes_as_integer.modulo(10 ** digits)
# Equivalent to: 868254676.modulo(1_000_000)
#=> 254676
~~~

### The code in full

~~~ruby
require 'openssl'

def generate_otp(key, counter, digits = 6)
  counter_as_byte_string = [counter].pack('Q>')
  digest = OpenSSL::Digest.new('sha1')
  hmac = OpenSSL::HMAC.digest(digest, key, counter_as_byte_string)
  offset = hmac.bytes.last & 0x0f
  bytes = hmac.bytes[offset..offset + 3]
  bytes[0] = bytes[0] & 0x7f
  bytes_as_integer = (bytes[0] << 24) + (bytes[1] << 16) + (bytes[2] << 8) + bytes[3]
  bytes_as_integer.modulo(10 ** digits)
end

otp = generate_otp('12345678901234567890', 5)
puts "OTP: %s" % otp
~~~

## Generating TOTPs

The TOTP algorithm builds on HOTPs by specifying how the value of the counter should be calculated. This avoids the need to synchronise the counter between the server (e.g. GitHub) and the client (e.g. Authy) as both parties can calculate it in the same way.

The counter specified in [the TOTP RFC][rfc-6238] is the number of 30 second intervals in the current [unix time][unix-time].

[rfc-6238]: https://tools.ietf.org/rfc/rfc6238.txt
[unix-time]: https://en.wikipedia.org/wiki/Unix_time

We can demonstrate the relationship between TOTPs and HOTPs using `oathtool` from the [OATH Toolkit][oath-toolkit]. We start by generating a TOTP based on the current time and then show that we can generate the same HOTP by using the counter we're given in the verbose output.

[oath-toolkit]: http://www.nongnu.org/oath-toolkit/

~~~bash
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
~~~

Note that the key we pass to `oathtool` above is the hex encoded representation of the example key we're using in our Ruby script.

~~~ruby
'12345678901234567890'.unpack('H*')
=> ["3132333435363738393031323334353637383930"]
~~~

Now that we know that the only difference is in the value of the counter we can update our Ruby script to generate TOTPs.

~~~ruby
counter = Time.now.to_i / 30 # 30 second intervals in current unix time

otp = generate_otp('12345678901234567890', counter)
puts "OTP: %s" % otp
~~~

Assuming we've saved the Ruby script as totp.rb, we can use `oathtool` to verify the generated OTP.

~~~bash
$ ruby totp.rb
662110

$ oathtool --totp 3132333435363738393031323334353637383930
662110
~~~

## Conclusion

I hope this post helps illustrate how relatively simple these two algorithms are. While the code certainly seems to work, there are no tests and I have no idea about its performance. If you're looking to use something like this in production then you might want to check out [The Ruby One Time Password Library][rotp] (I've not tried this but it seems to have some tests) or the OATH Toolkit mentioned earlier.

After reading a draft of this post, [Paul][paul-battley] pointed me to this [How Google Authenticator Works blog post from a couple of years ago][how-google-authenticator-works]. The author also wanted to understand how these one-time passwords are generated and has described the algorithm in their post. It might be worth reading if this post leaves you with unanswered questions.

[how-google-authenticator-works]: https://garbagecollected.org/2014/09/14/how-google-authenticator-works/
[paul-battley]: http://po-ru.com/
[rotp]: https://github.com/mdp/rotp

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2017-01-06 19:30:00 +00:00
:updated_at: 2017-01-06 19:30:00 +00:00
:page_title: Understanding one-time passwords
