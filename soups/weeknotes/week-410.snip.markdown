Week 410
========

Week 410 was pretty quiet. James spent the week skiing in Austria and I spent quite a bit of time getting ready to move on to the houseboat.

## Hookline

I think the only thing I did of any real interest was to update the Let's Encrypt SSL certificate we're using on the Hookline music app.

The app is hosted on Heroku and there doesn't yet appear to be a good way of automatically certificates in this case. As such I used the `certbot` tool to renew it manually. This took nearly as much time as when I first created the certificate. It's complicated by the fact that certbot needs to be able to access some known content on the domain over HTTP. We're forcing SSL for all requests which means that I have to temporarily disable that SSL in order to prove that I own the domain and to get a renewed certificate.

Until next time.

-- Chris

:name: week-410
:updated_at: 2016-11-23 11:59:42.603250000 +00:00
:created_at: 2016-11-23 11:59:42.603237000 +00:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 410
:extension: markdown
