Week 344
========

We were at our full complement of two for the whole week and did our
usual 4:1 split of days between [Smart Answers][smart-answers] and [GFR][gfr].

## Smart Answers

[Tadas][tadas] added [support for regression testing Smartdown flows][pr-1883] before proceeding to [convert student-finance-forms from Smartdown to Ruby][pr-1884]. This is great. Thanks, Tadas!

[James][james-mead] built on Tadas's work by first [adding regression tests for landlord-immigration-check][pr-1886] before moving on to [convert it from Smartdown to Ruby][pr-1900]. James scripted the conversion in order to document the conversion and to leave something that may come in useful during the conversion of the two remaining Smartdown flows.

James continued to spend time working on the new part year profit calculator Smart Answer. He met with someone from HMRC on Thursday and together they managed to clear up some of the uncertainty around how it should work.

I addressed some feedback and merged my pull request to [convert marriage-abroad to use ERB templates][pr-1882]. It was great to get this final conversion merged.

I converted a few remaining test Smart Answers to use ERB templates before [removing support for rendering outcomes using the YAML locale files][pr-1895].

I tried to [make use of some analytics functionality available in a later version of the govuk_frontend_toolkit Gem][pr-1899].

I spent some time investigating an overlap between [Rubocop][rubocop] rules in the [styleguides][govuk-styleguides] and [govuk-lint][govuk-lint] repositories. Having understood the situation some more I opened a pull request to [replace rubocop with govuk-lint][pr-1901].

I deleted 25 stale branches from GitHub (all between 7 months and 2 years old). I think there's overhead of having these lying around because it makes me wonder whether they're important or not. Removing them means that I don't have to think about it at all.

James and I bumped in to [Rob McKinnon][rob-mckinnon] at GDS. Rob's working at MoJ but is spending time at GDS to build some MoJ tools using [specialist-publisher][specialist-publisher]. It turns out that Rob has also used Smartdown to build an MoJ prototype in the past. I'm not sure how widespread this practice is but it's great to hear that Rob's pushing this sort of collaboration.

## GFR

We let [Neil][neil-williams] and [Brad][brad-wright] know that we're happy to continue working past our current contract end date. We really do want to leave this project in as good a place as possible and continuing on into at least October should help us do that.

It was good to see [Tom W][tom-ward] for lunch on Wednesday. He was in the area to meet someone else but we managed to find time for a trip to the cafe.

Our GFR day was mostly spent writing and catching up on admin, although we did make time for lunch at the recently re-opened [Dinerama][dinerama]. [Chris L][chris-lowis] joined us for food, beer and sitting in the sun. We bumped into [Ben G][ben-griffiths] and [Tom T][tom-taylor] at too: [Offset][moo-offset] were lunching together after their office move to a new place a couple of minutes up the road.

We finished the week with a couple of pints in the sun at the [Crown and Shuttle][crown-and-shuttle].

Until next time.

-- Chris

[ben-griffiths]: https://twitter.com/beng
[brad-wright]: https://twitter.com/bradwright
[chris-lowis]: http://blog.chrislowis.co.uk/
[crown-and-shuttle]: http://crownandshuttle.co.uk/
[dinerama]: http://www.streetfeastlondon.com/where/dinerama
[gfr]: /
[govuk-lint]: https://github.com/alphagov/govuk-lint
[govuk-styleguides]: https://github.com/alphagov/styleguides
[james-mead]: /james-mead
[moo-offset]: http://www.offsethq.com/
[neil-williams]: https://twitter.com/neillyneil
[pr-1882]: https://github.com/alphagov/smart-answers/pull/1882
[pr-1883]: https://github.com/alphagov/smart-answers/pull/1883
[pr-1884]: https://github.com/alphagov/smart-answers/pull/1884
[pr-1886]: https://github.com/alphagov/smart-answers/pull/1886
[pr-1895]: https://github.com/alphagov/smart-answers/pull/1895
[pr-1899]: https://github.com/alphagov/smart-answers/pull/1899
[pr-1900]: https://github.com/alphagov/smart-answers/pull/1900
[pr-1901]: https://github.com/alphagov/smart-answers/pull/1901
[rob-mckinnon]: https://github.com/robmckinnon
[rubocop]: https://github.com/bbatsov/rubocop
[smart-answers]: https://github.com/alphagov/smart-answers
[specialist-publisher]: https://github.com/alphagov/specialist-publisher
[tadas]: http://codeme.lt/
[tom-taylor]: http://tomtaylor.co.uk/
[tom-ward]: https://tomafro.net/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-08-28 11:00:00 +01:00
:updated_at: 2015-08-28 13:00:00 +01:00
:page_title: Week 344
