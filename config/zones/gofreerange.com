$ORIGIN gofreerange.com.
$TTL 1h
gofreerange.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547827449 86400 7200 604800 300
gofreerange.com. 3600 IN NS ns1.dnsimple.com.
gofreerange.com. 3600 IN NS ns2.dnsimple.com.
gofreerange.com. 3600 IN NS ns3.dnsimple.com.
gofreerange.com. 3600 IN NS ns4.dnsimple.com.
www.gofreerange.com. 3600 IN CNAME concentric-spinach-jfm7ycahe4pjnh6qghmp1cxa.herokudns.com.
calendar.gofreerange.com. 3600 IN CNAME ghs.googlehosted.com.
docs.gofreerange.com. 3600 IN CNAME ghs.googlehosted.com.
feeds.gofreerange.com. 3600 IN CNAME experimental-coconut-jnfe5nycyau5cj377625izju.herokudns.com.
googleffffffffcc1ff19c.gofreerange.com. 3600 IN CNAME google.com.
mail.gofreerange.com. 3600 IN CNAME ghs.googlehosted.com.
gofreerange.com. 3600 IN MX 5 ALT1.ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 5 ALT2.ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 1 ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 10 ASPMX2.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 40 ASPMX5.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 30 ASPMX4.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 10 ASPMX3.GOOGLEMAIL.com.
gofreerange.com. 3600 IN TXT "v=spf1 include:_spf.google.com ~all"
google._domainkey.gofreerange.com. 3600 IN TXT "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqUyRV1d/QCw+4VjDvvAv61hpLub6U6Txnq97Fj0tuIB34GZl0ymT3BSUomPKeH8juQp/iveCnM9sBLg/lYjLjgKBnixOpiWz9nAZA2lrIa1ffIrES+DGiVsGRrFz9zgC/vqC6sfRfMyJahHGL6AYYQzz0OdrZsSsSQf9WTZKr54fykWmrukvpqV9OW86m7At1,UCIZXn2mXRx/WG0z1q4CTstcAcwxs28QIbRfOo51AD/NBbgzqmfwTFtFIubBdOTLtWb3OVZJOdcKEW5OOh6+La08hdwd6z12iGLSwBy4h/qC4YfC/xAnvFHXkrsLuknnYfzt44I7E8Tm6DAWWs64QIDAQAB"
_github-challenge-freerange.gofreerange.com. 3600 IN TXT "308436e875"
; gofreerange.com. 3600 IN ALIAS adjacent-temple-lktfu02di91skw9vz2ff6wzh.herokudns.com.
pm-bounces.gofreerange.com. 3600 IN CNAME pm.mtasv.net.
20200924121540pm._domainkey.gofreerange.com. 60 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDG+uahIGZtqShvzKwuLtwwird8KwGIJSd2mJ4xJP6B1fwn6A1cNkKezXauYmhiKaZwnS4Gt4tvYImFgfEoO7HOENRC0ZxUy0jI+AgasoMGhNvN2hHUvdPZvethvp8bYccedsU3SQTbLH4Nujnhw8Lzh08it/Ri0fyNhpmG9WFDgQIDAQAB"
freeagent-mailer.gofreerange.com. 3600 IN CNAME pm.mtasv.net.
20200516112239pm._domainkey.gofreerange.com. 60 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCZGW915R2a0aV2aZuXqVg6zavT2VW6Jh4vF9o5gp8paqTLO9NYq6n1LDWQs0dKWWHvFAyQCE9MJfLi7xI0o2PIt0vxo/4kKRF8N+cbXYuaEurH69eym+r5tob9gOhPtu9mpQgVz/CIUArOqiXyhJzmN9auto8FooVaE/89lUxTlQIDAQAB"
geohash.gofreerange.com. 3600 IN CNAME defined-horse-xfcnv0flcrgtczow9avvta35.herokudns.com.
video.gofreerange.com. 3600 IN CNAME theoretical-crane-i3yy0t9vms0qhgm515hgp1gp.herokudns.com.
gofreerange.com. 3600 IN TXT "MS=79E755CE19882FCEC2943C5C5888314C9171894F"
gofreerange.com. 3600 IN TXT "google-site-verification=FU6eNTUKWFsZp-twz4Gn2q2CwlGvdYNuw97OOitjMQA"
fastly-log-sink.gofreerange.com. 3600 IN A 178.62.124.238

