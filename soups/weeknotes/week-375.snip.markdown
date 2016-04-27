Week 375
========

## Smart Answers

[Erik][erik-eide] left the team this week. We've enjoyed working with Erik and wish him all the best for the future.


### New `on_response` block

* [PR 2408 - Introduce on_response blocks to set attributes on calculator][smart-answers-pr-2408]. [James][james-mead] added this new method to allow us to consistently store question responses on an object associated with a Smart Answer. After getting favourable feedback from a spike in [PR 2405][smart-answers-pr-2405], James reimplemented it and opened this PR.


### Rubocop

* [PR 2418 - Use auto generated Rubocop config][smart-answers-pr-2418]. We were previously using [govuk-lint-ruby][govuk-lint-ruby] with the `--diff --cached` options to prevent us from violating Rubocop rules when changing or adding code. This PR switches us to using an [automatically generated configuration file][rubocop-auto-generated-config] to ignore existing violations. We plan to fix the ignored violations in future commits.


### Fixing bugs

* [PR 2391 - Restore indexable_content behaviour for outcome nodes][smart-answers-pr-2391]. While not serious, this behaviour has been "broken" for quite some time so it's great to see it fixed.

* [PR 2400 - Avoid double render error if exception raised after render][smart-answers-pr-2400]. James discovered this problem after Rubocop complained of some unused variables. It turns out to have been quite an edge case: the problem only occurs if an exception is raised after the response for a request has been rendered.


### Documentation

James made a couple of improvements to the Smart Answers documentation:

* [PR 2392 - Consistently use question mark suffix for question node keys in docs][smart-answers-pr-2392].

* [PR 2393 - Documentation for the new-style testing approach][smart-answers-pr-2393].


### Removing unused code

James did a bit of tidying by removing some unused code:

* [PR 2402 - Remove use_legacy_data option for country_select question][smart-answers-pr-2402]

* [PR 2403 - Remove unused FCOEmbassyScraper][smart-answers-pr-2403]


### Refactoring marriage-abroad

I spent most of my time continuing to try to improve marriage-abroad.

* [PR 2394 - Remove marriage-abroad outcome_os_consular_cni precalculate blocks][smart-answers-pr-2394]. Move logic out of the flow and into the associated MarriageAbroadCalculator object.

* [PR 2409 - Rename marriage-abroad outcomes][smart-answers-pr-2409]. Consistently naming the marriage-abroad outcomes should hopefully make it clearer whether an outcome should be reused for a different purpose.

* [PR 2410 - DRY up marriage-abroad same-sex ceremony-not-possible outcomes][smart-answers-pr-2410]. I've removed one of two almost identical outcomes and asked the content team whether the change in text is valid.


### Fuller set of regression tests for marriage-abroad

* [PR 2395 - Add regression tests for all marriage-abroad countries][smart-answers-pr-2395]. While making changes to marriage-abroad it can occasionally be useful to run regression tests for all ceremony countries (rather than for the roughly 50% we use normally). I created this PR so that we could discuss making this change permanently.


### 2016/17 updates for register-a-birth

* [PR 2407 - Add 2016/17 rates for register-a-birth][smart-answers-pr-2407]. In preparation for the start of the 2016/17 tax year on 6 April.


## GFR

### IR35 Tax Assurances

We received confirmation that our tax assurances for GDS are all in order.

-- Chris

[erik-eide]: https://github.com/erikse
[govuk-lint-ruby]: https://github.com/alphagov/govuk-lint
[james-mead]: /james-mead
[rubocop-auto-generated-config]: https://github.com/bbatsov/rubocop#automatically-generated-configuration
[smart-answers-pr-2391]: https://github.com/alphagov/smart-answers/pull/2391
[smart-answers-pr-2392]: https://github.com/alphagov/smart-answers/pull/2392
[smart-answers-pr-2393]: https://github.com/alphagov/smart-answers/pull/2393
[smart-answers-pr-2394]: https://github.com/alphagov/smart-answers/pull/2394
[smart-answers-pr-2395]: https://github.com/alphagov/smart-answers/pull/2395
[smart-answers-pr-2400]: https://github.com/alphagov/smart-answers/pull/2400
[smart-answers-pr-2402]: https://github.com/alphagov/smart-answers/pull/2402
[smart-answers-pr-2403]: https://github.com/alphagov/smart-answers/pull/2403
[smart-answers-pr-2405]: https://github.com/alphagov/smart-answers/pull/2405
[smart-answers-pr-2407]: https://github.com/alphagov/smart-answers/pull/2407
[smart-answers-pr-2408]: https://github.com/alphagov/smart-answers/pull/2408
[smart-answers-pr-2409]: https://github.com/alphagov/smart-answers/pull/2409
[smart-answers-pr-2410]: https://github.com/alphagov/smart-answers/pull/2410
[smart-answers-pr-2418]: https://github.com/alphagov/smart-answers/pull/2418

:name: week-375
:updated_at: 2016-04-27 18:35:01.832533000 +12:00
:created_at: 2016-04-27 18:35:01.832526000 +12:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 375
:extension: markdown
:week_dates: Mon 21 March to Sun 27 March
