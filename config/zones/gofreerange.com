; NOTE. Some internal projects use Amazon SES to send email - hence the mention of amazonses.com in the SPF and DKIM records below.
; Paste the zonefile below this line:
$ORIGIN gofreerange.com.
$TTL 1h
gofreerange.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547827388 86400 7200 604800 300
gofreerange.com. 3600 IN NS ns1.dnsimple.com.
gofreerange.com. 3600 IN NS ns2.dnsimple.com.
gofreerange.com. 3600 IN NS ns3.dnsimple.com.
gofreerange.com. 3600 IN NS ns4.dnsimple.com.
www.gofreerange.com. 3600 IN CNAME concentric-spinach-jfm7ycahe4pjnh6qghmp1cxa.herokudns.com.
calendar.gofreerange.com. 3600 IN CNAME ghs.google.com.
docs.gofreerange.com. 3600 IN CNAME ghs.google.com.
feeds.gofreerange.com. 3600 IN CNAME experimental-coconut-jnfe5nycyau5cj377625izju.herokudns.com.
geohash.gofreerange.com. 3600 IN CNAME proxy.heroku.com.
googleffffffffcc1ff19c.gofreerange.com. 3600 IN CNAME google.com.
m55w7dvxq3gzjauiuonyxccptpeqqyrz._domainkey.gofreerange.com. 3600 IN CNAME m55w7dvxq3gzjauiuonyxccptpeqqyrz.dkim.amazonses.com.
mail.gofreerange.com. 3600 IN CNAME ghs.google.com.
qallhze5sbmxakooblcjoxzcnaeaf4gs._domainkey.gofreerange.com. 3600 IN CNAME qallhze5sbmxakooblcjoxzcnaeaf4gs.dkim.amazonses.com.
sites.gofreerange.com. 3600 IN CNAME ghs.google.com.
start.gofreerange.com. 3600 IN CNAME ghs.google.com.
t4jwxpgubazwy5wbsrytm2ijtbn7wxfz._domainkey.gofreerange.com. 3600 IN CNAME t4jwxpgubazwy5wbsrytm2ijtbn7wxfz.dkim.amazonses.com.
gofreerange.com. 3600 IN MX 5 ALT1.ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 5 ALT2.ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 1 ASPMX.L.GOOGLE.com.
gofreerange.com. 3600 IN MX 10 ASPMX2.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 40 ASPMX5.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 30 ASPMX4.GOOGLEMAIL.com.
gofreerange.com. 3600 IN MX 10 ASPMX3.GOOGLEMAIL.com.
gofreerange.com. 3600 IN TXT "v=spf1 include:_spf.google.com include:amazonses.com ~all"
google._domainkey.gofreerange.com. 3600 IN TXT "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqUyRV1d/QCw+4VjDvvAv61hpLub6U6Txnq97Fj0tuIB34GZl0ymT3BSUomPKeH8juQp/iveCnM9sBLg/lYjLjgKBnixOpiWz9nAZA2lrIa1ffIrES+DGiVsGRrFz9zgC/vqC6sfRfMyJahHGL6AYYQzz0OdrZsSsSQf9WTZKr54fykWmrukvpqV9OW86m7At1,UCIZXn2mXRx/WG0z1q4CTstcAcwxs28QIbRfOo51AD/NBbgzqmfwTFtFIubBdOTLtWb3OVZJOdcKEW5OOh6+La08hdwd6z12iGLSwBy4h/qC4YfC/xAnvFHXkrsLuknnYfzt44I7E8Tm6DAWWs64QIDAQAB"
_github-challenge-freerange.gofreerange.com. 3600 IN TXT "308436e875"
; gofreerange.com. 3600 IN ALIAS adjacent-temple-lktfu02di91skw9vz2ff6wzh.herokudns.com.
gofreerange.com. 3600 IN TXT "ALIAS for adjacent-temple-lktfu02di91skw9vz2ff6wzh.herokudns.com"
_371083cc9e3b4573f69c7571d1c5d2cb.blackwell.gofreerange.com. 3600 IN CNAME _1ae9f8bd1a8d5875f7208b5e6f7d42fd.hkvuiqjoua.acm-validations.aws.
blackwell.gofreerange.com. 60 IN CNAME black-Appli-6BPAZ5E7RCB7-1848132714.eu-west-1.elb.amazonaws.com.
_amazonses.gofreerange.com. 3600 IN TXT "pcErQAJGrjzvZYiaY2FWyG2QmbZ6IACH/kqmnjFQ/0M="
pm-bounces.gofreerange.com. 3600 IN CNAME pm.mtasv.net.
20200924121540pm._domainkey.gofreerange.com. 60 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDG+uahIGZtqShvzKwuLtwwird8KwGIJSd2mJ4xJP6B1fwn6A1cNkKezXauYmhiKaZwnS4Gt4tvYImFgfEoO7HOENRC0ZxUy0jI+AgasoMGhNvN2hHUvdPZvethvp8bYccedsU3SQTbLH4Nujnhw8Lzh08it/Ri0fyNhpmG9WFDgQIDAQAB"
freeagent-mailer.gofreerange.com. 3600 IN CNAME pm.mtasv.net.
20200516112239pm._domainkey.gofreerange.com. 60 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCZGW915R2a0aV2aZuXqVg6zavT2VW6Jh4vF9o5gp8paqTLO9NYq6n1LDWQs0dKWWHvFAyQCE9MJfLi7xI0o2PIt0vxo/4kKRF8N+cbXYuaEurH69eym+r5tob9gOhPtu9mpQgVz/CIUArOqiXyhJzmN9auto8FooVaE/89lUxTlQIDAQAB"
