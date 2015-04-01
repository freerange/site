Week 323
========

## Social department

[Chris L][] joined us in the office on Monday. He had a pretty productive day publishing [Web Audio Weekly 35][waw-35] and getting a [first draft of a blog post for Opera developer blog written][chris-l-opera-blog-post]. We even managed to squeeze in lunch at the [Strongroom bar][] and a cheeky post work pint at The Old King's Head.

Wednesday evening saw us head to the [William IV pub][] for our monthly drinks. I don't think I've been there before but thought it was pretty good. We managed to get a table and it didn't get too busy/noisy. It turns out that the pub has a GFR connection: It hosted a meeting of GFR back in the very early days when [James Adam][] and [James Andrews][] were trying to convince people to get involved.

## Accounts department

We completed our payroll for March during the week. Although [FreeAgent][] makes this process very easy, the March run took slightly longer than expected due to the additional questions you're required to answer at the end of the year.

We've got a task hanging over from our annual accounts where we need to reduce our Prepayments account by the amount of the deposit we put down on 87 Worship Street office. We spent some time trying to get to grips with this by trying to reverse engineer the various Journal Entries that have been created in this account in the past. We made some progress but there's still more work to do.

## Business development department

We continued to work through the procurement process for the work we're hoping to start in the next few weeks.

## Office management department

We downsized our [Urban Locker][] storage unit (from 100 to 60 square foot) now that we've moved quite a lot into our new office. We'd actually gone to our lockup to sort a few things out and were pleasantly surprised to be able to downsize there and then: We were lucky that there was a free 60 sq. ft. unit opposite the one we had.

We resumed our [Pact coffee][] deliveries now that we have somewhere for them to be delivered.

We received a large foamex poster of our company logo. It doesn't quite match up to Jase's hand drawn masterpiece in the old office but we think it's pretty good.

I bought a new keyboard and trackpad so that I could revive my standing desk.

We organised [Show and Tell 11][].

## Social media department

We spent about an hour chatting to [Diana][] about writing our profile for the [Shoreditch Works blog][]. We ended up rambling quite a bit about how GFR started, some of the projects we've worked on and some of the things we might do next. Hopefully Diana will be able to make some sense of it...

We published [week links for week 322](/week-322-links).

## Development department

### Money Tracker

I spent a few hours working on [Money Tracker][]. I managed to reduce the number of places to look when thinking about the project by moving some outstanding stories from the [public PT project][money-tracker-pt] to a new [Trello board][money-tracker-trello], and the Changelog from [Fargo][] to a [textfile in the repo][money-tracker-changelog].

I [fixed a problem with the jQuery autocomplete styles][money-tracker-autocomplete-bug] - it turns out that I still don't understand [Sprockets][] and/or [Sass][].

I spent a short while spiking on some alternative bulk edit interfaces but didn't come up with anything that was obviously better than what I already had.

### AIS on SDR

We spent some time at my flat on Thursday, trying to pick up some [AIS][] data from the passing boats. We thought we could see a signal in [GQRX][] but we weren't able to extract any data from it.

We independently tried to get [AISDecoder][] working with some example sound files that contained AIS data. We eventually got this working in an Ubuntu virtual machine on Friday morning.

We spent some time trying to simulate AIS signals by broadcasting one of the example sound files using a [Belkin in-car radio transmitter][belkin-tunecast]. We could pick up the signal on another machine but were unable to extract the data using [rtl_fm][] and aisdecoder. We _think_ we understand why this doesn't work but I'm not sure I can do a good job of explaining it here.

We've created the [AIS on SDR wiki][] to capture information as we go. We've already got some example data files and pages detailing how to use both AISDecoder and [GNU AIS][] to decode that data.

Until next time, folks.

-- Chris

[AIS]: http://en.wikipedia.org/wiki/Automatic_Identification_System
[AISDecoder]: http://www.aishub.net/aisdecoder-via-sound-card.html
[AIS on SDR wiki]: https://github.com/freerange/ais-on-sdr/wiki
[belkin-tunecast]: http://www.belkin.com/uk/p/P-F8V3080/
[Chris L]: http://blog.chrislowis.co.uk/
[chris-l-opera-blog-post]: https://github.com/operasoftware/devopera/pull/256
[Diana]: https://twitter.com/dianapinkett
[Fargo]: http://fargo.io/
[FreeAgent]: http://www.freeagent.com/
[GNU AIS]: http://gnuais.sourceforge.net/
[GQRX]: http://gqrx.dk/
[James Adam]: http://lazyatom.com/
[James Andrews]: https://uk.linkedin.com/in/jamesandrews
[Money Tracker]: https://github.com/chrisroos/money-tracker
[money-tracker-autocomplete-bug]: https://github.com/chrisroos/money-tracker/commit/ff0fce4ac2ff0729b92354c226d3e80417d60f47
[money-tracker-changelog]: https://github.com/chrisroos/money-tracker/blob/master/CHANGELOG.md
[money-tracker-pt]: https://www.pivotaltracker.com/n/projects/290359
[money-tracker-trello]: https://trello.com/b/N0kPdGAW/money-tracker
[Pact coffee]: https://www.pactcoffee.com/
[rtl_fm]: http://kmkeen.com/rtl-demod-guide/
[Sass]: http://sass-lang.com/
[Sprockets]: https://github.com/sstephenson/sprockets
[Shoreditch Works blog]: http://shoreditchworks.com/blog/
[Show and Tell 11]: http://lanyrd.com/2015/gfr-show-and-tell-april/
[Strongroom bar]: http://www.strongroombar.com/
[Urban Locker]: http://www.urbanlocker.co.uk/
[waw-35]: http://blog.chrislowis.co.uk/waw/2015/03/23/web-audio-weekly-35.html
[William IV pub]: http://www.thewilliam.co.uk/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-03-30 13:30:00 +01:00
:updated_at: 2015-04-01 10:00:00 +01:00
:page_title: Week 323
