; gofreerange.com [75717]
$TTL 86400
@	IN	SOA	ns1.linode.com. hostmaster.gofreerange.com. 2016102454 14400 14400 1209600 86400
@		NS	ns1.linode.com.
@		NS	ns2.linode.com.
@		NS	ns3.linode.com.
@		NS	ns4.linode.com.
@		NS	ns5.linode.com.
@			MX	1	ASPMX.L.GOOGLE.COM.
@			MX	5	ALT1.ASPMX.L.GOOGLE.COM.
@			MX	5	ALT2.ASPMX.L.GOOGLE.COM.
@			MX	10	ASPMX2.GOOGLEMAIL.COM.
@			MX	10	ASPMX3.GOOGLEMAIL.COM.
@			MX	30	ASPMX4.GOOGLEMAIL.COM.
@			MX	40	ASPMX5.GOOGLEMAIL.COM.
; GFR Video uses Amazon SES to send email - hence the mention of amazonses.com in this SPF record
@		300	TXT	"v=spf1 include:_spf.google.com include:amazonses.com ~all"
google._domainkey		300	TXT	(
	"v=DKIM1\059 k=rsa\059 p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqUyRV1d/QCw+4VjDvvAv61hpLub6U6Txnq97Fj0tuIB34GZl0ymT3BSUomPKeH8juQp/iveCnM9sBLg/lYjLjgKBnixOpiWz9nAZA2lrIa1ffIrES+DGiVsGRrFz9zgC/vqC6sfRfMyJahHGL6AYYQzz0OdrZsSsSQf9WTZKr54fykWmrukvpqV9OW86m7At1"
	"UCIZXn2mXRx/WG0z1q4CTstcAcwxs28QIbRfOo51AD/NBbgzqmfwTFtFIubBdOTLtWb3OVZJOdcKEW5OOh6+La08hdwd6z12iGLSwBy4h/qC4YfC/xAnvFHXkrsLuknnYfzt44I7E8Tm6DAWWs64QIDAQAB" )
@			A	85.159.213.6
alpaca			A	109.74.205.44
badger			A	85.159.213.6
video		300	A	178.79.133.233
5b34d8633db8a3c423523a65f7a3a536.video		7200	CNAME	50C2E875CC5B5DFE97916ED6FFF1A22C8797A807.comodoca.com.
caffeine-monitor			CNAME	gofreerange.com.
calendar			CNAME	ghs.google.com.
docs			CNAME	ghs.google.com.
feeds		300	CNAME	1mcuj68.feedproxy.ghs.google.com.
futurelearn-subtitles		300	CNAME	futurelearn-subtitles.gofreerange.com.s3-website-eu-west-1.amazonaws.com.
futurelearn-video		300	CNAME	futurelearn-video.gofreerange.com.s3-website-eu-west-1.amazonaws.com.
geohash			CNAME	proxy.heroku.com.
googleffffffffcc1ff19c			CNAME	google.com.
m55w7dvxq3gzjauiuonyxccptpeqqyrz._domainkey		300	CNAME	m55w7dvxq3gzjauiuonyxccptpeqqyrz.dkim.amazonses.com.
mail			CNAME	ghs.google.com.
qallhze5sbmxakooblcjoxzcnaeaf4gs._domainkey		300	CNAME	qallhze5sbmxakooblcjoxzcnaeaf4gs.dkim.amazonses.com.
sites			CNAME	ghs.google.com.
start			CNAME	ghs.google.com.
t4jwxpgubazwy5wbsrytm2ijtbn7wxfz._domainkey		300	CNAME	t4jwxpgubazwy5wbsrytm2ijtbn7wxfz.dkim.amazonses.com.
videos		300	CNAME	ddcxl0amt4k19.cloudfront.net.
webhooks		300	CNAME	gofreerange.com.
www			CNAME	gofreerange.com.
