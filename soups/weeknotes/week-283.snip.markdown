Week 283
========

This was the first week in a few months when we haven't had any client work scheduled. Inevitably we spent much of the time catching up with company administrivia and reflecting on how things have been going, but there were also a few events worthy of note...

## London XP Meetup

On Monday night I went along to my first [XP London][XProLo] meetup, themed [Reflections on TDD][], in the very agreeable [Unruly Media][] "clubhouse" near Brick Lane. I've been meaning to go along to this meet-up since it was started earlier in the year, but it keeps clashing with the excellent [Little Schemer Book Club][].

### Promises

The first talk was by [Tim Pickles][] on [promises][Futures and Promises] in JavaScript with a focus on how to test them. Tim's examples made use of the [Q.js][] promise library with tests written using [Mocha][Mocha.js], [Chai][Chai.js] and [Sinon][Sinon.js].

I've been aware of promises for some time, mainly courtesy of jQuery's [Deferred Object][] mechanism, but it was interesting to see some more sophisticated use cases.

### TDD with Mocks

[Nat Pryce][] followed up with a talk: "Are mock objects the work of the devil?". This talk was somewhat in response to the [Is TDD Dead?][] brouhaha. I've probably forgotten some of the salient points, but here's what I remember:

Nat recommended an addition to the usual red-green-refactor TDD workflow diagram - jump straight to the refactoring step if it's hard to write a useful failing test.

[Martin Fowler][] divides TDD practitioners into [Mockists and Classicists][] and [Brian Marick][] further divides mockists into "London school" versus "Detroit school". Nat suggested that these divisions are not helpful in that they can encourage developers down the undesirable path of [mocking everything][].

Nat also explained how testing with mock objects is only really appropriate for a "Tell, Don't Ask" style of object-oriented development - many people who run into problems with mocks are essentially "writing [COBOL][]" in Java/Ruby/etc and their design is a mixture of CRAPs [^1] and NOJOs [^2] .

When using the "Tell, Don't Ask" style it's important to find simple and stable protocols i.e. have your classes talk to each other over non-implementation-specific, domain-specific interfaces. Also the behaviour of the system should _emerge_ based on how you "wire up" your classes.

I enjoyed hearing this calm and measured counterpoint to the much trumpeted discussions between Kent Beck, Martin Fowler and DHH.

## Linode VPS

We currently host our [website][gfr-website] and a few other bits and pieces on a [Linode][] VPS. This VPS has been showing it's age [^3] for a while now, mainly because it hasn't had much love over the years - in particular I recently ran into some annoying problems trying to deploy a simple Rack application.

So [Chris][Chris Roos] has been valiantly trying to create a new Linode VPS to replace the current one. It all went pretty smoothly until he ran into a couple of problems with [Ubuntu][], [Phusion Passenger][], environment variables, encoding and [vanilla.rb][]. He's written some of this up in these two GitHub issues in case anyone's interested:

* ["malformed snip inclusion" error when encoding is not UTF-8][vanilla.rb-issue]
* [Document the use of .profile instead of .bashrc][Passenger Docs PR]

Chris has been meticulously documenting the configuration of the new VPS in his inimitable style, so I'm confident we're going to be in a much better state once he's finished.

## In Other News

Having taken delivery of a Mac Mini [last week][week-282-notes], Chris made further improvements to our audio-visual set-up by having a bloke from [Green Workforce][] come in and put up a [shelf for the projector][projector shelf]. This meant we could remove the table it had been sitting on and freed up a load of extra space in our "cinema zone". I think it's a great improvement! Good work, Chris.

On Thursday we met up with [JB Steadman][] & [Callum Stott][] of [Pivotal Labs][] for lunch at the [Old Fountain][]. It was good to exchange notes about how Pivotal and Free Range work with clients; I think we share a lot of the same ideals about how a successful "agile" process should work.

[Tom Stuart][] was away at [RuLu][] for the latter half of the week, but we were pleased to welcome a couple of guest to GFRHQ to make up for his absence - [Chris Lowis][] joined us on Thursday and [Jason Cale][] on Friday.

We spent a slightly indulgent, but very enjoyable Friday afternoon shooting the breeze with Jase at the [Strongroom Bar][] accompanied by sunshine and beer. Jase mentioned he'd recently been reading back through some of his GFR week notes, so I thought I do the same - some of [them](/week-148) _were_ [pretty epic](/week-151)!

It was great to catch up with Jase and we hope to see him again soon.

Anyway, that's yer lot.

-- James


[Little Schemer Book Club]: http://lanyrd.com/series/little-schemer-book-club/
[JB Steadman]: http://pivotallabs.com/author/jb/
[Callum Stott]: http://pivotallabs.com/author/cstott/
[Pivotal Labs]: http://pivotallabs.com/
[Chris Lowis]: http://chrislowis.co.uk
[Jase]: http://chrislowis.co.uk
[Tom Stuart]: http://codon.com/
[RuLu]: http://rulu.eu/
[XProLo]: http://www.meetup.com/Extreme-Programmers-London/
[Reflections on TDD]: http://www.meetup.com/Extreme-Programmers-London/events/174870232/
[Tim Pickles]: https://twitter.com/timpickles
[Unruly Media]: http://www.unrulymedia.com/
[Futures and Promises]: http://en.wikipedia.org/wiki/Futures_and_promises
[Q.js]: http://en.wikipedia.org/wiki/Futures_and_promises
[Mocha.js]: http://visionmedia.github.io/mocha/
[Chai.js]: http://chaijs.com/
[Sinon.js]: http://sinonjs.org/
[Deferred Object]: http://api.jquery.com/category/deferred-object/
[Nat Pryce]: http://www.natpryce.com/
[Is TDD Dead?]: http://martinfowler.com/articles/is-tdd-dead/
[Martin Fowler]: http://martinfowler.com
[Mockists and Classicists]: http://martinfowler.com/articles/mocksArentStubs.html#ClassicalAndMockistTesting
[Brian Marick]: http://www.exampler.com/
[mocking everything]: http://www.mockobjects.com/2007/04/test-smell-everything-is-mocked.html
[COBOL]: http://en.wikipedia.org/wiki/COBOL
[week-282-notes]: /week-282
[Chris Roos]: /chris-roos
[projector shelf]: http://www.amazon.co.uk/gp/product/B006G0UF8A/
[gfr-website]: /
[Linode]: https://www.linode.com/
[Phusion Passenger]: https://www.phusionpassenger.com/
[vanilla.rb]: https://github.com/lazyatom/vanilla-rb
[vanilla.rb-issue]: https://github.com/lazyatom/vanilla-rb/issues/5
[Passenger Docs PR]: https://github.com/phusion/passenger/pull/1216
[Green Workforce]: http://www.greenworkforce.co.uk/
[Old Fountain]: http://www.oldfountain.co.uk/
[Strongroom Bar]: http://www.strongroombar.com/
[Ubuntu]: http://www.ubuntu.com/
[Jason Cale]: http://jasoncale.com/

[^1]: Class that's Really A Procedure
[^2]: Plain Old Java Object with No behaviour
[^3]: 4+ years


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-06-23 15:40:00 +01:00
:updated_at: 2014-06-23 15:40:00 +01:00
:page_title: Week 283
