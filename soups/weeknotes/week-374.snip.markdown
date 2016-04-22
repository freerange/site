Week 374
========

## Smart Answers

[Pablo][pablo-manrubia] joined the team this week. Welcome, Pablo!


### Automatically detecting next nodes

[James][james-mead] built on his work that [added support for automatically detecting next nodes for a Smart Answer][smart-answers-pr-2343]. The following pull requests incrementally improved the system until we were left with a single way of defining next nodes, and a single way of determining those next nodes for visualisation purposes.

* [PR 2368 - Use automatic next node detection in existing flows][smart-answers-pr-2368].

* [PR 2370 - Use automatic next node detection in benefit-cap-calculator][smart-answers-pr-2370]. This was a special case because of the way we were dynamically deciding which node to show next.

* [PR 2374 - Make auto-detecting permitted next nodes the default behaviour][smart-answers-pr-2374].

* [PR 2378 - Remove `permitted` option from `next_node` with block][smart-answers-pr-2378].

* [PR 2380 - Convert calls to `next_node` without a block into calls with a block][smart-answers-pr-2380]. Simplifies code by having a single syntax for specifying next nodes.


### Smaller changes

James was on a roll this week and also made a number of smaller changes:

* [PR 2360 - Prevent duplicate permitted next nodes][smart-answers-pr-2360]

* [PR 2361 - Remove incorrect permitted next node from check-uk-visa][smart-answers-pr-2361].

* [PR 2364 - Split integration test for two redundancy pay flows into two tests][smart-answers-pr-2364].

* [PR 2384 - Remove unused script templates][smart-answers-pr-2384].

* [PR 2385 - Remove unnecessary instance variable assignment in SmartAnswer::Question::Base][smart-answers-pr-2385].

* [PR 2386 - Remove unused `state` attribute from flow][smart-answers-pr-2386].


### Refactoring marriage-abroad

I continued to refactor [marriage-abroad][marriage-abroad]. I merged a couple of pull requests that had been given the thumbs up, and opened new pull requests that continue to remove `precalculate` blocks from the flow in favour of encapsulating logic in the associated calculator object:

* [PR 2352 - Remove Germany logic from marriage-abroad outcome_os_consular_cni](https://github.com/alphagov/smart-answers/pull/2352).

* [PR 2349 - Remove Japan from marriage-abroad outcome_os_consular_cni](https://github.com/alphagov/smart-answers/pull/2349).

* [PR 2382 - Remove `precalculate` blocks from the "outcome_cp_consular" outcome][smart-answers-pr-2382].

* [PR 2387 - Remove duplicate "*_path" `precalculate` blocks from three outcomes][smart-answers-pr-2387].

* Removed `precalculate` blocks from the "outcome_os_consular_cni" outcome. I finished making the code changes but was left with a few commit messages to tidy before creating a pull request.

* Started working on consistently naming marriage-abroad outcomes in the hope that it makes it easier to work on this smart answers.


## GFR

### GFR website

James added [Rake tasks to make it easier to create week notes and week links][gfr-site-pr-32]. The discussion highlighted a difference in our approach to updating metadata on our blog posts. Codifying the logic means that this shouldn't be a problem in future.


### IR35 Tax Assurances

We forwarded our completed Working Practices Questionnaire to GDS. We were under the impression these wouldn't be required but they've been requested in order to "mark your assurances compliant".


### Recording client time

We're working somewhat irregular hours at the moment. Including weekends. This makes it a little hard to fit our time in with the Fieldglass system used by GDS. After some discussion, we agreed to split our time evenly between the two of us, and between Monday to Friday. This means that the time recorded against each day in Fieldglass won't necessarily match reality but the totals remain the same, which is the important thing. James created a spreadsheet to help us convert from our hours logged in FreeAgent to those required by Fieldglass.


### Caffeine Monitor

James noticed that the mirror of [caffeine monitor][caffeine-monitor] we're hosting was down. A quick [conversation with Andy McMillan][twitter-chat-with-andy-mcmillan] and it was all back up and running.

-- Chris

[caffeine-monitor]: http://cm.buildconf.com/
[gfr-site-pr-32]: https://github.com/freerange/site/pull/32
[james-mead]: /james-mead
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[pablo-manrubia]: https://github.com/pmanrubia
[smart-answers-pr-2343]: https://github.com/alphagov/smart-answers/pull/2343
[smart-answers-pr-2360]: https://github.com/alphagov/smart-answers/pull/2360
[smart-answers-pr-2361]: https://github.com/alphagov/smart-answers/pull/2361
[smart-answers-pr-2364]: https://github.com/alphagov/smart-answers/pull/2364
[smart-answers-pr-2368]: https://github.com/alphagov/smart-answers/pull/2368
[smart-answers-pr-2370]: https://github.com/alphagov/smart-answers/pull/2370
[smart-answers-pr-2374]: https://github.com/alphagov/smart-answers/pull/2374
[smart-answers-pr-2378]: https://github.com/alphagov/smart-answers/pull/2378
[smart-answers-pr-2380]: https://github.com/alphagov/smart-answers/pull/2380
[smart-answers-pr-2382]: https://github.com/alphagov/smart-answers/pull/2382
[smart-answers-pr-2384]: https://github.com/alphagov/smart-answers/pull/2384
[smart-answers-pr-2385]: https://github.com/alphagov/smart-answers/pull/2385
[smart-answers-pr-2386]: https://github.com/alphagov/smart-answers/pull/2386
[smart-answers-pr-2387]: https://github.com/alphagov/smart-answers/pull/2387
[twitter-chat-with-andy-mcmillan]: (https://twitter.com/andymcmillan/status/710171697047949312)

:name: week-374
:updated_at: 2016-03-30 11:10:45.366171000 +13:00
:created_at: 2016-03-30 11:10:45.366146000 +13:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 374
:extension: markdown
