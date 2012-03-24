Week 166
========

The notes for this week were brought to you from deep in rural Aberdeenshire where I'm hanging out at the [Scottish Vision Group] conference with my other half.

Skeletons
---------

We've spent a significant chunk of the week working on the [all seeing eye][sauron-repository]. As James A [explained][sauron-introduction] last week, we're trying to use this project as an exercise to hone our collective approach to turning an idea into working software. We completed our [walking skeleton][walking-skeleton] earlier in the week. A key aspect of this project is talking to Google's IMAP server and we started off by prototyping some code to fetch messages from the in-box. We were keen to get this code under test as soon as possible and started by mocking and stubbing the Ruby IMAP client code. However, after realising that we were mocking code we didn't own[^only-mock-types-you-own] and exploring the possibility of running a real in-process IMAP server (using [JRuby] and [Greenmail]), eventually we settled on rolling our own [fake IMAP server][fake-imap-server].

Storifying
----------

Later in the week we moved on to writing [some stories][sauron-pivotal]. This turned out to be a bit of an ordeal, but I think we learnt a few things along the way. We noticed that we ended up writing a bunch of stories with a recurring theme in the "So that \<benefit\>" section. We decided to extract these duplicate benefit descriptions into the project [README][sauron-readme]. Another thought was that perhaps the _walking skeleton_ was more of a _crawling collection of bones_ and there was concern that the lack of some critical functionality would make working on multiple stories in parallel awkward. In any case, I think we've agreed that we need to see how the stories pan out as the project progresses before drawing too many conclusions in case the early stages are a special case.

Extreme OO
----------

[Tom] has been particularly keen to try out a fairly extreme object-oriented approach i.e. using lots of objects and keeping the responsibilities of each to a minimum. I've not been in the office for the last couple of days, but it looks like this is coming along nicely. It appears that one consequence of this is that we're making much more use of mock objects than is our usual style. It'll be interesting to see how this works out. Something [James A] has been [exploring][sauron-avoid-autoload] is whether forcing ourselves to use explicit require statements will highlight excessive coupling. In the meantime, [Chris] has been doing his best to convince us of the merits of using the word "should" at the beginning of a test name.

Quadrupling
-----------

Many of the sessions this week have involved three or four of us sat around a computer thrashing out ideas and even occasionally some code! The fact that we've managed to do this for lengthy periods without coming to blows is testament to the patience of the [team](/people) and their desire to learn from each other. Our latest plan is that _only the driver_ is allowed to speak with the idea that discussions are more focussed and less abstract.

LLP vs Ltd
----------

The focus of our discussion has now moved onto what requirements we have around future [Go Free Range] joiners and leavers, and whether either of these legal structures helps us implement those requirements. Since we don't extract banker-sized bonuses from the company every month, we've gradually accumulated a decent chunk of capital which is effectively us investing in GFR.

It feels important to have a good shared understanding of what this pot of money is for and who/what owns it. We've agreed that, along with leasing an office, the accumulation of this cash has given GFR more of an identity of its own. However, we still have some more pondering to do on how to deal with that capital in the context of new joiners & leavers.

Cash-flow
---------

[Chris] and [James A] investigated our long-neglected [cash-flow app][mypay-repository] that [Kalv] built. [Chris] also had another look at [Float][float-app] a commercial cash-flow app which integrates with [FreeAgent]. This looks to have been completely rebuilt since we last looked at it and we're seriously contemplating using it in anger. Chris spotted a problem with recurring bills in FreeAgent not being picked up in Float, but he had a very quick response from [Philip Roberts] which is always an encouraging sign.

Feedback
--------

[Ross Ferguson], one of our former colleagues on the Whitehall team, wrote about his [experiences][nothing-can-be-the-same] building the first phase of [Inside Government] in collaboration with GFR. Hopefully the success of the "in-house build" approach that he describes will encourage other bits of government to move away from the government's usual disastrous approach to procurement of IT projects.

Miscellany
----------

[James A] continued development of the [wee printer]; now you can send the printer a URL and the software will work out how to [print the contents][murray-printout] of the referenced page. [Chris] has finally seen the light and has signed up for [pinboard] after belatedly realising it's way better than [del.icio.us]. I can also report that [Jase] was [let out early for good behaviour][jase-let-out-early] from his month-long meditative retreat. Welcome back to the world, Jase!

Anwyay, that's yer lot for this week.

-- James.

[Go Free Range]: /
[Tom]: /tom-ward
[James A]: /james-adam
[Chris]: /chris-roos
[Kalv]: /kalvir-sandhu
[Jase]: /jason-cale
[Scottish Vision Group]: http://svg.psy.gla.ac.uk/
[sauron-repository]: https://github.com/freerange/sauron
[sauron-introduction]: /week-165#its-not-all-navel-gazing-you-know
[walking-skeleton]: http://alistair.cockburn.us/Walking+skeleton
[JRuby]: http://jruby.org/
[Greenmail]: http://www.icegreen.com/greenmail/
[fake-imap-server]: https://github.com/freerange/sauron/blob/master/test/fakes/fake_gmail.rb
[sauron-pivotal]: https://www.pivotaltracker.com/projects/506159
[sauron-readme]: https://github.com/freerange/sauron/blob/master/README.rdoc
[sauron-avoid-autoload]: https://github.com/freerange/sauron/pull/13
[wee printer]: https://twitter.com/#!/lazyatom/status/182402099932438528
[mypay-repository]: https://github.com/freerange/mypay
[float-app]: http://floatapp.com/
[FreeAgent]: http://www.freeagent.com/
[Philip Roberts]: https://twitter.com/#!/philip_roberts
[Ross Ferguson]: https://twitter.com/#!/rossferg
[nothing-can-be-the-same]: http://basiccraft.wordpress.com/2012/03/19/after-the-watershed-five-reasons-why-nothing-can-be-the-same-since-the-launch-of-gov-ukgovernment/
[Inside Government]: /inside-government
[murray-printout]: https://twitter.com/#!/lazyatom/status/182577654145368065
[pinboard]: http://pinboard.in
[del.icio.us]: http://del.icio.us
[jase-let-out-early]: https://twitter.com/#!/jasoncale/status/182105193624776704

[^only-mock-types-you-own]: See Section 4.1 "Only mock types you own" of [Mock Roles Not Objects](http://static.mockobjects.com/files/mockrolesnotobjects.pdf).

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-mead
:created_at: 2012-03-23 16:24:00 +01:00
:updated_at: 2012-03-23 16:24:00 +01:00
:page_title: Week 166