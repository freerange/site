; NOTE. Some internal projects use Amazon SES to send email - hence the mention of amazonses.com in the SPF and DKIM records below.
; Paste the zonefile below this line:
$ORIGIN gofreerange.com.
$TTL 1h
gofreerange.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547827370 86400 7200 604800 300
gofreerange.com. 3600 IN NS ns1.dnsimple.com.
gofreerange.com. 3600 IN NS ns2.dnsimple.com.
gofreerange.com. 3600 IN NS ns3.dnsimple.com.
gofreerange.com. 3600 IN NS ns4.dnsimple.com.
badger.gofreerange.com. 3600 IN A 85.159.213.6
www.gofreerange.com. 3600 IN CNAME concentric-spinach-jfm7ycahe4pjnh6qghmp1cxa.herokudns.com.
calendar.gofreerange.com. 3600 IN CNAME ghs.google.com.
docs.gofreerange.com. 3600 IN CNAME ghs.google.com.
feeds.gofreerange.com. 3600 IN CNAME 1mcuj68.feedproxy.ghs.google.com.
futurelearn-subtitles.gofreerange.com. 3600 IN CNAME futurelearn-subtitles.gofreerange.com.s3-website-eu-west-1.amazonaws.com.
futurelearn-video.gofreerange.com. 3600 IN CNAME futurelearn-video.gofreerange.com.s3-website-eu-west-1.amazonaws.com.
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
