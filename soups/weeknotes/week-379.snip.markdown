Week 379
========

## Smart Answers

### Changes to Benefit cap calculator

[James][james-mead] and I spent quite a while using pull requests to illustrate possible approaches to a required change to the [benefit-cap-calculator Smart Answer][benefit-cap-calculator]:

* [PR #2477 - Spike: Allow user to choose between 2 versions of benefit-cap-calculator][smart-answers-pr-2477]
* [PR #2478 - Spike: Duplicate benefit-cap-calculator flow for 2016 changes][smart-answers-pr-2478]
* [PR #2480 - Spike: Duplicate benefit cap calculator flow for 2016 changes (with duplication then removed)][smart-answers-pr-2480]

The changes to this Smart Answer ended up causing quite a few problems in the team and, in hindsight, I think it might've been better if we'd taken on the work ourselves.

### Modelling Period of Incapacity for Work ([PR #2479][smart-answers-pr-2479])

James built on his spike ([PR #2280][smart-answers-pr-2280]) to introduce this domain concept into the [calculate-statutory-sick-pay Smart Answer][calculate-statutory-sick-pay]. Domain modelling is something that's sorely missing from Smart Answers so this is a great step in the right direction. We're left with a Smart Answer that's easier to test, reason about and discuss.

### Fixing auto-correctable Rubocop violations ([PR #2474][smart-answers-pr-2474])

James fixed a whole load of the auto-correctable [Rubocop][rubocop] violations. This gets us much closer to our ultimate goal of having no violations.

### Removing legacy code ([PR #2476][smart-answers-pr-2476])

James removed support for an old name-based branching mechanism that was previously being used in Smart Answers.

### Remove worldwide fixture data from regression test checksums ([PR #2473][smart-answers-pr-2473])

This relatively small change means that we're now consistently tracking worldwide fixture data in the regression test checksums.

### Remove unnecessary explicit namespace qualifications ([PR #2475][smart-answers-pr-2475])

The PR description says it all, really.

---

## GFR

### Weeknotes

I continued to make progress with the backlog of week notes. Sadly, we seem to have fallen into the same trap again. I'm currently writing these about 3 months late!

### Annual accounts

We had some further discussion about what to do but are still yet to come to any conclusions.

### Salary, dividend and pensions

I finished working on this task that I'd started last week. We agreed to reduce our salary and dividend amounts and to increase our pension payments.

### Geohash explorer

We had an email from someone asking us about the [Geohash explorer app hosted on our domain][geohash-explorer]. James and I had completely forgotten about it but some investigation revealed that it was a project of [Tom W's][tom-ward]. You can read more about it in [notes for week 154][weeknotes-154] and Tom's blog post, ["A small toy to explore geohashes"][geohash-tom-ward-blog-post]

### Show and Tell and Monthly Drinks

We resumed organising these tasks after a break at the beginning of the year. James got straight on the case and organised the monthly drinks for April.

### Updating our cashflow forecast

We have a very basic spreadsheet that helps us forecast how long we can continue paying ourselves based on our current assets and liabilities. We noticed that some of the figures had been out of date for about a year, and that it didn't take account of some additional monthly expenses. We updated the figures and also updated the instructions to try to make sure that we keep on top of these sort of changes in future.

Until next time.

-- Chris

[benefit-cap-calculator]: https://www.gov.uk/benefit-cap-calculator
[calculate-statutory-sick-pay]: https://www.gov.uk/calculate-statutory-sick-pay
[geohash-explorer]: http://geohash.gofreerange.com/
[geohash-tom-ward-blog-post]: https://tomafro.net/2011/09/a-small-toy-to-explore-geohashes
[james-mead]: /james-mead
[rubocop]: https://github.com/bbatsov/rubocop
[smart-answers-pr-2280]: https://github.com/alphagov/smart-answers/pull/2280
[smart-answers-pr-2473]: https://github.com/alphagov/smart-answers/pull/2473
[smart-answers-pr-2474]: https://github.com/alphagov/smart-answers/pull/2474
[smart-answers-pr-2475]: https://github.com/alphagov/smart-answers/pull/2475
[smart-answers-pr-2476]: https://github.com/alphagov/smart-answers/pull/2476
[smart-answers-pr-2477]: https://github.com/alphagov/smart-answers/pull/2477
[smart-answers-pr-2478]: https://github.com/alphagov/smart-answers/pull/2478
[smart-answers-pr-2479]: https://github.com/alphagov/smart-answers/pull/2479
[smart-answers-pr-2480]: https://github.com/alphagov/smart-answers/pull/2480
[tom-ward]: https://tomafro.net/
[weeknotes-154]: http://gofreerange.com/week-154#what

:name: week-379
:updated_at: 2016-08-01 16:44:00.286799000 +01:00
:created_at: 2016-08-01 16:44:00.286792000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 379
:extension: markdown
:week_dates: Mon 18 Apr to Sun 24 Apr
