Week 189
========

This week, everyone was at least back in the UK, although [James M](/james-mead) did find himself travelling up and down the country organising the last aspects of his move to Oxford. Hopefully he's all settled in now.

It's been a pretty uneventual week for [GFR](/), really. Work on [Harmonia][] continues; now that [Tom](/tom-ward) is back, he's been getting up to speed with the code and concepts, and I am hoping that we'll start to be able to start talking to potential users (maybe you?) very soon. [Chris](/chris-roos) did a little bit more work on [Roosmarks](https://github.com/chrisroos/roosmarks). [James M](/james-mead)'s work on making [mocha](/mocha)'s integration with various test frameworks more robust is [hopefully almost done](https://github.com/freerange/mocha/commits/minitest-and-testunit-integration-without-monkey-patching).

[I](/james-adam) took a couple of our [printers][gfr-printer] to the [IoT summer showcase](http://www.meetup.com/iotlondon/events/75271782/) ([some pictures](http://www.meetup.com/iotlondon/photos/10460542/#153913112)), and it was nice to be able to talk to a lot of people about what I think makes the [Printer][gfr-printer] project interesting (and to try and clarify that for myself, too).

We had a minor incident with our server running out of memory, which temporarily brought down the [printer backend server](http://printer.exciting.io) as well as a few other sites. It looks like Printer itself might be the main reason why this happened; at the moment, all of it's data (including print archives) are stored in [Redis](http://redis.io), which is great for speed and convenience, but isn't sustainable because of the way that Redis uses memory. I'm working on storing the archived print data in a less memory-demanding store now (probably [PostgreSQL](http://www.postgresql.org/)), although Redis is still going to be very useful for managing queues and other transient data.

Anyway, enough about us. How was your week?

-- James A.

[gfr-printer]: https://exciting.io/printer/
[Harmonia]: http://exciting.io/harmonia

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-09-02 12:43:00 +01:00
:updated_at: 2012-09-02 12:43:00 +01:00
:page_title: "Week 189"
