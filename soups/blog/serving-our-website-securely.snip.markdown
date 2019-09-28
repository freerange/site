Serving our website securely
============================

We recently decided it was [high time][why-ssl] we started serving our [company website](/) over SSL.

I logged into our [Linode][] VPS and attempted to follow [these instructions][certbot-trusty-apache] for using the `certbot` tool on Ubuntu Trusty with Apache. Generating the certificate for our bare domain, `gofreerange.com`, from [Let's Encrypt][] worked fine, but I ran into problems with the automatic changes to the Apache config. See [this commit note][commit-64bb8da3] for more details.

The main outstanding issue was that `https://www.gofreerange.com` (i.e. the `www` sub-domain over SSL) resulted in an error in Firefox and Safari, although apparently not in Chrome.

<%= image_tag('blog/2018-08-17-www.gofreerange.com-ssl-firefox.png', alt: 'SSL error in Firefox') %>

<%= image_tag('blog/2018-08-17-www.gofreerange.com-ssl-safari.png', alt: 'SSL error in Safari') %>

I belatedly realised that to fix this problem I'd need to generate and install a certificate for the `www` sub-domain. So having generated this new certificate, I setup an Apache virtual host for `www.gofreerange.com` listening on port 443, configured the certificate, and adjusted the redirect rules to give the following behaviour. See [this commit note][commit-b1de1398] for further details.

* `http://www.gofreerange.com` -> `https://www.gofreerange.com`
* `http://gofreerange.com` -> `https://gofreerange.com`
* `https://www.gofreerange.com` -> `https://gofreerange.com`
* `https://gofreerange.com` (no redirect; served successfully)

I also belated realised that switching over to serving the site over SSL meant that I needed to fix a bunch of URLs to avoid mixed content warnings. I concentrated on [fixing](https://github.com/freerange/site/compare/64bb8d...518650) the [mixed *active* content](https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content#Mixed_active_content) and I think this is all done, except for the video sources & poster image in [these week notes](/week-471).

Having said that neither Chrome nor Safari complain about the latter being mixed content - only Firefox does. Fixing the problem would mean either setting up an SSL certificate for the `videos.gofreerange.com` S3 bucket or using an alternative video provider, e.g. Vimeo. I decided that could wait for another day.

Both SSL certificates are managed by the `certbot` tool and so it should be easy to renew them. I followed the instructions from the output of the `certbot` tool to backup the `/etc/letsencrypt` directory which contain certificates and private keys.

I also noticed that `certbot` seems to have installed a cron job into `/etc/cron.d/certbot` which attempts to renew all certificates twice a day which is pretty nifty. I added a one-off [Harmonia][] task to check that the certificate for `gofreerange.com` is renewed successfully just before the 90-day expiry.

Finally everything seemed to be working OK, so I updated our monitoring systems to point at the SSL-version of the URLs. And here it is in all its glory!

<%= image_tag('blog/2018-08-17-gofreerange.com-ssl.png', alt: 'SSL certificate on gofreerange.com') %>

I hope that was useful!

-- James

[why-ssl]: https://www.troyhunt.com/heres-why-your-static-website-needs-https/
[Linode]: https://www.linode.com/
[certbot-trusty-apache]: https://certbot.eff.org/lets-encrypt/ubuntutrusty-apache
[Let's Encrypt]: https://letsencrypt.org/
[commit-64bb8da3]: https://github.com/freerange/site/commit/64bb8da354966cf2ce46ce2afd6c40d7962b3656
[Harmonia]: https://harmonia.io
[commit-b1de1398]: https://github.com/freerange/site/commit/b1de139837941861c219bb5ed20af8f4508bbd99

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2018-08-31 17:08:00 +00:00
:updated_at: 2018-08-31 17:08:00 +00:00
:page_title: Serving our website securely
