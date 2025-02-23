Week 508 - Interesting links
============================

### [The interesting ideas in Datasette](https://simonwillison.net/2018/Oct/4/datasette-ideas/)

Datasette is Simon Willison's open-source tool for exploring and publishing structured data. In this article Simon has written a great round-up of ideas he's used in its development. It was great to read about the massive advantages of [making the published data read-only][publishing-read-only]. Also one thing I hadn't come across before was [sending an HTTP/2 push header to speed up redirects][far-future-cache-expiration]. <%= by('james-mead') %>

[publishing-read-only]: https://simonwillison.net/2018/Oct/4/datasette-ideas/#Publishing_readonly_data
[far-future-cache-expiration]: https://simonwillison.net/2018/Oct/4/datasette-ideas/#Farfuture_cache_expiration


### [Build impossible programs](https://www.deconstructconf.com/2018/julia-evans-build-impossible-programs)

I found this talk by [Julia Evans][] (transcript available) at [Deconstruct 2018][] really inspiring. She talks about three myths:

* to do something new and innovative you need to be an expert
* if it were possible and worthwhile, someone would have done it already so you probably shouldn't try
* if you want to do a new open source project, you need to code a lot on the weekend and your evenings

This is all in the context of building her Ruby profiler, [rbspy][], and she debunks them all. It definitely reminded me of thoughts I've had about developing tools like [method_log][] and [generated sequence diagrams][]. <%= by('james-mead') %>

[Julia Evans]: https://jvns.ca/
[Deconstruct 2018]: https://www.deconstructconf.com/2018
[rbspy]: https://rbspy.github.io/
[method_log]: https://gofreerange.com/tracing-the-git-history-of-a-ruby-method
[generated sequence diagrams]: https://gofreerange.com/show-and-tell-32#james-m---sequence-diagrams


### [async](https://github.com/socketry/async)

Doing some research on [EventMachine][] on our previous client project, I came across this library based on [nio4r][]. The history of the project is interesting: first the author wrote [RubyDNS][] on top of EventMachine, then re-wrote it on top of [Celluloid][], before finally writing his own library, async, a simplified version of Celluloid, on which to build RubyDNS v2.0. He's also written [a bunch of other libraries][async-libraries] on top of async, including a full-fledged web server, [falcon][]. <%= by('james-mead') %>

[EventMachine]: https://github.com/eventmachine/eventmachine/
[nio4r]: https://github.com/socketry/nio4r
[RubyDNS]: https://github.com/ioquatix/rubydns
[Celluloid]: https://github.com/celluloid/celluloid
[async-libraries]: https://github.com/socketry/async#see-also
[falcon]: https://github.com/socketry/falcon


### [The Real Story Behind Story Points](https://robots.thoughtbot.com/the-real-story-behind-story-points)

I'm not a fan of story points and think this article does quite a good job of explaining some of the common problems and alternatives you might try to avoid them. I'm enjoying not having to worry about story points on the current project we're working on. <%= by('chris-roos') %>


### [Launching 3D Secure!](https://monzo.com/blog/2018/08/22/launching-3d-secure/)

I was very pleasantly surprised when I was prompted to use my fingerprint to confirm a payment to DVLA recently. It's _so_ much better than the Verified by Visa type experience. Good work, Monzo. <%= by('chris-roos') %>

:name: week-508-links
:updated_at: 2018-10-12 14:25:57.425290000 +01:00
:created_at: 2018-10-12 14:25:57.425270000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 508 - Interesting links
:extension: markdown
:erb: true
