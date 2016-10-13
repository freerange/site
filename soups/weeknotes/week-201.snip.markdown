Week 201
========

After the [exertions of last week](/week-200#inside-government) and with the continued absence of [Chris](/chris-roos), this week inevitably felt relatively quiet.

## Inside Government

This week was all about tidying up loose ends left over from [the launch](http://digital.cabinetoffice.gov.uk/2012/11/15/launching-inside-government/) last week. [Neil](https://twitter.com/neillyneil) and his team were busy collating and responding to feedback about [Inside Government](https://www.gov.uk/government), as well as getting the next departments ready to move onto the system.

Although the [Whitehall app](https://github.com/alphagov/whitehall) is in pretty good shape, the time it takes to run all the automated tests has been becoming more and more of a pain point. In the lead up to the launch date, it was hard to justify spending time on improving this, but more recently, James A has been valiantly attempting to reduce the time it takes for the tests to run. 

The [biggest win](https://github.com/alphagov/whitehall/commit/78f2594da03c02ba332cf17aee99a402fcc8586e) was identified using [ruby-perf](https://github.com/lpasqualis/rubyperf) - it turned out we were triggering an expensive HTML validation on creation of every model instance. He's also been trying to get [parallel-tests](https://github.com/grosser/parallel_tests) to work, but although this has looked very promising in terms of the performance improvement, he's run into problems with some non-deterministic test failures which have so far resisted diagnosis.

## Harmonia

Work on [Harmonia](https://harmonia.io) has continued this week, although probably not quite at the same pace as we've managed in previous weeks. Early in the week [James A](/james-adam) explained [who might find Harmonia useful](/who-is-harmonia-for); we're very conscious that very few companies operate the same way as [Free Range](/), but we're also confident that Harmonia could be valuable in a wide range of other contexts.

Having fully activated his muse, James A penned some lines about how we use the app for assigning [necessary-but-boring tasks](/delegated-tasks-arent-a-team-anti-pattern) and why we think this works well for us. Until James pointed it out, it hadn't really dawned on me that Harmonia is at her most effective when the tasks are [concrete, clear and doable](http://zenhabits.net/why-whats-the-next-action-is-the-most-important-question/) in the _Getting Things Done_ sense.

Recent changes in the app itself mean that you can now mark tasks as *done* and overdue tasks are highlighted. It's also now possible to create tasks that recur annually. If you're already signed-in and you visit the home page, we now take you straight to your dashboard (as suggested by [Tom Stuart](https://twitter.com/tomstuart)). And in an effort to better serve our international users, we now ask people to set their time zone when they register - this should avoid confusion later.

## Meatspace

I was interested to hear and read more about [Github's approach to management and operation of their company](http://tomayko.com/writings/adopt-an-open-source-process-constraints). One of the main themes is about having processes that work without the need for meeting in [meatspace](http://www.urbandictionary.com/define.php?term=meatspace). I'm pretty sympathetic to most of this, but I think there's a point at which it comes down to whether you think the act of writing software is best done as a solitary activity or whether there are advantages to working more collaboratively in meatspace. I recognise that this is may be different for different people, but for myself, I remain more than a little sceptical. Even Ryan admits that one of the main exceptions to the non-meatspace approach is when "figuring out broad vision and strategy, setting big goals".

## Learning

[Tom](/tom-ward) is continuing to pursue his interest in [Clojure](http://clojure.org/) and has signed up for the 2nd annual [Clojure eXchange](http://skillsmatter.com/event/fsharp/clojure-exchange-2012) which will take place in early December. And I managed to get my hands on the penultimate early-bird ticket for [Reducing Technical Debt](http://reducingtechnicaldebt-es2.eventbrite.co.uk/) with [Michael Feathers](https://twitter.com/mfeathers).

## Christmas

A few people have been asking whether we're having an office party this year. We definitely _are_, but we haven't completely worked out the details yet. However, we do have a date - so please keep the evening of Wednesday, 19th December free! The idea is that [Chris](/chris-roos) will be back from chasing wallabies down-under and James A will yet to have embarked on his gaelic/texan odyssey. And Chris will be making mulled wine again, although he doesn't know it yet.

After our enjoyable company Christmas trip to the [Science Museum](http://www.sciencemuseum.org.uk/) a couple of years back, we're also looking for ideas for another festive jaunt. Does anyone have any ideas?

до свидания

-- James M

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2012-11-26 09:30:00 +00:00
:updated_at: 2012-11-26 09:30:00 +00:00
:page_title: Week 201
