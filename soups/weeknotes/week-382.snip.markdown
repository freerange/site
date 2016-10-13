Week 382
========

## Smart Answers

I continued to work on [Marriage Abroad][marriage-abroad] while [James][james] mostly worked on improving the regression tests and refactoring/fixing [Married Couples Allowance][calculate-married-couples-allowance].

### Displaying services/fees for marriages in France ([PR #2526][smart-answers-pr-2526])

This adds the "Fees" section to outcomes for ceremonies in France and French overseas territories. This omission was highlighted by some of the work I did for the new tax year changes so it was great to finally get it fixed!

### Removing Vietnam-specific marriage information ([PR #2525][smart-answers-pr-2525])

I spotted this special case for Vietnam while trying to remove some duplication in the way the services and fees are displayed. We don't believe it's required so I've opened a PR so that it can be fact checked by the department.

### Removing services/fees inconsistency for marriages in Columbia ([PR #2522][smart-answers-pr-2522])

This removes an inconsistency in the way we were displaying the services and fees information for Columbia. Making it identical to all the other outcomes should make it easier to DRY up the display of services/fees information in future.

### Merging two almost identical marriage-abroad outcomes ([PR #2530][smart-answers-pr-2530])

This simplifies the system slightly by merging two almost identical outcomes into one.

### Using current tax year in regression tests ([PR #2518][smart-answers-pr-2518])

James added a way to allow us to configure the date and time used by the regression tests. We were previously fixing the date to 1 Jan 2015 for these tests but want to be able to use a more recent date so that the artefacts more closely reflect the behaviour of the actual site.

### Using stubbed time when generating regression test data ([PR #2528][smart-answers-pr-2528])

This follows on from the work in PR #2518 (discussed above). It ensures we're also using the same stubbed date when generating the regression test data, as we do when we're running the tests.

### Failing fast in regression tests ([PR #2519][smart-answers-pr-2519])

The regression tests work by making a request to a Smart Answer and then saving the response. This change ensures we fail fast if the response returns a status code of something other than 200.

### Fixing regression test input data ([PR #2527][smart-answers-pr-2527])

James noticed that some of the input data we use to run the regression tests had got out of date. This hasn't happened very often so we've held off automatically detecting it becoming stale. If we notice this happening more then I imagine we'll improve things.

### Refactoring and fixing Married Couples Allowance ([PR #2529][smart-answers-pr-2529])

While working on this Smart Answer James noticed a number of bugs that had crept in over time. As well as refactoring it to follow the newer style we've adopted, James has also improved the code so that it better reflects the domain its dealing with. In doing so he's also been able to fix the problems with the original implementation.

## GFR

### Tracking time on non-client projects

We started tracking our time on non-client projects in FreeAgent this week. This should help ensure we're contributing roughly the same amount of time while I'm still remote and we're both working part-time.

### More GDS work?

James followed up with an email after his meeting last week.

### Annual Accounts

It's possible that we're going to need to get our annual accounts produced relatively soon in order to help James with a mortgage application. Rather than continuing to investigate producing them ourselves; we agreed that the simplest thing would be to engage an accountant to do them. We've decided to use [The Proactive Accountant][proactive-accountant] based on a recommendation and some research.

### Increasing pension payments

We recently decided to increase the amount that GFR pays into our personal pensions. My pension provider was happy enough to accept the form that I'd completed and signed digitally, although they required a "wet signature" for their records. James's provider required that another director complete the form, which I did this week.

### Show and Tell

James hosted the first [Show and Tell][show-and-tell] of 2016 this week. It sounds like there were a few people in attendance at [The Peasant][the-peasant] and hopefully James will be able to write a bit more about this soon.

Until next time.

-- Chris

[james]: /james-mead
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[calculate-married-couples-allowance]: https://www.gov.uk/calculate-married-couples-allowance
[proactive-accountant]: http://proactive.uk.net/
[show-and-tell]: /show-and-tell-events
[smart-answers-pr-2518]: https://github.com/alphagov/smart-answers/pull/2518
[smart-answers-pr-2519]: https://github.com/alphagov/smart-answers/pull/2519
[smart-answers-pr-2522]: https://github.com/alphagov/smart-answers/pull/2522
[smart-answers-pr-2525]: https://github.com/alphagov/smart-answers/pull/2525
[smart-answers-pr-2526]: https://github.com/alphagov/smart-answers/pull/2526
[smart-answers-pr-2527]: https://github.com/alphagov/smart-answers/pull/2527
[smart-answers-pr-2528]: https://github.com/alphagov/smart-answers/pull/2528
[smart-answers-pr-2529]: https://github.com/alphagov/smart-answers/pull/2529
[smart-answers-pr-2530]: https://github.com/alphagov/smart-answers/pull/2530
[the-peasant]: http://www.thepeasant.co.uk/

:name: week-382
:updated_at: 2016-08-05 15:08:49.818501000 +01:00
:created_at: 2016-08-05 15:08:49.818494000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 382
:extension: markdown
:week_dates: Mon 9 May to Sun 15 May
