$ORIGIN mission-patch.com.
$TTL 1h
mission-patch.com. 3600 IN SOA ns1.dnsimple.com. admin.dnsimple.com. 1547902513 86400 7200 604800 300
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
