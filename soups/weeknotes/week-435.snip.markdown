Week 435
========

For the first time in a while all three of us were around for the majority of the week, because for once there wasn't a bank holiday! We did our usual mixture of 3 days at TOG Bloomsbury and 2 days working from home.

## GDS

We continued with our work to refactor the Manuals Publisher app towards a more typical Rails app to make it easier to maintain:

* By extracting a bunch of classes into methods in [adapter classes][ports-and-adapters], we removed duplication and reduced levels of indirection to make the code easier to understand.
* We upgraded the app to use Rails v4 and Mongoid v4. This upgrade had been long-delayed, because of the poor state of the app.
* We made some good headway on using the `Manual` domain model in preference to the underlying `ManualRecord` class which we think should be considered an implementation detail.
* We also managed to substantially simply the code in the `Section` domain model.

Overall I think we made some really good progress. Something that's particularly pleasing is that we've started to feel as if we're in a position to address the underlying causes of some long-standing bugs whereby the state of the local database gets out-of-sync with the state of the Publishing API.

These bugs have resulted in a plethora of complicated Rake tasks designed to bring the state of the two systems back into sync. Our hope is that we'll be able to avoid them getting out of sync in the first place, thus obviating the need for the Rake tasks.

On Tuesday, Chris & Chris met up with Paul Bowsher & Tim Blair at Aviation House to give them an update on our progress. We agreed that we'd continue work on Manuals Publisher until the end of the month and then start handing over to Antonia's team before starting work on the Asset Manager project.

[ports-and-adapters]: http://alistair.cockburn.us/Hexagonal+architecture

## GFR

### Getting things done

For a while now we've been using the beta functionality in [Harmonia][] which allows the use of [Liquid][] templates in task titles. We've been using this to add the week number or the month name to recurring tasks. This has the advantage of making each occurrence of a recurring task more easily distinguishable. This is particularly useful given that our Harmonia tasks end up as cards in Trello and Trello's search functionality leaves a lot to be desired.

Relatively recently we introduced a new daily Harmonia task to "Process the Trello Inbox" in an effort to stay more on top of things. In conjunction with this we've added a new "Discussing" Trello list - this is where more controversial or less actionable ideas end up. We then work through these at our end-of-week retrospective. I think this system is working well.

It also helped that we declared a level of bankruptcy on a long-neglected and over-full Trello list by moving it into a new "Someday / Maybe" board. The overall effect of these changes has been very positive and the main Trello board feels much less overwhelming and more tractable.

### Cooperating

Chris L's [proposal to re-configure the CoTech Loomio][re-configure-cotech-loomio] got accepted now that the shiny new [CoTech discussions forum][cotech-community] is up and running. Hopefully we can move this forward in the near future so that we can start using Loomio much more for [CoTech][] governance.

[Outlandish][] mentioned that they're taking on new office space and have suggested members of CoTech might like to make use of it, either as a co-working space or for hosting events. We've expressed an interest and hope to visit them in the next week or two.

Having joined Solid Fund last week, we've been in contact with the administrator who it turns out actually works for [Co-operatives UK][]. This conversation has spurred us on to bring our company documentation properly into line with the cooperative principles. Chris L has started doing some research into this.

### Miscellanea

Early in the week I finished writing [the notes for Show & Tell 32][show-and-tell-32] and got them published. Yay!

I made a first attempt at getting our company [Errbit][] instance to send email notifications for *every* occurrence of an exception by setting the `ERRBIT_EMAIL_AT_NOTICES` environment variable. We'd noticed that by default Errbit only sends emails on the 1st, 10th & 100th occurrence of a given exception and this had meant we'd missed some. However, it turned out that it wasn't possible after all with the code in its current state. I'm thinking of submitting a pull request to add this capability.

Chris R bravely sorted out the book-keeping for the deposit we paid to the Amersham Arms for the CoTech evening during the Open 2017 platform cooperatives conference. This was particularly problematic, because the transactions spanned two company accounting years.

## Reflections

I'm really enjoying our end-of-week informal retrospectives in the pub, usually the Plough in Bloomsbury. We stop work mid/late afternoon and spend at least an hour chatting about how things have been going and developing our plans for the future.

If I remember rightly, Chris R & I attempted to do weekly retrospectives in the past, but I think we scheduled them for Monday mornings and I don't think they worked as well. But maybe holding them in the pub is what's made the difference!

Walking home after one of these retrospectives recently, it dawned on me that I don't think I can imagine wanting to work at a bigger company again. Being in control of our own destiny is an important aspect of this, but I could achieve this as an individual freelancer. Sharing the experience with colleagues I respect makes the whole enterprise much more fun and rewarding.

Anyway, that's all for now!

-- James


[Harmonia]: https://harmonia.io
[Liquid]: https://shopify.github.io/liquid/
[re-configure-cotech-loomio]: https://www.loomio.org/d/qre4KkSR/reconfigure-loomio-to-allow-cotech-to-make-decisions
[cotech-community]: https://community.coops.tech/
[Outlandish]: http://outlandish.com/
[Co-operatives UK]: https://www.uk.coop/
[Errbit]: https://github.com/errbit/errbit
[show-and-tell-32]: /show-and-tell-32
[CoTech]: https://www.coops.tech/


:name: week-435
:updated_at: 2017-05-25 15:35:03.682454000 +01:00
:created_at: 2017-05-25 15:35:03.682443000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 435
:extension: markdown
