Week 372
========

Chris was away on a sailing course for the second half of the week. Otherwise, we did the usual GFR admin and continued with our part-time work on [Smart Answers][]:

* I did some [refactoring of SmartAnswer::Question::Base][pr-2319] as a pre-cursor to work I was doing to automatically determine the possible next nodes for each node.

* I made a [small improvement to exceptions raised in sharing flow logic][pr-2321]. Previously these exceptions reported the line where the logic was included and not the line where the actual syntax error occurred.

* I finally got confirmation regarding a bug I had identified in the [Calculate Statutory Sick Pay][] flow. So I was able to [fix the bug in the validation of the end date of a linked Period of Incapacity for Work][pr-2324].

* Chris continued with his quest to refactor [Marriage Abroad][]. In particular, he opened a pull request to [delegate from MarriageAbroadCalculator to MarriageAbroadDataQuery][pr-2316].

Until next time.

-- James

[Smart Answers]: https://github.com/alphagov/smart-answers
[pr-2316]: https://github.com/alphagov/smart-answers/pull/2316
[pr-2319]: https://github.com/alphagov/smart-answers/pull/2319
[pr-2321]: https://github.com/alphagov/smart-answers/pull/2321
[pr-2324]: https://github.com/alphagov/smart-answers/pull/2324
[Calculate Statutory Sick Pay]: https://www.gov.uk/calculate-statutory-sick-pay
[Marriage Abroad]: https://www.gov.uk/marriage-abroad

:name: week-372
:updated_at: 2016-03-31 10:28:53.435068000 +02:00
:created_at: 2016-03-31 10:28:53.435052000 +02:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:page_title: Week 372
:extension: markdown
