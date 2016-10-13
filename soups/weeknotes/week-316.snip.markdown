Week 316
========

Unfortunately I was off sick all week again this week. However, I did improve enough towards the end of the week so that I was able to do some work on a presentation about [pair programming][] which we'd been asked to give at [FutureLearn][]. In particular it was a good opportunity to re-read sections of [eXtreme Programming explained][] by Kent Beck.

Meanwhile [Chris][] was at FutureLearn all week except Wednesday doing lots of pairing. He worked with [Chris L][] to reduce some of the noise of intermittent failures reported in [Honeybadger][]. Although it took them a while, the result (using Honeybadger filters instead of [Sidekiq middleware][]) is definitely simpler to understand.

He also worked with [Ricardo][] at the end of the week trying to address a problem where the queue processing machines were using a lot of RAM. They investigated removing [Sidetiq][] in favour of [Cron][], in the hope that having fewer moving parts would help make it easier to understand what was going on.

Both Chris & I worked from home on Wednesday mainly working through various admin tasks. We also caught up with each other using a [Google Hangout][] which was useful, although I think we're both missing having our own office.

Having cancelled our January [Show and Tell][] event, because it would've been in the middle of packing up the Worship Street office, we were really keen to find a venue to hold the February event. To this end, we booked a small room at the [Star of Kings pub][] near Kings Cross.

-- James

[pair programming]: http://www.extremeprogramming.org/rules/pair.html
[FutureLearn]: https://www.futurelearn.com/
[eXtreme Programming explained]: http://www.amazon.co.uk/dp/0321278658
[Chris]: /chris-roos
[Chris L]: http://chrislowis.co.uk/
[Honeybadger]: https://www.honeybadger.io/
[Sidekiq middleware]: https://github.com/mperham/sidekiq/wiki/Middleware
[Ricardo]: http://ricardolopes.net/
[Sidetiq]: https://github.com/tobiassvn/sidetiq
[Cron]: http://en.wikipedia.org/wiki/Cron
[Google Hangout]: http://www.google.com/hangouts/
[Show and Tell]: /show-and-tell-events
[Star of Kings pub]: http://starofkings.co.uk/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-02-13 11:47:00 +00:00
:updated_at: 2015-02-13 11:47:00 +00:00
:page_title: Week 316
