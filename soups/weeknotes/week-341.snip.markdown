Week 341
========

Howdi, folks.

Week 341 saw [James][] returning from his sailing holiday looking suitably tanned and relaxed.

We spent Monday to Thursday working on Smart Answers. James spent Friday working on GFR while I swanned off to France for [Jase][]'s wedding.

## Smart Answers

James spent most of the week working on the new HMRC calculator. He's got a [basic version sketched out][pr-1859] that's looking good. It's proving more time-consuming than expected to try to model the policy as close as possible. We think this is really important to help us end up with code that really lends itself to future changes.

We finally got the OK to deploy a long-lived branch (the first commits date back to May 13th!) containing [changes to calculate-statory-sick-pay][pr-1777]. We'd run into a few problems trying to keep this long-lived branch up to date so it was great to finally get it merged.

Deploying the changes to calculate-statutory-sick-pay unblocked [James's branch that added regression tests to that Smart Answer][pr-1821]. This was the final Smart Answer that was waiting for regression tests so it was great to get this unblocked and merged.

Having regression tests in place allowed me to open a [Pull Request that converted calculate-statutory-sick-pay to use ERB templates][pr-1863]. This just leaves marriage-abroad using the old style YAML templates.

Now that we're mostly done with the regression tests and conversions to ERB I moved on to start refactoring some of the Smart Answers.

I [refactored additional-commodity-code to move some of the logic out of the flow and into the calculator][pr-1850].

I spent quite a bit of the week [refactoring the minimum-wage shared logic][pr-1856]. We think the result is much better: all the policy logic is contained in an object and the presentation is handled by the view which leaves the flow much simpler and easier to follow.

I fixed a problem that meant people were able to [enter 0 hours in the minimum-wage calculators][pr-1852] resulting in the outcome showing "NaN".

I indented ERB templates for register-a-birth and register-a-death now that some outstanding changes have been deployed.

I spent a short while investigating Rubocop violations. I'd love to get this added to the project and running automatically.

James [configured Mocha to disable stubbing of non-existent methods][pr-1866], which in turn involved updating a number of existing tests.

James merged his [attempted fix for the intermittent test failure][pr-1816] we're seeing on CI.

[Tadas][] got the app upgraded to Ruby 2.1.6 and continued his sterling work of handling updates to the existing Smart Answers, including overseas-passports, student-finance-forms and calculate-state-pension.

James and I finished up on Thursday by preparing some notes for the presentation we've agreed to give at the content team show and tell next week.

## GFR

Among other miscellaneous admin on Friday, James managed to improve both our website and a little app we use to integrate [Trello][] and [Harmonia][].

James improved our site by [dynamically listing our Show and Tell blog posts][e508d7e] on the [Show and Tell homepage][].

James improved our Trello/Harmonia integration by automatically [ordering adding new task cards in the correct order][7ac7990], and by [handling the case where a Harmonia-task card has been deleted when the app tries to update it][a82bbae].

Until next time.

-- Chris

[7ac7990]: https://github.com/freerange/webhooks/commit/7ac7990bb6a662be6b3345386b572388a03da0e7
[a82bbae]: https://github.com/freerange/webhooks/commit/a82bbae04b644c426d8001e24a0a2364bbca4526
[e508d7e]: https://github.com/freerange/site/commit/e508d7eeddc41615532bbbaae72e2146abe8c900
[Harmonia]: https://harmonia.io/
[James]: /james-mead
[Jase]: http://jasoncale.com/
[pr-1777]: https://github.com/alphagov/smart-answers/pull/1777
[pr-1816]: https://github.com/alphagov/smart-answers/pull/1816
[pr-1821]: https://github.com/alphagov/smart-answers/pull/1821
[pr-1850]: https://github.com/alphagov/smart-answers/pull/1850
[pr-1852]: https://github.com/alphagov/smart-answers/pull/1852
[pr-1856]: https://github.com/alphagov/smart-answers/pull/1856
[pr-1859]: https://github.com/alphagov/smart-answers/pull/1859
[pr-1863]: https://github.com/alphagov/smart-answers/pull/1863
[pr-1866]: https://github.com/alphagov/smart-answers/pull/1866
[Show and Tell homepage]: /show-and-tell-events
[Tadas]: https://github.com/tadast
[Trello]: https://trello.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-08-07 10:50:00 +01:00
:updated_at: 2015-08-07 12:40:00 +01:00
:page_title: Week 341
