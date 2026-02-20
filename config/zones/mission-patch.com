$ORIGIN mission-patch.com.
$TTL 1h
mission-patch.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547902578 86400 7200 604800 300
mission-patch.com. 3600 IN NS ns1.dnsimple.com.
mission-patch.com. 3600 IN NS ns2.dnsimple.com.
mission-patch.com. 3600 IN NS ns3.dnsimple.com.
mission-patch.com. 3600 IN NS ns4.dnsimple.com.
; mission-patch.com. 3600 IN ALIAS mission-patch-api-hlm2.onrender.com.
mission-patch.com. 3600 IN MX 10 mxa.mailgun.org.
mission-patch.com. 3600 IN MX 10 mxb.mailgun.org.
mission-patch.com. 3600 IN TXT "google-site-verification=q196wR1gvm7V219c9x0IRmQaVm-YONWR0KyKslKDc-s"
mission-patch.com. 3600 IN TXT "stripe-verification=43d16cbf8a47a2f56a7eb952f29b152e74bd15d4f9d1100b906db6d020d50838"
mission-patch.com. 3600 IN TXT "v=spf1 include:mailgun.org ~all"
20231219172758pm._domainkey.mission-patch.com. 3600 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC97w+JzBZkkH31pwPUu0x8ZklJIdcX58umLU1p4EjZLju4CKXAby4rPzJL+bngeMk6bp5BJwyTo66Qlp3RW837k4OfRIAvUXvGSgn3CQiK5XrsQjqkfGSj8ctlhbwyr/MutT7+lgLJNYAlhOShQJi3lwUYR1Bef4DKKDtYJKryDwIDAQAB"
20240401163210pm._domainkey.mission-patch.com. 3600 IN TXT "k=rsa;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCq2tKpxxluWsB2BZcDwUi1683OYOHhWaUzlnJBCb/+jW5wBmZbJIPNyOZVi/SXk31QfqtJaVVmQXMdH2mtfi42Iw0TLSzYod3i19BUamnwiLmcRVZAQkpeifmavz3vGBnMai09jR/TLLAQ8CckLFJWNyZGI2MwQALVSTYqlmyG2wIDAQAB"
56vh3crhsilak4ggmihytnjjtdc236ew._domainkey.mission-patch.com. 3600 IN CNAME 56vh3crhsilak4ggmihytnjjtdc236ew.dkim.custom-email-domain.stripe.com.
7qpam5ijettbgprrrbpi5feqnizg3n7i._domainkey.mission-patch.com. 3600 IN CNAME 7qpam5ijettbgprrrbpi5feqnizg3n7i.dkim.custom-email-domain.stripe.com.
api.mission-patch.com. 3600 IN CNAME mission-patch-api-hlm2.onrender.com.
bounce.mission-patch.com. 3600 IN CNAME custom-email-domain.stripe.com.
cpctdj7ebbvpia5fbyzxohn3376nv2x7._domainkey.mission-patch.com. 3600 IN CNAME cpctdj7ebbvpia5fbyzxohn3376nv2x7.dkim.custom-email-domain.stripe.com.
dlmldpwu6nv5o7celbyauryrxihohdco._domainkey.mission-patch.com. 3600 IN CNAME dlmldpwu6nv5o7celbyauryrxihohdco.dkim.custom-email-domain.stripe.com.
_dmarc.mission-patch.com. 3600 IN TXT "v=DMARC1;p=quarantine;pct=100;rua=mailto:dmarc-reports@gofreerange.com;fo=1"
krs._domainkey.mission-patch.com. 3600 IN TXT "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFmwe3WUqHjEwjEKAlmPgX/+TCNXaT6tDnmi6H0dsS3RDwOSdXh491Tc2tohZ+hKWo/9q2h6PPJ5Ro5YEmsI7VARfbXzOS2hl241gJ1c3ioRDDw/gRYlxak83hG1ov2/I8uWqPfihhlGjKPs8YAJQ6kacQJUXxUJDiOPgj/QE7fwIDAQAB"
pm-bounces.mission-patch.com. 3600 IN CNAME pm.mtasv.net.
www.mission-patch.com. 3600 IN CNAME mission-patch-api-hlm2.onrender.com.
yiiss25cdq5kuh2gdq45b4tfbghpkt6z._domainkey.mission-patch.com. 3600 IN CNAME yiiss25cdq5kuh2gdq45b4tfbghpkt6z.dkim.custom-email-domain.stripe.com.
zvpfrp7bbnkfesgeoy7jkpv2cpfdmpwv._domainkey.mission-patch.com. 3600 IN CNAME zvpfrp7bbnkfesgeoy7jkpv2cpfdmpwv.dkim.custom-email-domain.stripe.com.
