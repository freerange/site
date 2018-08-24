Week 500
========

Week 500, eh! That feels like a bit of a milestone, although I suppose week 520 which will include our 10-year anniversary on 19 Jan 2019, will be a more significant one.

On Monday I arrived back from leave just as Chris L was heading off. However, we managed to coordinate things so that all four of us met up for an enjoyable handover lunch at [Fast Break][] near the [Trainline][] office.

Ben, Chris R and I spent most of the week on Trainline work. Thanks to some work the others had done in setting up a `Vagrantfile`, I was able to get up and running very quickly. And then, having got some positive feedback from a "customer" of the small project we've been working on, Ben and I paired on extending its functionality.

Ben silenced most of the remaining noise in one of the test suites we're working with. This should make it much easier to see when there are real problems that we need to investigate. Chris R got another component of the system working in the Vagrant VM and added to the relevant documentation.

Chris R also paired with a Trainline developer on a story relating to internationalisation. He discovered it was hard to write an automated multi-request acceptance test. This is an area we're keen to improve on in the coming weeks.

On Friday I switched [our company website][] to be served over SSL which is currently hosted on a [Linode][] VPS. I obtained certificates from [Let's Encrypt][] using the [certbot][] tool, made some changes to our [Apache][] configuration, and changed a bunch of URLs to be [protocol-relative][] to avoid [mixed content warnings][]. I ran into a few minor issues, so I'll try to write up what I ended up doing in more detail separately in case it's useful to anyone else.

On Friday afternoon, Ben and I met up for coffee with a prospective client - it sounds like an interesting and worthwhile project, so hopefully we'll be able to collaborate on it at some point in the coming months.

Until next time.

-- James

[Fast Break]: http://thefastbreak.co.uk/
[Trainline]: https://www.thetrainline.com/
[our company website]: https://gofreerange.com
[linode]: https://www.linode.com/
[Let's Encrypt]: https://letsencrypt.org/
[certbot]: https://certbot.eff.org/
[Apache]: https://httpd.apache.org/
[protocol-relative]: https://en.wikipedia.org/wiki/URL#Protocol-relative_URLs
[mixed content warnings]: https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content

:name: week-500
:updated_at: 2018-08-24 16:08:51.032340000 +01:00
:created_at: 2018-08-24 16:08:51.032339000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 500
:extension: markdown
