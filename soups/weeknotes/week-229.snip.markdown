Week 229
========

Having been struck down by an unpleasant [lurgi](http://en.wikipedia.org/wiki/The_Goon_Show#Lurgi) at the weekend, I haven't caught up with any of my colleagues in person this week. However, we've had another busy week on the Open University's [FutureLearn](http://futurelearn.com/) project. We're making steady progress and hopefully we'll have some course organisers using the system for real in the not too distant future.

## Rebalancing the Testing Pyramid

A [few weeks back](/week-225), I mentioned my concerns about how we've tended to organise our testing, particularly our [Cucumber](http://cukes.info/) acceptance tests.

### Old school

On a [previous project](https://github.com/alphagov/whitehall/) we'd mainly used a mixture of traditional [Rails](http://rubyonrails.org/) tests (unit & functional) and Cucumber scenarios. It felt that early in the project our testing stack became rather _top-heavy_ with one or more scenarios being added for every story. Later in the project we tended to write more Rails functional tests. 

However, I often found myself wanting to write something "in-between"[^1]. A typical example of this is where you want to test the submission of a form and its validation errors. While it's possible to do this in Rails functional tests to an extent, you tend to have to rely on setting realistic parameter values and so it's not very satisfactory -- not very integration-y.

### New school

On our current project, we're using [RSpec](http://rspec.info/) and there's no real equivalent of Rails functional tests -- RSpec controller specs and view specs are unit tests; not integration-y at all. So we've decided to have a layer of RSpec feature tests loosely characterised like this:

* Only a few user interactions e.g. view a form, fill it in, submit it, and view the result
* Feel free to navigate directly to page via URL path i.e. no need to follow navigation links
* Use of factories, direct database access, etc. i.e. allow shortcuts in setup for test
* Detailed assertions about page content
* Exceptional/non-happy path

While our Cucumber tests will typically be more like this:

* More than a couple of user interactions
* High-level description of the behaviour of the system
* Prefer to use actual navigation links like a user would
* Use the user interface to change state of the system as much as possible
* Only happy path

The idea is to always be testing at the lowest _sensible_ level in the [Testing Pyramid](http://martinfowler.com/bliki/TestPyramid.html). I think we still have some way to go before we figure out exactly what things we want to keep testing in Cucumber scenarios, but so far I'm happy with our direction of travel.

## Computation book club

James A [organised](http://lists.lrug.org/pipermail/chat-lrug.org/2013-May/008928.html) the inaugural meeting of a reading group for Tom Stuart's book, [Understanding Computation](http://codon.com/computation-book). Good work, James. The meeting at GFRHQ was [very well attended](http://lanyrd.com/2013/compbookclub/attendees/) and took place in the illustrious company of the [author](https://twitter.com/tomstuart) himself -- you lucky people! If you're interested in attending the next meeting, then please get in touch on the [mailing list](https://groups.google.com/forum/?fromgroups#!topic/computationbook/0DePgVcMP2I).

## Emigration

Having jumped through all (?) of the bureaucratic hoops, [Lazyatom HQ](/james-adam) will be relocating to Austin, Texas, later this month. Although we'll miss having James around in person quite as much, I'm really glad he'll be able to spend more time with his partner who is based out there.

Hopefully some of our [remote-working gizmos](/week-228#home-and-away) will help make it seem as if he's just around the corner.

Anyway, until next time.

-- James

[^1]: For some reason we never really went in for Rails integration tests.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2013-06-07 16:00:00 +01:00
:updated_at: 2013-06-07 16:00:00 +01:00
:page_title: Week 229
