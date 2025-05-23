Hello, Timmy
==========

_**Update**: Timmy lived a brief but glorious life in mid-April 2011. Timmy is offline for now, but you can see his glorious life in timelapse-tastic video below._

One of the perks of being part of [Go Free Range][fr] is the opportunity to play with fun ideas for the clients we work with, but also for ourselves. This week the whole company has taken a step back from direct client work to explore some of the ideas we've had pinned to the wall for the past couple of months, and the first output of that is [Project Codename: _Timmy Printface_][timmy].

<del>Here he is, hard at work this very minute:</del> Here's a video of little Timmy running in April 2011:

<iframe src="//player.vimeo.com/video/22439313?color=ffffff" width="640" height="480" frameborder="0"></iframe>

<del>Go to [Timmy's page][timmy], and that image will update automatically, showing you the messages that he's receiving, live and direct. It's better than most of what's on TV, I'm fairly sure.</del>

<del>You can play along by texting **+447716354419**.</del>

Timmy is _offline_ for now, but if you're an [O2][] customer, you can sign up to [#blue][] now to free your messages from your handset.

I should mention that this is a hack built on top of a beta service that we are still developing, and so we're very sorry if your message happens to fall down a crack. Sometimes it can take a couple of minutes for your SMS to actually reach the network.

If it doesn't appear after some time, however, <a href="mailto:admin@hashblue.com?subject=Timmy lost my message">let us know when you sent it, what it contained and the last few digits of your phone number</a> and we'll try to trace what happened and use your feedback to improve the service.


Behind the scenes
--------------

In a nutshell, we've taken a simple message feed from the [#blue API][api], and with a little bit of Ruby magic and some breadboards-and-wire fun, any messages that you send to Timmy are printed out pretty much immediately.

Where [#blue][] knows who the person is, we can print their name along with the message; otherwise it's just the number.

Here's what it looks like from my desk:

![Timmy, behind the scenes][timmy-behind-the-scenes]


The Waffle
----------

Taking "the web" and printing is isn't particularly novel, and has been done to [much greater and more practical effect already](http://noisydecentgraphics.typepad.com/design/2009/01/things-our-friends-have-written-on-the-internet-2008-is-a-publication-thats-been-dropping-through-letter-boxes-over-the-last.html). And indeed, [now anyone can](http://www.newspaperclub.co.uk).

However, frequently these projects are about taking what is current - tweets, blogs, and other digital artefacts - and bringing them into the physical world.

What I really like about [Timmy][] is that this is taking *two old, hacky technologies* (SMS was invented in 1984 as a hack itself on top of the signalling pathways used to control telephony traffic) and gluing them together using something new.

It's like getting your grandparents to [FaceTime](http://www.apple.com/mac/facetime/) each other.

But let's not lose our sense of perspective; it's a fun demonstration of a new way of dealing with your own text messages, now possible via the [#blue API][api] that we've been building with [O2][] for the last year.


The API
--------

The [#blue api][api] takes these messages, which have previously been trapped in your phone like prehistoric insects in amber, and liberates them. Until you've done it (and unless you're a bit of a geek), you probably can't imagine the strange novelty of being able to run a `curl` command and suddenly be able to `pipe` your SMSes around on your normal computer.

It's like the first time you realised you could program, making a computer do whatever you can imagine and then describe; suddenly things become *possible*.

While we have always tried to provide the best possible user experience via the front end of [#blue][], but we've also always felt strongly about the potential of the [API][api]. We're excited to see what other _hopefully-but-not-necessarily_ more practical applications that developers start building on top of it, to give everyone new and valuable ways to make use of the messaging services provided by telcos.

The [API][api] uses [OAuth2](http://wiki.oauth.net/w/page/25236487/OAuth-2) for authentication, and your messages are always private. You are always in control of which applications can be granted access to your messages, and this access can be revoked at any time.


The Gallery
----------

Here is selection of our favourite texts so far - click to [zoom in][selection], see if you can see yours!

[![Selection][selection-thumb]][selection]

This was an impressive [rickroll attempt][]:

[![Rickroll][rickroll-thumb]][rickroll]

Although, technically, [Jason][] beat them to it; you can see his prior art in the [first selection][selection].

We have even received some _actual_ art:

[![ASCII Art][ascii-art-thumb]][ascii-art]

Beautiful, particularly given the constraints.

<del>Keep your texts coming; send 'em to **+447716354419**,</del> _lines are now closed_, but don't forget - if you're an [O2][] customer, you can sign up to [#blue][] now to help give us some more momentum in our quest toward changing how these huge companies treat your data.

If we have seen far...
--------------------

It would be remiss not to mention the giants on whose shoulders Timmy is happily perched.

The original idea of connecting a small printer to a stream of information - the "Microprinter" - comes from [Tom Taylor][tomt], as indeed does the actual printer we're using, which Tom has generously loaned. You can read about [his original project from 2009 here][Microprinter].

The Ruby library we're using to send commands to the printer was written by [Roo Reynolds][roo], and is available on Github [here][Microprinter.rb]. In fact, there's [a little cloister of microprinter hackery][printer-wiki], should you want to try something out yourself.

We went from the first moments of prodding the printer to what you see now in under a day, so hopefully this is a good example of the "[Making Things Fast](http://makingthingsfast.com)" idea that [Leila Johnston](http://finalbullet.com) has championed. See if you can spot a message from her new "[Extreme Acts of Kindness](http://extremeactsofkindness.co.uk/)" project in the [selection][]. She was even kind enough to mention [Timmy][] in her [weeknotes](http://finalbullet.com/2011/04/08/week-32-a-social-network/). Thanks!

Incidentally, she collaborated with [Roo][] on the [Shift Run Stop](http://www.shiftrunstop.co.uk) podcast. It's a small world here around [Silicon Carpark](https://twitter.com/#!/search/siliconcarpark)...

[fr]: /
[timmy]: /timmy
[timmy-image]: http://public.lazyatom.com/timmy/snapshot.jpg
[api]: https://api.hashblue.com
[timmy-behind-the-scenes]: <%= image_path('blog/timmy-behind-the-scenes.jpg') %>
[tomt]: http://tomtaylor.co.uk
[Microprinter]: http://tomtaylor.co.uk/projects/microprinter
[roo]: http://rooreynolds.com/
[Microprinter.rb]: https://github.com/rooreynolds/microprinter/raw/master/Microprinter.rb
[printer-wiki]: http://microprinter.pbworks.com/w/page/20867146/FrontPage
[Jason]: http://jasoncale.com
[rickroll attempt]: http://en.wikipedia.org/wiki/Rickrolling
[O2]: http://www.o2.co.uk
[#blue]: https://hashblue.com

[selection]: <%= image_path('blog/timmy-selection.jpg') %>
[selection-thumb]: <%= image_path('blog/timmy-selection-thumb.jpg') %>
[rickroll]: <%= image_path('blog/timmy-rickroll.jpg') %>
[rickroll-thumb]: <%= image_path('blog/timmy-rickroll-thumb.jpg') %>
[ascii-art]: <%= image_path('blog/timmy-ascii-art.jpg') %>
[ascii-art-thumb]: <%= image_path('blog/timmy-ascii-art-thumb.jpg') %>

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2011-04-08 13:55:00 +01:00
:updated_at: 2011-04-08 13:55:00 +01:00
:page_title: Hello, Timmy
:erb: true
