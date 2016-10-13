Week 352
========

We did the usual 4:1 split of days between [Smart Answers][] and GFR, spending Monday and Tuesday at Aviation House and Wednesday, Thursday & Friday at GFRHQ.

## Smart Answers

### Business as usual

This week, in the absence of [Tadas][], we had to spend quite a bit of time making & deploying "business-as-usual" changes as new requests & fact-checking responses came in from the departments:

* [Start page amendments for calculate-state-pension][pr-1995]
* [Add instructions for how to apply for state-pension-topup][pr-1994]
* [Fixed 'claim your state pension' link][pr-1996]
* [Updated link in energy-grants-calculator][pr-1997]
* [Add missing phrase for maternity-paternity-calculator][pr-1835]

It was particularly good to finally get that last one merged, because it had been hanging around for ages.

I also spent quite a bit of time working on a [bug fix for calculate-statutory-sick-pay][pr-1998]. The code for this seems way more complicated than the logic of the policy would suggest, so as I gradually understand it more and more, I hope I can improve the code.

While it was good to support the Content Team in making these changes, it was also a bit frustrating that it took our time away from our main goal of making Smart Answers more maintainable.

Anyway, towards the end of the week Tadas' replacement, [Erik Eide][], started work at [GDS][]. Welcome, Erik! It's useful to have a fresh pair of eyes on the project and it prompted us to write some [documentation][].

### Converting Smartdown flows

You may remember from a couple of weeks ago that [Chris][] converted the last Smartdown flow, [pay-leave-for-parents][], to [use only a single question per page][pr-1977]. This week he made further significant progress on converting the last Smartdown flow to a Ruby Smart Answer flow by [removing unused code from the flow][pr-2006] and finishing [generating regression tests for it][pr-1986].

Now that this flow only used one question per page, Chris also [renamed the question pages to match their underlying question][pr-2018], which will make it easier to convert to a Ruby Smart Answer.

### Flow visualisation

As a follow-up to [supporting visualisation of flows that use `next_node` with a block][pr-1960], Chris went through the flows [explicitly specifying permitted next nodes where necessary][pr-2010], so that the graph visualisation now works for all of them.

### Question options

I spent some time simplifying the way the app looks up the content for question options.

In the past we've been bitten quite a few times by the way the code was silently falling back to (often unhelpful/inappropriate) content when none was explicitly specified.

So I've made a change which [forces all content for question options to be explicitly specified][pr-2005].

To make this change easier, I prepared the ground with a bit of [tidying][pr-2003] [up][pr-2011]. Unfortunately, some things I'd inadvertently broken only came to light [when the full suite of regression tests ran][pr-2009] and some [when the change was deployed to production][pr-2014].

### Tidying up

It's so easy to keep putting off obvious simplifications or removal of unused code, so it's good to see that we're still ticking off some of these things:

* [Simplify presenter methods][pr-1988]
* [Avoid potential bug in StatutorySickPayCalculator][pr-1979]
* [Make test definitions consistent][pr-1999]
* [Remove analytics:analyse rake task][pr-1984]
* [Remove script to test performance of smartdown loading / scenario execution][pr-1985]
* [Update checksum data for redundancy smart answers][pr-2004]

### Documentation

As I mentioned earlier, having Erik start has been a useful driver to improve the state of the documentation. I'm sure there'll be more to follow:

* [Add documentation for regression tests][pr-2000]
* [Add documentation about deploying][pr-2001]
* [Add documentation for CI and deploying to preview][pr-2007]

## GFR

On Wednesday we held our monthly Show & Tell event. We spent Friday doing the usual company admin tasks, replying to emails, etc. Chris penned the [week notes][week-351] and I wrote up notes on the [Show & Tell][show-and-tell-17]. As an incentive/reward, we had lunch and a beer at the [Strongroom Bar & Kitchen][]. In the afternoon, we had a productive session going through our company Trello board - this is something we keep forgetting to do, so it was was great to have a bit of a sort out.

Anyway, until next time!

-- James

[Smart Answers]: https://github.com/alphagov/smart-answers
[Tadas]: http://codeme.lt/
[Erik Eide]: https://github.com/er-ke-de
[GDS]: https://gds.blog.gov.uk/
[documentation]: #documentation
[Chris]: /chris-roos
[pay-leave-for-parents]: https://www.gov.uk/pay-leave-for-parents
[week-351]: http://gofreerange.com/week-351
[show-and-tell-17]: /show-and-tell-17
[Strongroom Bar & Kitchen]: http://www.strongroombar.com/

[pr-1835]: https://github.com/alphagov/smart-answers/pull/1835
[pr-1960]: https://github.com/alphagov/smart-answers/pull/1960
[pr-1977]: https://github.com/alphagov/smart-answers/pull/1977
[pr-1979]: https://github.com/alphagov/smart-answers/pull/1979
[pr-1984]: https://github.com/alphagov/smart-answers/pull/1984
[pr-1985]: https://github.com/alphagov/smart-answers/pull/1985
[pr-1986]: https://github.com/alphagov/smart-answers/pull/1986
[pr-1988]: https://github.com/alphagov/smart-answers/pull/1988
[pr-1994]: https://github.com/alphagov/smart-answers/pull/1994
[pr-1995]: https://github.com/alphagov/smart-answers/pull/1995
[pr-1996]: https://github.com/alphagov/smart-answers/pull/1996
[pr-1997]: https://github.com/alphagov/smart-answers/pull/1997
[pr-1998]: https://github.com/alphagov/smart-answers/pull/1998
[pr-1999]: https://github.com/alphagov/smart-answers/pull/1999
[pr-2000]: https://github.com/alphagov/smart-answers/pull/2000
[pr-2001]: https://github.com/alphagov/smart-answers/pull/2001
[pr-2003]: https://github.com/alphagov/smart-answers/pull/2003
[pr-2004]: https://github.com/alphagov/smart-answers/pull/2004
[pr-2005]: https://github.com/alphagov/smart-answers/pull/2005
[pr-2006]: https://github.com/alphagov/smart-answers/pull/2006
[pr-2007]: https://github.com/alphagov/smart-answers/pull/2007
[pr-2009]: https://github.com/alphagov/smart-answers/pull/2009
[pr-2010]: https://github.com/alphagov/smart-answers/pull/2010
[pr-2011]: https://github.com/alphagov/smart-answers/pull/2011
[pr-2014]: https://github.com/alphagov/smart-answers/pull/2014
[pr-2018]: https://github.com/alphagov/smart-answers/pull/2018

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-10-23 16:01:00 +01:00
:updated_at: 2015-10-23 16:01:00 +01:00
:page_title: Week 352
