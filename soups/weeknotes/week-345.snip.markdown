Week 345
========

It was [James][james-mead]'s turn to have a short week this week as he headed off for a well deserved break on Wednesday.

We spent Monday and Tuesday working on [Smart Answers][smart-answers] together. I spent Wednesday and Thursday on Smart Answers and Friday on GFR.

## Smart Answers

I finally got us [using the Analytics functionality that's available in a newer version of govuk_frontend_toolkit][pr-1907]. It wasn't until this third attempt until I realised that the Analytics functionality was provided by [Static][static] and not by the [govuk_frontend_toolkit][govuk-frontend-toolkit] Gem in the Smart Answers app!

I [updated the Smart Answers README to better describe the point at which `save_input_as` happens][pr-1914].

[James upgraded us from Ruby 2.2.2 to 2.2.3][pr-1906].

Tadas [made some requested content changes to marriage-abroad][pr-1898] and started work on [improving overseas-passports][pr-1909].

It was great to see a couple of [content][pr-1903] [changes][pr-1904] being made by one of the content designers during the week.

### Rubocop

I merged the change to [replace rubocop with govuk-lint][pr-1901] and then opened a new pull request to [add govuk-lint-ruby to the script that runs on Jenkins][pr-1911]. The `govuk-lint-ruby` command has support for checking for violations against only those lines that have been changed in the current branch. This allows us to prevent the introduction of new violations without having to first fix all existing problems.

I opened a few PRs in [Styleguides][govuk-styleguides] to remove the Rubocop rules from the repo (they now exist in [govuk-lint][govuk-lint]) and to bring the styleguides in to line with the Rubocop rules.

### Part year profit calculator

James and I spent quite a lot of Monday and Tuesday pairing on the new Smart Answer for HMRC. We decided to take a bit of a step back and started by replicating [HMRC's existing version of this Smart Answer][hmrc-part-year-profit-calculator]. This version only caters for a subset of the people that are likely to use this tool, but it should provide us with a good base on which to build the additional functionality.

I spent some time on Thursday afternoon going through this basic version of the calculator with [Liz][liz-lutgendorff]. We tweaked the wording but were generally happy with it. We then discussed the additions required to allow it to support businesses that cease trading, which is expected to be the next most common use case for this tool.

### Hand over

Although we've recently agreed to extend our contract past the initial end date of the end of September, we're still keen to start the handover process so that it's not all left until the last minute.

To that end, James and I spent about an hour on Tuesday bringing [Jenny][jenny-duckett], [David][david-singleton] and [Mark][mark-mcleod] up to speed with we've been up to.

I followed that up by spending a couple of hours on Thursday morning chatting with David and Jenny in more detail. David's worked on Smart Answers in the past and he did a great job of explaining the system to Jenny. I only really had to get involved when the discussion moved to aspects of the system that we'd either changed recently, or were planning to change in the near future.

## GFR

Most of my GFR time was spent catching up on various admin tasks. The larger two of which were writing the week notes and investigating [Automatic Enrolment][pensions-auto-enrolment].

Although GFR already pays directly into our personal pensions it's still not clear to me whether we need to set-up a new plan for automatic enrolment. Having spoken to someone at the Pensions Regulator, it sounds as though we'll be OK as long as our personal pension schemes are classified as qualifying schemes. I'm hoping this to be the case because the alternative is for GFR to automatically enrol us in a new pension scheme and for each of us to immediately opt-out!

Until next time.

-- Chris

[david-singleton]: http://dsingleton.co.uk/
[govuk-frontend-toolkit]: https://github.com/alphagov/govuk_frontend_toolkit
[govuk-lint]: https://github.com/alphagov/govuk-lint
[govuk-styleguides]: https://github.com/alphagov/styleguides
[hmrc-part-year-profit-calculator]: http://www.hmrc.gov.uk/tools/inyearfigurecalculator/
[james-mead]: /james-mead
[jenny-duckett]: https://twitter.com/jenny_duckett
[liz-lutgendorff]: https://insidegovuk.blog.gov.uk/author/liz-lutgendorff/
[mark-mcleod]: https://twitter.com/mark_mc4
[pensions-auto-enrolment]: http://www.thepensionsregulator.gov.uk/automatic-enrolment.aspx
[pr-1898]: https://github.com/alphagov/smart-answers/pull/1898
[pr-1901]: https://github.com/alphagov/smart-answers/pull/1901
[pr-1903]: https://github.com/alphagov/smart-answers/pull/1903
[pr-1904]: https://github.com/alphagov/smart-answers/pull/1904
[pr-1906]: https://github.com/alphagov/smart-answers/pull/1906
[pr-1907]: https://github.com/alphagov/smart-answers/pull/1907
[pr-1909]: https://github.com/alphagov/smart-answers/pull/1909
[pr-1911]: https://github.com/alphagov/smart-answers/pull/1911
[pr-1914]: https://github.com/alphagov/smart-answers/pull/1914
[smart-answers]: https://github.com/alphagov/smart-answers
[static]: https://github.com/alphagov/static

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-09-03 11:00:00 +01:00
:updated_at: 2015-09-03 15:00:00 +01:00
:page_title: Week 345
