Week 402
========

Week 402 was spent working on [Mocha][mocha], [Hookline][hookline] and GFR.

## Mocha

I spent quite a while working on Mocha this week. I was mainly focussed on [bringing `AnyInstanceMethod` into line with recent changes to `ClassMethod`][mocha-pr-262] so that we could release a new version of Mocha.

I also updated the Travis test matrix so that we're testing Mocha against more versions of Ruby ([PR 263][mocha-pr-263]), tried to get all tests running in isolation ([PR 267][mocha-pr-267]) and started refactoring `ClassMethod` and `AnyInstanceMethod` ([PR 269][mocha-pr-269]).

I paired with [James][james-mead] to go through my refactoring changes to ensure that I wasn't doing anything silly.

I'm enjoying working on Mocha. It's proving to be a refreshing break from working on web apps and I'm enjoying pairing with James on various aspects of it.

## Hookline

James spent most of the week working on the Hookline music library app. He's continuing to make great progress and we don't think there's too much more to do before we can ask Hookline to start using the app in anger.

We've also started idly wondering about how we might find other companies that might be interested in using the app.

## GFR

### Future

We chatted about the future of GFR on Wednesday. It's been nearly two months since we stopped working with GDS and we figured it was a good time to step back and assess what we're doing. The main decision was to postpone looking for paid work for a little while in order to continue working on the Hookline app and hopefully on some other projects/ideas.

We're both keen to explore working on other things (e.g. writing, screencasts, courses) but we don't have a particularly good idea about how to start with any of them.

This conversation brought up the perennial question of how to decide what to work on when we don't have any external pressure from a client project. I wonder whether there are processes we can put in place (e.g. randomly choosing a project to work on) that allow us to defer these sort of decisions to an external body.

### Server maintenance

James did a great job of ensuring the small number of apps we run on our [Linode][linode] server are all using the same version of Ruby and Bundler. Doing this, as well as recent upgrades to Apache and Passenger, reminded us that there are "hidden" costs involved in maintaining our own server. We're hoping to create some recurring maintenance tasks to help us keep on top of these things in future, and help to expose the real cost of running our own server. It might become apparent that paying for something [Heroku][heroku] makes more sense.

### Potential client FAQs

Meeting a number of potential clients recently made us realise that we don't have a consistent approach to answering the common questions that come up (e.g. what we do and how we work). We decided to start capturing this information in our internal wiki. It turns out that James had already made a good start on this in the past but that we'd forgotten about it! We're hoping to make this information public in the near future. There's no reason for it to be hidden and making it public _might_ mean that it's more likely we'll remember about it.

### Annual accounts

We received a revised set of annual accounts during the week. Unfortunately there are still unexplained differences between the accounts and our figures in [FreeAgent][free-agent]. I've asked our accountant about the differences and in the meantime I continue to question how much time it's worth investing in trying to check these figures.

One of the previous differences between the accounts and FreeAgent was caused by our explanation of some [Urban Locker][urban-locker] transactions. A single payment to Urban Locker covered both rent and insurance and we'd been explaining them as a single "office costs" payment. In hindsight, it's pretty clear that it would've made sense to explain them as separate "rent" and "insurance" payments and so I went back and modified these transactions for the 2015/16 year.

### Monthly drinks

I chose [Wilton's Music Hall][wiltons-music-hall] as the venue for our monthly drinks. I'd been a few times before as I used to live nearby and thought it'd be a good opportunity to share it with friends. Not only is it "the world's oldest surviving Grand Music Hall" but (more importantly) they also happen to serve delicious beer.

Until next time.

-- Chris

[free-agent]: https://www.freeagent.com/
[heroku]: https://www.heroku.com/
[hookline]: http://hookline.tv/
[james-mead]: /james-mead
[linode]: https://www.linode.com/
[mocha]: https://github.com/freerange/mocha
[mocha-pr-262]: https://github.com/freerange/mocha/pull/262
[mocha-pr-263]: https://github.com/freerange/mocha/pull/263
[mocha-pr-267]: https://github.com/freerange/mocha/pull/267
[mocha-pr-269]: https://github.com/freerange/mocha/pull/269
[urban-locker]: http://urbanlocker.co.uk/
[wiltons-music-hall]: https://wiltons.org.uk/

:name: week-402
:updated_at: 2016-10-13 10:12:53.558987000 +01:00
:created_at: 2016-10-13 10:12:53.558981000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 402
:extension: markdown
