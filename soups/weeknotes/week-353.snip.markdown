Week 353
========

We reduced our time on [Smart Answers][] this week and did a 3:2 split of days, spending Monday & Tuesday at Aviation House and the rest of the week at GFRHQ.

## Smart Answers

### Business as usual

With Erik now on the case, we had less of this to contend with. However, we continued to work on some in-progress items where it made sense, e.g. because we had more history/context:

* Chris got the [landlord-immigration-check updated and published][pr-2012]. This (originally Smartdown) flow has been in draft status and awaiting fact-checking since we started work on the project early this year, so it was great to finally get it published.

* I spent a lot of time continuing to work on fixing a bug in calculate-statuatory-sick-pay. I thought I'd finally cracked it and submitted [a new pull request explaining the changes in detail][pr-2031], but having conferred with our contact at HMRC it turned out that I hadn't correctly understood the rules, so there's still more work to do on this.

### Converting Smartdown flows

Chris continued on his quest to banish Smartdown from the app. First of all he got the [renaming of pay-leave-for-parents question pages][pr-2018] which he'd worked on in the previous week merged.

Then, since we've stopped using multiple questions per page, he [removed the ability to display question page titles][pr-2029] from the code. These were no longer adding much/any value. This change will also mean when pay-leave-for-parents is converted from Smartdown to Ruby Smart Ansers, the regression test artefacts will be easier to compare.

### Fail fast

Unfortunately, there are a lot of places in the app which swallow exceptions and/or silently fallback to (often unhelpful/surprising) default values. We've been gradually trying to remove these. Last week I did some [work on this around question options][week-352-question-options], but some exceptions occurred in production over the weekend highlighting [some question option translations which I'd missed][pr-2020].

Chris ran into a problem where the very generic `ArgumentError` was being rescued around big blocks of code. He changed the code so it [rescued the generic exception much closer to its source and raised a much more specific application-specific exception instead][pr-2032].

### Tidying up

In preparation for splitting the question content up from the flow-wide i18n file into question-specific files, I [moved outcome templates into their own sub-directory][pr-2023].

The `Services` module was added relatively recently in [this commit][commit-34f8f7f]. It introduced a *different* way to "lookup" clients to external APIs. I wasn't sure whether this was the official GDS way, but I wanted to [make the code more consistent][pr-2025] by doing this kind of thing only one way.

### Documentation

We continued to add/improve the documentation:

* [Add docs for CI and deploying to preview][pr-2007] (implemented last week; now merged)
* [Bring docs into line with most recent practice][pr-2021] (tweaks to release note format)
* [Improve documentation for regression tests][pr-2024]

## GFR

On Wednesday Chris took the afternoon off to attend Amy's UK citizenship ceremony - congratulations Amy!

On Thursday we both did a half-day on Smart Answers, me, mainly because I needed to respond to our contact at HMRC, and Chris, because he'd taken a half-day the day before.

The rest of Thursday and the beginning of Friday was spent doing company admin. I sorted out the payment of our Corporation Tax (take note Google, Amazon, Startbucks, et al!) and picked a pub for our monthly drinks. Amongst other things, Chris did some research into whether his pension qualifies for auto-enrolment, and identifyied items in our lock-up which we might want to sell or give away.

## Music Library

On Friday, we spent much of the day working on the Music Library project in collaboration with [Hookline][]:

* Amy shared a Trello board with us and I added all the physical cards from our whiteboard.
* I added time-limited URLs for the tracks and artwork to the CSV export.
* Chris made the playlist download links work correctly in Safari.
* I tweaked the application config to force the use of SSL.
* I setup daily and (hopefully) weekly database backups on Heroku.

Anyway, that's all for now. Until next time.

-- James

[Smart Answers]: https://github.com/alphagov/smart-answers
[pr-2007]: https://github.com/alphagov/smart-answers/pull/2007
[pr-2012]: https://github.com/alphagov/smart-answers/pull/2012
[pr-2018]: https://github.com/alphagov/smart-answers/pull/2018
[pr-2020]: https://github.com/alphagov/smart-answers/pull/2020
[pr-2021]: https://github.com/alphagov/smart-answers/pull/2021
[pr-2023]: https://github.com/alphagov/smart-answers/pull/2023
[pr-2024]: https://github.com/alphagov/smart-answers/pull/2024
[pr-2025]: https://github.com/alphagov/smart-answers/pull/2025
[pr-2029]: https://github.com/alphagov/smart-answers/pull/2029
[pr-2031]: https://github.com/alphagov/smart-answers/pull/2031
[pr-2032]: https://github.com/alphagov/smart-answers/pull/2032
[week-352-question-options]: /week-352#question-options
[commit-34f8f7f]: https://github.com/alphagov/smart-answers/commit/34f8f7f4b169c8f10471edc630c7c1088cc205aa
[Hookline]: http://hookline.tv/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-10-30 12:37:00 +01:00
:updated_at: 2015-10-30 12:37:00 +01:00
:page_title: Week 353
