Week 383
========

## Smart Answers

This was a bit of a quiet week for us on Smart Answers. We're aiming to do about 5 to 6 days between us but we only managed about 2.5 this week!

### Stubbing with Mocha instead of WebMock ([PR #2540][smart-answers-pr-2540])

I think [James][james-mead] suggested this a while back and I finally got round to experimenting with it this week.

Smart Answers uses the [gds-api-adapters Gem][gds-api-adapters] to consume some of the APIs available on GOV.UK. This Gem comes with a set of test helper methods that we were using in quite a few of our tests. These helper methods work by using [WebMock][webmock] to return canned responses for requests to the GOV.UK APIs. While this works, it introduces quite a lot of unnecessary overhead. As long as we have confidence that gds-api-adapters works as advertised then we don't need to exercise its code in each of our tests.

We already had some Smart Answer specific wrappers around the gds-api-adapters Gem so I was able to remove some uses of the helper methods in favour of stubbing our wrapper classes instead. Doing this for the integration tests in the system shaved about 60 seconds from the time it took to run all the tests on my machine!

I went on to investigate making a similar change to the Smart Answers regression tests. I didn't spend very long working on this but was disappointed by the initial results: they actually appear to have made the tests take longer to run! I'm hoping I'm missing something obvious here and that there are some performance improvements to be had.

### Fixing a failing test ([PR #2539][smart-answers-pr-2539])

James noticed that a test had started failing on CI, but not locally. He determined that the problem was to do with an updated version of [govuk-content-schemas][govuk-content-schemas], replicated it locally and then submitted the fix.

It sounds as though something has been put in place to avoid these sort of third party changes from causing these sort of problems in future.

## GFR

Our GFR time was mostly spent ticking off the standard admin tasks that help keep the company running.

I think the only thing of note was that James spent a while answering questions from our new accountant about our annual accounts.

Until next time.

-- Chris

[gds-api-adapters]: https://github.com/alphagov/gds-api-adapters
[govuk-content-schemas]: https://github.com/alphagov/govuk-content-schemas/
[james-mead]: /james-mead
[smart-answers-pr-2539]: https://github.com/alphagov/smart-answers/pull/2539
[smart-answers-pr-2540]: https://github.com/alphagov/smart-answers/pull/2540
[webmock]: https://github.com/bblimke/webmock

:name: week-383
:updated_at: 2016-08-05 15:09:55.003868000 +01:00
:created_at: 2016-08-05 15:09:55.003857000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 383
:extension: markdown
:week_dates: Mon 16 May to Sun 22 May
