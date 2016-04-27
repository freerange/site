Week 378
========

## Smart Answers

[James][james-mead] merged some of his PRs that had been reviewed while he was away:

* [PR 2391 - Restore indexable_content behaviour for outcome nodes][smart-answers-pr-2391]
* [PR 2400 - Avoid double render error if exception raised after render][smart-answers-pr-2400]
* [PR 2408 - Introduce on_response blocks to set attributes on calculator][smart-answers-pr-2408]

### Fixing auto-correctable Rubocop violations

Having merged [PR 2418 (Use auto generated Rubocop config)][smart-answers-pr-2418], James started fixing some of the violations that Rubocop can correct automatically.

### Ensuring flows can be visualised

* [PR 2457 - Add test to ensure all flows are visualisable][smart-answers-pr-2457]. This was prompted by some work to refactor benefit-cap-calculator. The refactoring changes broke the visualisation for this Smart Answer. We've previously tried quite hard to ensure the visualisations continue to work when we've been making changes, so the fact that they broke without a test failing didn't feel quite right.

### Update Worldwide organisation data

* [PR 2458 - Update worldwide location organisation data][smart-answers-pr-2458]. Having merged [PR 2448 (Avoid fixtures in WorldwideOrganisation tests)][smart-answers-pr-2448], I'm now able to update the organisation fixture data without causing any tests to fail. This will make it easier to run a full set of regression tests for marriage-abroad.

### Refactoring benefit-cap-calculator

I spent some time reviewing [PR 2452 - Refactor Benefit cap calculator (Making benefit rates and type configurable)][smart-answers-pr-2452]. James and I tend to review PRs by going through each commit and leaving comments. Unfortunately, this doesn't seem to fit with GitHub's interface and the PR ended up with lots of "comments on outdated diffs" which was a bit of a shame.

### Marriage-abroad changes for ceremonies in Sweden

I reviewed [PR 2453 - Content changes for opposite and same sex (Sweden)][smart-answers-pr-2453]. The regression test artefacts came in handy during this review as I was able to see that some outcomes had inadvertently changed. This isn't entirely surprising given how (unnecessarily) complicated the marriage-abroad logic is, despite our efforts to improve it.

I also created a new PR to illustrate an alternative approach to this PR. It felt like a relatively useful thing to do given that I'm currently remote and can't easily pair on the code.

### Refactoring marriage-abroad

I continued working on DRYing up page titles for marriage-abroad outcomes. This work seems to be exposing some inconsistencies in the current implementation that I intend to dig into further.

## GFR

### Weeknotes

I started trying to catch up with the backlog of week notes. I'm overdue to write notes for weeks 374 to 377! I started writing but got a bit overwhelmed by the idea of writing four weeks worth and struggled to make any real progress.

### Salary and dividend amounts for 2016/17

We have an annual [Harmonia][harmonia-io] task that prompts us to review our salary and dividend amounts for the coming tax year. I spent all too long trying to get my head round the new dividend tax rules. They're really not that complicated so I'm not entirely sure why I found it quite so hard.

When working on this task last year (see [Accountancy in week 325][week-325-accountancy]), James created a spreadsheet to model the rules. I knew I wanted to modify this to handle the new rules but kept getting distracted by creating different implementations (in spreadsheets and Ruby). Although it felt like a waste at the time, one of the alternative spreadsheet implementations helped me spot a problem with my changes in the main spreadsheet. The Ruby version was definitely just a (fun) waste of time though :-)

### Annual accounts

James continued to investigate us preparing our annual accounts and has contacted a few accountants to find out whether they'd be willing to check a set of accounts that we've prepared.

### Cooperative collaboration

We were recently contacted by someone who's both working with, and in the process of setting up, a cooperative. He's keen to get digital coops working together which sounds right up our street. James has arranged to meet him soon to find out more.

### PAYEing HMRC

We have to pay HMRC quarterly. Although chosen by Harmonia, I'd neglected to get to this task on time and so James kindly did it on my behalf. Thanks, James!

### Renewing gofreerange.com

Safely in our hands for another year!

-- Chris

[harmonia-io]: https://harmonia.io/
[james-mead]: /james-mead
[smart-answers-pr-2391]: https://github.com/alphagov/smart-answers/pull/2391
[smart-answers-pr-2400]: https://github.com/alphagov/smart-answers/pull/2400
[smart-answers-pr-2408]: https://github.com/alphagov/smart-answers/pull/2408
[smart-answers-pr-2418]: https://github.com/alphagov/smart-answers/pull/2418
[smart-answers-pr-2448]: https://github.com/alphagov/smart-answers/pull/2448
[smart-answers-pr-2452]: https://github.com/alphagov/smart-answers/pull/2452
[smart-answers-pr-2453]: https://github.com/alphagov/smart-answers/pull/2453
[smart-answers-pr-2457]: https://github.com/alphagov/smart-answers/pull/2457
[smart-answers-pr-2458]: https://github.com/alphagov/smart-answers/pull/2458
[week-325-accountancy]: /week-325#accountancy

:name: week-378
:updated_at: 2016-04-21 17:35:14.759746000 +10:00
:created_at: 2016-04-21 17:35:14.759716000 +10:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 378
:extension: markdown
:week_dates: Mon 11 April to Sun 17 April
