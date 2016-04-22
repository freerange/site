Week 377
========

James was away on a skiing course this week.

I spent most of my time working on Smart Answers. There was plenty to do for the start of the 2016/17 tax year.


## Smart Answers

### 2016/17 updates for registering births and deaths

I merged the PRs that were created last week.

* [PR 2424 - Add 2016/17 rates for register-a-birth][smart-answers-pr-2424].

* [PR 2425 - Add 2016/17 rates for register-a-death][smart-answers-pr-2425].


### 2016/17 updates for marriage-abroad

The work to update the services and fees for marriage-abroad took a lot longer than I would've liked. I'm sure I could've made these updates without changing so much of the system but I think/hope the changes leave things in a better state.

* [PR 2433 - Extract marriage-abroad fees to YAML file][smart-answers-pr-2433]. I merged Erik's changes to extract the fees to a YAML file.

* [PR 2434 - Extract marriage-abroad service data][smart-answers-pr-2434]. This results in the data about which services are available in which ceremony countries is all in a single place.

* [PR 2438 - Update marriage-abroad services][smart-answers-pr-2438]. This updates the names of the services so that they're all consistent, and updates the services offered in the various ceremony countries.

* [PR 2437 - Add 2016/17 rates for marriage-abroad][smart-answers-pr-2437]. In preparation for the 2016/17 tax year.

* [PR 2442 - Add fees table to outcome_opposite_sex_marriage_in_colombia][smart-answers-pr-2442]. Replace a hardcoded price in the template with the partial that renders the service information from the YAML file.

* [PR 2443 - Remove marriage-abroad unused service data][smart-answers-pr-2443]. Tidy up some of the service data that's not used.

These changes meant that I ended up closing the PR I opened last week:

* [PR 2413 - Rename marriage-abroad services][smart-answers-pr-2413].


### Refactoring marriage-abroad

* [PR 2444 - Refactor marriage-abroad PACS outcomes][smart-answers-pr-2444]. Replace anonymous arrays of countries with intention revealing methods.

* [PR 2448 - Avoid fixtures in WorldwideOrganisation tests][smart-answers-pr-2448]. This is in preparation for updating some fixture data we have in the repository. I want to update the data to make it easier to run a fuller set of regression tests for marriage-abroad.

* Started working on a branch to remove the duplication between the page titles we use on the marriage-abroad outcomes.


### Bug in minimum-wage calculator

* [PR 2441 - Fix minimum wage rates for people aged 24][smart-answers-pr-2441]. I fixed a bug we were alerted to by exception emails from Errbit.


## Slimmer

I created a couple of pull requests for Slimmer after encountering an exception in Smart Answers that appeared to be something we could/should handle:

* [Slimmer PR 143 - Rescue SSL errors in Skin#load_template][slimmer-pr-143]. Raise a more descriptive exception if/when we encounter an SSL error.

* [Slimmer PR 142 - Update .ruby-version to 2.1.0][slimmer-pr-142]. In an attempt to understand why I couldn't "use" the .ruby-version in the project.


## GFR

I only really did the minimum admin required to keep things ticking over this week.

-- Chris

[slimmer-pr-142]: https://github.com/alphagov/slimmer/pull/142
[slimmer-pr-143]: https://github.com/alphagov/slimmer/pull/143
[smart-answers-pr-2413]: https://github.com/alphagov/smart-answers/pull/2413
[smart-answers-pr-2424]: https://github.com/alphagov/smart-answers/pull/2424
[smart-answers-pr-2425]: https://github.com/alphagov/smart-answers/pull/2425
[smart-answers-pr-2433]: https://github.com/alphagov/smart-answers/pull/2433
[smart-answers-pr-2434]: https://github.com/alphagov/smart-answers/pull/2434
[smart-answers-pr-2437]: https://github.com/alphagov/smart-answers/pull/2437
[smart-answers-pr-2438]: https://github.com/alphagov/smart-answers/pull/2438
[smart-answers-pr-2441]: https://github.com/alphagov/smart-answers/pull/2441
[smart-answers-pr-2442]: https://github.com/alphagov/smart-answers/pull/2442
[smart-answers-pr-2443]: https://github.com/alphagov/smart-answers/pull/2443
[smart-answers-pr-2444]: https://github.com/alphagov/smart-answers/pull/2444
[smart-answers-pr-2448]: https://github.com/alphagov/smart-answers/pull/2448

:name: week-377
:updated_at: 2016-04-11 12:37:39.203475000 +10:00
:created_at: 2016-04-11 12:37:39.203448000 +10:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 377
:extension: markdown
:week_dates: Mon 4 April to Sun 10 April
