Week 388
========

_Note that we're writing these notes nearly 6 months late which is why they're in summary form._

* I was away sailing in the Solent from Monday to Wednesday.

* Chris & Amy had come to the end of their time in New Zealand and were back in Christchurch at the beginning of the week. They then flew to Melbourne, Australia, on Thursday and plan to spend a week there before flying back to the UK.

## GFR

* I met up with Tom Cooper of [Day Cooper Day][], a startup providing group pension schemes, to discuss the possibility of us doing some work for them. I met Tom at their office on Scrutton Street, opposite our old office in Shoreditch Works. We then walked round to chat over coffee at the [Eight Club][] on Dysart Street. It was interesting to hear how they've grown the company organically and how they're disrupting the pensions sector by making intelligent use of technology. Later in the week, I wrote up some notes on the meeting.

* I had phone & email discussions with our current and previous accountants to try to understand the purpose behind some journal entries that our previous accountant had added to FreeAgent. This was so that our current accountant could make progress on preparing the annual accounts.

* Back in April, we decided to increase the payments from the company to our personal pensions. This week Chris heard from his pension provider that the monthly direct debit amount had finally been increased. The increase in the direct debit for my pension had already been in place for some time and so Chris needed to make a one-off payment to "catch-up". He discovered that he needed to go through his financial adviser to make this one-off payment.

* I followed up on [an exception that had occurred on our company website](https://github.com/freerange/site/issues/34#issuecomment-226799032) and created [this pull request](https://github.com/lazyatom/vanilla-rb/pull/11) as a possible fix.

* I had some problems with our payroll RTI submission via FreeAgent. FreeAgent's support team said that problem was with the government gateway. Eventually I decided to make the salary payments on time, even though the payroll had not yet been successfully submitted.

* I investigated why a recent [Webhooks][] exception was not reported to our [Errbit][] instance. I didn't completly get to the bottom of this, but I'm pretty sure it was because the exception occurred in the parsing of the HTTP query string parameters which is an area of code somehow not covered by [Airbrake][].

* I also investigated and [worked around another Webhooks exception](https://github.com/freerange/webhooks/issues/21) and requested a proper fix in Harmonia.

* Chris started recording our internal monthly time reports in a spreadsheet; previously we'd been recording the figures in a Trello card comment.

* Chris investigated the possibility of submitting our VAT return monthly to reduce the amount of work needed each time, but we decided it wasn't worth it.

* Chris made some improvements to the spreadsheet we've been using to help us submit time-sheets for the Smart Answers work.

## Mocha

* I got Travis CI to enable the [Cron Jobs option][travis-cron-jobs] for the Mocha project in order to _schedule_ a regular build. Having a build like this would've caught some of the problems I've been working on recently and I hope it will give us early warning of problems in the future.

* I responded to [this pull request](https://github.com/freerange/mocha/pull/244) by [Michael Grosser][] about stubbing aliased methods which was in turn an updated version of [this older pull request](https://github.com/freerange/mocha/pull/202).

## Smart Answers

* I agreed to meet up with Ben Andrews the new Product Manager for Smart Answers next week.

* I had an email discussion with Jessica Feldman about approving our time-sheets which is a job she's recently taken over.

* Chris worked on [using Mocha to stub at a higher level of abstraction in the regression tests](https://github.com/alphagov/smart-answers/pull/2593) instead of using WebMock. This is a much more appropriate and simpler level to stub, because the API is much "narrower" at this point. It also had the significant benefit of saving ~15 mins when running the regression tests.

* Chris created a [pull request](https://github.com/alphagov/smart-answers/pull/2591) to demonstrates the approach of updating the regression test artefacts _before_ changing the behaviour of the system.

* Chris went back to some work he'd started in April - removing duplication from marriage-abroad outcome titles. As part of doing this he created about 7 branches to split a bunch of logical outcomes in a single file into separate outcome files.

* Chris also reviewed a couple of Ikenna's pull requests: [Content update to payment advice for Vietnam marriages #2592](https://github.com/alphagov/smart-answers/pull/2592) & [Content changes to Personal Independence Payment #2482](https://github.com/alphagov/smart-answers/pull/2482).

[travis-cron-jobs]: https://docs.travis-ci.com/user/cron-jobs
[Day Cooper Day]: http://www.daycooperday.com/
[Eight Club]: http://www.eightclub.co.uk/
[Webhooks]: https://github.com/freerange/webhooks
[Errbit]: https://github.com/errbit/errbit
[Airbrake]: https://github.com/airbrake/airbrake
[Michael Grosser]: https://github.com/grosser

:name: week-388
:updated_at: 2016-12-19 15:44:42.029303000 +00:00
:created_at: 2016-12-19 15:44:42.029282000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 388
:extension: markdown
