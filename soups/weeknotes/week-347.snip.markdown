Week 347
========

We did the usual 4:1 split of days between Smart Answers and GFR, spending Tuesday and Thursday at Aviation House and Monday, Wednesday & Friday at GFRHQ. [Tadas][] came to GFRHQ to work with us on Wednesday.

## Smart Answers

### Tax Credits Award Finalisation

This week [Chris][] has been focussing on the [Part-year profit for Tax Credits smart answer][pr-1942], but as part of that he also took some time to [simplify `Question::Date`][pr-1935]. On Monday I paired with Chris on this smart answer which he'd kindly taken over for me while I'd been on holiday.

As we've mentioned before getting the logic right for this smart answer has been a real challenge and has sucked up a lot of our time. However, it's been a really useful glimpse into the process for developing new smart answers.

### General Improvements

Early in the week I used [Rubocop's auto-correct][rubocop-autocorrect] functionality to [convert all of our Hash syntax to Ruby 1.9-style][convert-ruby-hash-syntax-commit] thereby [closing an outstanding pull request][pr-1867-comment] from [Andrew Scott][].

I then got Tadas' pull request for [enabling regression tests for landing pages][pr-1908] merged and then spent most of the week [converting landing pages in Smart Answer flows to use ERB templates][pr-1941].

Apart from fighting his way valiantly through the usual monthly changes for FCO-related smart answers, Tadas has also found time to work on a number of useful improvements:

* [Make outcome pages available in Govspeak format in the preview environment][pr-1932]. The idea is that content editors will be able to copy existing Govspeak text, modify it, and supply the modified version to developers; previously they could only easily obtain the rendered HTML, which made `diff`-ing difficult.
* [Normalise blank lines between paragraphs in Govspeak][pr-1936]. Having more than one consecutive blank line in Markdown/Govspeak generates the same HTML as having a single blank line. This change normalises the Govspeak to always use a single blank line. The main benefit will be to reduce noise in the Govspeak text stored in the regression test artefacts i.e. it should be a lot easier to review the changes.
* [Halve the time it takes to run regression tests][pr-1939]. Previously we were shelling out to `git diff` to make an assertion about each outcome page. However, if we don't need to fail fast, we can just rely on the final assertion which uses `git status --short` against each flow's directory which runs after all outcomes have been exercised.

### Handover & Refactoring

On Tuesday afternoon, Chris paired with [Jenny Duckett][] and [David Singleton][] on refactoring the [calculate-agricultural-holiday-entitlement][] smart answer. Chris had chosen this flow, because, although it may not be the most important, it demonstrates a number of the problems we're interested in fixing and it's small enough to be tractable.

The main thing we're aiming to achieve when doing these refactorings is to better separate the concerns:

* Move policy logic from flow classes & ERB templates into [PORO][] policy model classes
* Move presentational logic from policy model & flow classes into ERB templates & helper methods
* Move validation logic into policy model classes

A while ago Chris spent some time [doing this kind of refactoring][pr-1856] for the two Minimum Wage related flows (i.e. [minimum-wage-calculator-employers][] & [am-i-getting-minimum-wage][]). And we've been taking a similar approach with the new Tax Credit related flow. We're confident that these changes make the code easier to follow and easier to unit test.

Jenny's *Custom Formats* team is taking on responsibility for Smart Answers and we're keen to transfer as much knowledge as possible in person rather than just via documentation, so it was great that Jenny & David could spare the time to do this. We hope it was useful and that we can do some more in the near future.

### FCO Smart Answers

On Wednesday while Tadas was at our office we took the opportunity to have a bit of a discussion about how we might improve things for FCO smart answers (e.g. [marriage-abroad][] & [overseas-passports][]), especially given that Tadas is going to move onto another project soon. These smart answers are some of the most complicated ones and more importantly are the most frequently updated ones. We came up with a few ideas to improve matters - we hope there's enough time to put at least some of the ideas into action.

### Lunch in the Park

On Thursday we took advantage of the sunny weather to have lunch on the grass in [Lincoln's Inn Fields][lincolns-inn-fields] with Tadas and [Mo Baig][]. That afternoon Chris chatted to Liz about the Part-year profit for Tax Credits smart answer in preparation for publishing a new version for Gill at HMRC.

### Multiple Questions per Page

And at the end of the day we had a chat with [Chris Heathcote][] about [pay-leave-for-parents][] (aka Shared Parental Leave). This is the last remaining [Smartdown][] Smart Answer and we're keen to convert it to be a Ruby smart answer. However, it contains a couple of places where there are multiple questions *per page*. This is not currently supported in Ruby smart answers and so we need to work out whether the functionality is important enough to reimplement in Ruby smart answers or whether (for now at least) we can get away with splitting those pages so there is only ever one question per page.

Chris H said that as far as he could remember the questions were grouped on one page, because there were a *lot* of questions for the user to answer and there were a couple of groups of questions that were very closely related. He said that he couldn't see a problem with splitting them up onto separate pages in the short term as long as we checked that this didn't make the user experience significantly worse e.g. by using the [GDS User Research Lab][gds-user-research-lab] and/or by analysing data from analytics.

## GFR

On Tuesday I went to the [London Computation Club][] meeting where brainstormed ideas for books & papers to work on next.

On Wednesday Chris & I held our [16th Show & Tell event][show-and-tell-16].

Friday was the usual GFR admin-fest. Chris wrote-up the [notes for week 346][week-346] and I wrote up notes on the Show & Tell. Chris renewed the SSL certificate for [video.gofreerange.com][] and I started writing up these notes. Fun, fun, fun!

Until next time.

-- James

[Chris]: /chris-roos
[Jenny Duckett]: https://twitter.com/jenny_duckett
[David Singleton]: http://dsingleton.co.uk/
[Tadas]: http://codeme.lt/
[Mo Baig]: https://twitter.com/mo_baig
[lincolns-inn-fields]: https://en.wikipedia.org/wiki/Lincoln%27s_Inn_Fields
[pr-1867-comment]: https://github.com/alphagov/smart-answers/pull/1867#issuecomment-138568472
[pr-1941]: https://github.com/alphagov/smart-answers/pull/1941
[pr-1942]: https://github.com/alphagov/smart-answers/pull/1942
[pr-1935]: https://github.com/alphagov/smart-answers/pull/1935
[pr-1908]: https://github.com/alphagov/smart-answers/pull/1908
[pr-1932]: https://github.com/alphagov/smart-answers/pull/1932
[pr-1936]: https://github.com/alphagov/smart-answers/pull/1936
[pr-1939]: https://github.com/alphagov/smart-answers/pull/1939
[pr-1856]: https://github.com/alphagov/smart-answers/pull/1856
[Andrew Scott]: http://cogentia.io/
[convert-ruby-hash-syntax-commit]: https://github.com/alphagov/smart-answers/commit/4cb96a4d66521af1ec0ff130e30c1b08476634db
[rubocop-autocorrect]: https://github.com/bbatsov/rubocop/wiki/Automatic-Corrections
[PORO]: http://blog.jayfields.com/2007/10/ruby-poro.html
[calculate-agricultural-holiday-entitlement]: https://www.gov.uk/calculate-agricultural-holiday-entitlement
[am-i-getting-minimum-wage]: https://www.gov.uk/am-i-getting-minimum-wage
[minimum-wage-calculator-employers]: https://www.gov.uk/minimum-wage-calculator-employers
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[overseas-passports]: https://www.gov.uk/overseas-passports
[Chris Heathcote]: http://anti-mega.com/
[pay-leave-for-parents]: https://www.gov.uk/pay-leave-for-parents
[Smartdown]: https://github.com/alphagov/smartdown
[gds-user-research-lab]: https://gds.blog.gov.uk/2014/12/03/our-gds-user-research-lab-is-6-months-old/
[London Computation Club]: http://london.computation.club/
[show-and-tell-16]: /show-and-tell-16
[week-346]: /week-346
[video.gofreerange.com]: https://video.gofreerange.com

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-09-11 16:07:00 +01:00
:updated_at: 2015-09-14 16:34:00 +01:00
:page_title: Week 347
