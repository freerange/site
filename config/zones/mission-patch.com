$ORIGIN mission-patch.com.
$TTL 1h
mission-patch.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547902523 86400 7200 604800 300
mission-patch.com. 3600 IN NS ns1.dnsimple.com.
mission-patch.com. 3600 IN NS ns2.dnsimple.com.
mission-patch.com. 3600 IN NS ns3.dnsimple.com.
mission-patch.com. 3600 IN NS ns4.dnsimple.com.
autodiscover.mission-patch.com. 3600 IN CNAME autodiscover.mail.eu-west-1.awsapps.com.
mission-patch.com. 3600 IN MX 10 inbound-smtp.eu-west-1.amazonaws.com.
_amazonses.mission-patch.com. 3600 IN TXT "7IOzpzI23l95v4PU2mEB9QawiT+zBz1SQzjO7cPlvQk="
_dmarc.mission-patch.com. 3600 IN TXT "v=DMARC1;p=quarantine;pct=100;fo=1"
; mission-patch.com. 3600 IN ALIAS mission-patch.com.herokudns.com.
kj6owdu3m7opqpaqdthxlsdn7ws6q4lo._domainkey.mission-patch.com. 3600 IN CNAME kj6owdu3m7opqpaqdthxlsdn7ws6q4lo.dkim.amazonses.com.
pi4nhn5n745qtvshl3pntd5crochzvam._domainkey.mission-patch.com. 3600 IN CNAME pi4nhn5n745qtvshl3pntd5crochzvam.dkim.amazonses.com.
z3tjfs5wm7xqgzhp5nn5ayesiy73ydv4._domainkey.mission-patch.com. 3600 IN CNAME z3tjfs5wm7xqgzhp5nn5ayesiy73ydv4.dkim.amazonses.com.
mission-patch.com. 3600 IN TXT "v=spf1 include:amazonses.com ~all"
mail.mission-patch.com. 3600 IN MX 10 feedback-smtp.eu-west-1.amazonses.com.
mail.mission-patch.com. 3600 IN TXT "v=spf1 include:amazonses.com ~all"
mission-patch.com. 3600 IN TXT "stripe-verification=43d16cbf8a47a2f56a7eb952f29b152e74bd15d4f9d1100b906db6d020d50838"
zvpfrp7bbnkfesgeoy7jkpv2cpfdmpwv._domainkey.mission-patch.com. 3600 IN CNAME zvpfrp7bbnkfesgeoy7jkpv2cpfdmpwv.dkim.custom-email-domain.stripe.com.
dlmldpwu6nv5o7celbyauryrxihohdco._domainkey.mission-patch.com. 3600 IN CNAME dlmldpwu6nv5o7celbyauryrxihohdco.dkim.custom-email-domain.stripe.com.
yiiss25cdq5kuh2gdq45b4tfbghpkt6z._domainkey.mission-patch.com. 3600 IN CNAME yiiss25cdq5kuh2gdq45b4tfbghpkt6z.dkim.custom-email-domain.stripe.com.
cpctdj7ebbvpia5fbyzxohn3376nv2x7._domainkey.mission-patch.com. 3600 IN CNAME cpctdj7ebbvpia5fbyzxohn3376nv2x7.dkim.custom-email-domain.stripe.com.
56vh3crhsilak4ggmihytnjjtdc236ew._domainkey.mission-patch.com. 3600 IN CNAME 56vh3crhsilak4ggmihytnjjtdc236ew.dkim.custom-email-domain.stripe.com.
7qpam5ijettbgprrrbpi5feqnizg3n7i._domainkey.mission-patch.com. 3600 IN CNAME 7qpam5ijettbgprrrbpi5feqnizg3n7i.dkim.custom-email-domain.stripe.com.
bounce.mission-patch.com. 3600 IN CNAME custom-email-domain.stripe.com.
