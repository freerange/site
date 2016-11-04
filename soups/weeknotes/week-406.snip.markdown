Week 406
========

## GFR

### The Office Group (TOG)

In recent months we've been meeting up two or three times a week and working in coffee shops. However, these are sometimes noisy, are lacking power outlets, and don't have very ergonomic seating. So we've signed up for [TOG's Lounge Membership][tog-lounge-membership] which means we can each spend up to 32 hours per week in any of their London offices for £50 per month each.

Although the application process seemed overly bureaucratic, it's just a monthly rolling contract, so it feels pretty low risk. On Wednesday we spent most of the day in their Bloomsbury office and on Friday we tried out their Borough office. The Bloomsbury one was good, but the Borough one less so.

### Goals for the week

On Wednesday we belatedly attempted to set ourselves some goals for the week, but we struggled a bit on what level to pitch them at. We wanted them to be higher-level than individual Trello cards, but specific enough that we'd know when they were "done". Hopefully we'll do better at this next week.

### Possible client work

On Wednesday, we also had a meeting at Aviation House with Alex Segrove and Paul Bowsher of [GDS][] to talk through some projects we might be able to help with. It's always a pleasure to chat to the folk at GDS and it sounds as if there could be some interesting work on offer. Afterwards we made the most of the sunshine by having lunch on the grass in Lincoln's Inn Fields.

On Friday it was really lovely to bump into [Jess][] in [Mouse Tail in the John Harvard Library][mouse-tail] (lovely coffee!). She told us about a possible client project which we're going to try to find out more about.

### Website

We successfully added historical notes for [week 385][week-385-notes] and [week 386][week-386-notes]. Only eight more to go! Given that we had to supply TOG with photos of ourselves for our passes, we thought we might as well update the website with the [new photos][gfr-people].

### Outsourcing admin tasks

We continued the process we began last week and went through the remaining Harmonia tasks. We've tried to assess how much effort each task takes, how often we do it, how suitable it would be for someone else to do, and what online services they would need access to.

We agreed the next step is to convert this into a spreadsheet and try to use the spreadsheet to identify good candidates for automation and/or outsourcing.

### Monthly drinks

On Wednesday we had an enjoyable evening chatting with people over a few beers at the [Old Red Cow][]. We were pleasantly surprised when GFR alumnus and Facebook employee, [Jason Cale][], turned up unannounced and regaled us with tales about his conversations with [Kent Beck][].

### Mocha

The [Ruby bug][ruby-issue-12832] which I raised last week was fixed. Charles Nutter started digging into [this Mocha issue][mocha-issue-274] relating to JRuby. It turned out to be a [bug in JRuby][jruby-issue-4250] which he has fixed and will be released in JRuby v9.1.6.0.

I also investigated a [new Mocha bug][mocha-issue-276] which turned out to be due to another bug in Ruby for which I raised [this issue][ruby-issue-12876].

### Smart Answers

[Anna Shipman][] contacted us to ask about the emails we'd forwarded to GDS from people in other countries who have expressed an interest in using Smart Answers for their own governments. Apparently GDS are hoping to do some work to encourage the re-use of GDS projects outside GDS and Smart Answers might fit the bill. We think this is great and will do all we can to help.

### Internal projects

We continued the rationalisation process we'd begun the previous week. We settled on consolidating everything into a single new Trello board.

### Lanyrd -> Attending

Up until now we've used [Lanyrd][] to advertise our [Show and Tell events][show-and-tell-events], but since it was bought by Eventbrite the site seems unloved and is often down just when you need it. So we've given up on it and started using [Attending][] instead.

### Admin

Chris had an email conversation with our accountant about how we pay for coffee and lunches when we meet up to discuss company business. He also asked about the VAT rate we record for payments we make to US-based companies.

We continued the tedious but necessary task of updating organisations with our new company address.

### IFTTT

Early in the week Chris setup an [IFTTT][] recipe to convert Google Calendar events into Trello cards. However, later in the week it turned out this didn't seem to be working reliably - errors appeared in the IFTTT log, but we didn't get any notification. If we can't rely on it to work, I think we'll have to try something else.

## Hookline

We didn't do any development this week. We're keen to let the [Hookline][] folks try the app out in anger for a bit so that we can get some feedback and prioritise what to work on next.

The Papertrail Heroku add-on which we enabled a couple of weeks ago started sending us lots of usage notifications. We're on the free plan and so now that people are using the app in anger, we were hitting our usage limit. I solved this by filtering out the log statements where Delayed Job polls the database for new jobs.

We also had some positive feedback from a Hookline client who viewed some of [Rach][]'s curated playlists.

Anyway, that's all for now. Until next time!

-- James

[tog-lounge-membership]: http://www.theofficegroup.co.uk/lounge-space/
[IFTTT]: https://ifttt.com/
[gfr-people]: /#people
[week-385-notes]: /week-385
[week-386-notes]: /week-386
[GDS]: https://gds.blog.gov.uk/
[Old Red Cow]: http://theoldredcow.com/
[Jason Cale]: /alumni#jason-cale
[Kent Beck]: https://www.facebook.com/kentlbeck
[ruby-issue-12832]: https://bugs.ruby-lang.org/issues/12832
[mocha-issue-274]: https://github.com/freerange/mocha/issues/274
[jruby-issue-4250]: https://github.com/jruby/jruby/pull/4250
[mocha-issue-276]: https://github.com/freerange/mocha/issues/276
[ruby-issue-12876]: https://bugs.ruby-lang.org/issues/12876
[Anna Shipman]: http://www.annashipman.co.uk/
[Lanyrd]: http://lanyrd.com/
[show-and-tell-events]: /show-and-tell-events
[Attending]: https://attending.io
[Jess]: https://twitter.com/jesybort
[mouse-tail]: http://www.mousetailcoffee.com/
[Hookline]: http://hookline.tv/
[Rach]: https://twitter.com/rachmenzies

:name: week-406
:updated_at: 2016-11-04 10:44:48.603462000 +00:00
:created_at: 2016-11-04 10:44:48.603458000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 406
:extension: markdown
