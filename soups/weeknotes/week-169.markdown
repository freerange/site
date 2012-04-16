Week 169
========

I've been back up in Scotland visiting family, and while I meant to write these notes on the train, the dire state of the wifi distracted me so much that I basically did nothing.

Apparently the fact that I can [commit to the site offline](http://github.com/freerange/site) is unimportant: no internet == no possibility of doing anything productive. Crazy.

It was the quietest of weeks...
-----------

Half of the team were out of the office this week. [Tom][] spent a well-deserved week off relaxing in Cornwall. He's yet to resurface so I can only assume that he's either died of a clotted-cream induced heart attack, or decided to rally around the [cause for independence](http://en.wikipedia.org/wiki/Cornish_nationalism). I'm sure we'll find out which soon.

### Mocha

[James M][] managed to [make a change to mocha](https://github.com/floehopper/mocha/pull/75) that he's been trying to make for a long time, which fixes a number of issues and means the build passes on Ruby 1.9. Having achieved that, he promptly hopped over [La Manche](http://en.wikipedia.org/wiki/English_Channel) to Normandy for the rest of the week to induldge in cheese, wine, garlic, and narrowly avoid an accidental horse bourguignon.

That left just [Chris][] and [I][James A] holding the fort in the office. We like to call ourselves _The A-Team_, but don't tell Tom or James M.


### Roosmarks

Chris has been exploring a slightly different take on URL bookmarking with the hopes that it will help him return more efficiently to things he is "researching". He's also been honing his woodwork, and has impressed everyone with some excellent planter tables that he built from scratch over the weekend. It's great to have a fall-back career, and it looks like Chris has found his.

![The table that Chris built](http://farm8.staticflickr.com/7240/6937484790_1b1a425110_z.jpg)

We didn't do much work on [Sauron](http://github.com/freerange/sauron), for reasons which will become largely apparent below, but I did wonder during week 168 if we've become slightly bogged down in examining the minutiae of how we work, and lost track of some of the larger goals I was hoping we'd have made some progress on. That's something for us to talk about when I get back to the big smoke, probably.

My week was dominated by work on [Printer][], which I'll mention below, but beyond that I made excellent use of the [new sofa](/week-167).


... it was the busiest of weeks.
------------

After spending the Easter weekend and most of last week [taking pictures and writing documentation](http://github.com/freerange/printer/wiki), I decided to properly "announce" the [Printer][] project.

### Hello, Printer

After a large amount of proof-reading help (thanks [Chris][], [James][James M], [Murray](http://www.h-lame.com) and everyone else), we tweeted about it on Thursday morning, and published the [blog post](/hello-printer).

![Some of the feedback via the printer](/images/blog/printer-wow.jpg)

The response has been amazing. I was really concerned that people might not understand the purpose of the project, but all the feedback we've had has been overwhelmingly positive. Thanks to a [post on Hacker News](http://news.ycombinator.com/item?id=3831695), we had around five times as many people read the [project](/printer) and [blog post](/hello-printer) pages as have ever visited our humble corner of the internet before:

<blockquote class="twitter-tweet tw-align-center"><p>“@<a href="https://twitter.com/freerange">freerange</a>: Introducing our Printer project: <a href="http://t.co/F8AXrB3x" title="http://gofreerange.com/printer">gofreerange.com/printer</a>" I could see this absorbing a lot of evenings</p>&mdash; James Webster (@jwebster) <a href="https://twitter.com/jwebster/status/190379157585272832" data-datetime="2012-04-12T10:01:42+00:00">April 12, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet tw-align-center"><p>A open source system for federated thermal printers. I AM SO EXCITED ABOUT THIS. <a href="http://t.co/1bQwbAQv" title="http://gofreerange.com/printer">gofreerange.com/printer</a> via @<a href="https://twitter.com/atduskgreg">atduskgreg</a></p>&mdash; Tim Maly (@doingitwrong) <a href="https://twitter.com/doingitwrong/status/190776438721490944" data-datetime="2012-04-13T12:20:22+00:00">April 13, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet tw-align-center"><p>read this now @<a href="https://twitter.com/karlpro">karlpro</a>: The best thing I have read in 2012. <a href="http://t.co/suSNJ1J4" title="http://gofreerange.com/hello-printer">gofreerange.com/hello-printer</a> A distributed mini printing system through HTTP.</p>&mdash; jalbertbowdenii (@jalbertbowdenii) <a href="https://twitter.com/jalbertbowdenii/status/190632371282911232" data-datetime="2012-04-13T02:47:53+00:00">April 13, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I'm really encouraged by the feedback to our [Printer Loan](/printer#borrow) and [Printer Kit](/printer#kit) surveys, and I hope that we'll be able to help get some people up and running with their own printers soon. I'm hoping that some of those people will have some great ideas for [content services](https://github.com/freerange/printer/wiki/wiki/Building-content-services) too.

[Chris][] has already taken the initiative to build [a service that prints actual physical bookmarks from Amazon URLs](http://chrisroos.co.uk/blog/2012-04-12-bookmark-printing-service-for-the-go-free-range-printer-platform), with space to write notes. You can [see an example in the app itself](http://printer-bookmarks.heroku.com/).

At the other side of the platform, our office friend [Ben Griffiths](http://www.techbelly.com) wrote a simple [iOS printer simulator](https://github.com/techbelly/ios-printer) which you can use while you wait for your printer to be delivered:

<blockquote class="twitter-tweet tw-align-center"><p>If you don't have a Printer to connect to <a href="http://t.co/mxSuiB3f" title="http://gofreerange.com/printer">gofreerange.com/printer</a> - @<a href="https://twitter.com/beng">beng</a> has made an iOS version! <a href="https://t.co/UkgMEDOp" title="https://github.com/techbelly/ios-printer.git">github.com/techbelly/ios-…</a> <a href="http://t.co/2ekO3AmS" title="http://yfrog.com/odrydbp">yfrog.com/odrydbp</a></p>&mdash; Go Free Range (@freerange) <a href="https://twitter.com/freerange/status/190730380515606528" data-datetime="2012-04-13T09:17:20+00:00">April 13, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

If you're building a printer, please do [get in touch](mailto:printer@gofreerange.com) -- I'd love to hear how you're getting on, and help out if you encounter any of the innumerable rough edges that the project currently has.

Anyway, that was the week that was. Onwards to Week 170!

-- James.

[Tom]: /tom-ward
[James M]: /james-mead
[Chris]: /chris-roos
[Printer]: /printer
[James A]: /james-adam

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-adam
:created_at: 2012-04-16 11:49:00 +01:00
:updated_at: 2012-04-16 11:49:00 +01:00
:page_title: Week 169