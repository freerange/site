Week 355
========

We did another 3-day week on [Smart Answers][smart-answers] from Monday to Wednesday, although [Chris][] also spent Thursday morning finishing up some work. We spent Tuesday & Wednesday at Aviation House, but the rest of the week at GFRHQ.

## Smart Answers

### Business as usual

I again spent most of the week working on the [fixes for the calculate-statutory-sick-pay flow][pr-2051] so that it now takes the working pattern into account for the linked period of sickness as well as the current period of sickness.

I was very pleased to get this task finished, but, now that I have a good understanding of the policy, I feel as if it's worth spending some time refactoring the code so that it better communicates its intention. Although this wouldn't be improving the app across the board, hopefully we can use this as a bit of an examplar flow in our documentation.

In the meantime [Erik][erik-eide] made good progress on some other changes:

* [Remove space between number and weight in towing rules][pr-2046]
* [Updates date_of_year function to calculate differences between dates][pr-2041]
* [Add missing calculated value in paternity calculator][pr-2058]

The latter fixed a problem which had caused a bunch of `I18n::MissingInterpolationArgument` exceptions in production and a rollback of the deployment. It took us a while to work out why the regression tests hadn't caught this, but Erik eventually got to the bottom of it and we discussed some ways we could avoid the same thing happening in the future.

Erik also very kindly deployed a [big batch of changes][release-2864] on Friday when we were at GFRHQ.

### Improvements

At the moment there are a lot of different ways to use the Smart Answers DSL. We're a bit suspicious that the DSL is more trouble than it's worth - in particular a flow ends up consisting of a lot of anonymous blocks with an unintuitive and often surprising execution order. The code in these blocks is also hard to test.

In the long run, we imagine that the DSL might go away, but in the shorter term we're determined to simplify it. In particular, we want to avoid having many different ways to achieve the same thing. To this end, Chris managed to [remove the multiple-choice option shortcut approach][pr-2056].

As we've mentioned previously we're trying to gradually introduce more places where the code should fail fast if things aren't explicitly defined as expected. Chris made some progress on this by making the `SmartAnswer::ErbRenderer` [fail fast if the ERB template is missing][pr-2055].

### Tidying up

Having [removed the last Smartdown flow][pr-2035] last week, Chris was able to [remove all the Smartdown-related code][pr-2050]. This is something we've been working towards for a long time, so it feels like a big step forward in simplifying the code.

He also did some tidying up of the remaining test fixture flows:

* [Consistently use I18nTestHelper][pr-2047]
* [Move smart answer test flow and locales to single directory][pr-2054]

### Documentation

Chris also made a good start on writing an [Architecture Decision Record][] for the [removal of Smartdown][pr-2053]. This is something that [David Singleton][] has encouraged us to do so that developers who come to work on the project after we've gone can understand why we made this decision.

### Github workflow

We continued to feel some pain with the mis-match between how we want to use `git` and how GitHub seems to expect you to use `git`. Until recently we've been rebasing branches against `master` and force-pushing just before merging, but (although this means a nice tidy history) Chris noticed that this meant "losing" any comments on the commits in the pull request (PR).

So he's been experimenting with creating a new PR at the point he's ready to merge. This means he closes the original PR and links to it from the new PR. He also deletes the original branch on GitHub and pushes the rebased branch to create the new PR. The advantage of doing this is that all the discussion is still available on the closed PR. The downside is the additional work involved and double the number of PRs.

## GFR

We caught up with the usual weekly company admin on Thursday. The only thing I can think of that is of any vague interest is that I found out that my existing stakeholder pension doesn't qualify for [auto-enrolment][]. However, we haven't yet worked out what this means we need to do, given that Chris' pension *does* qualify!

Inevitably and frustratingly there's lots of information on the web about auto-enrolment for limited companies with a single director/shareholder/employee, but nothing very definitive for a company like ours.

## Hookline

On Friday we were joined in our office by [Amy][] and [Rich Holman][] to spend a pleasant day working on our collaboration with [Hookline][].

We spent a little while at the beginning of the day discussing where we'd got and what we should work on next. It was really encouraging to hear that Rachel has been using the web app to build private playlist pages in order to respond to briefs. Also that Amy has replaced many of the public playlists on the Wordpress site with pages generated by the backend app.

I did a bit of work to surface the data Amy & Rich needed to allow filtering of playlists by version-type i.e. instrumental, remix, etc. Then I made some changes to the admin interface for creating and editing a playlist with the idea that it would make it easier to allow the user to manually control the order of the tracks.

Chris spent most of the day changing the naming of the files we store on S3 to use our internal unique key rather than the combination of catalogue number, artist name & track title that we had been using. This should mean that we won't need to rename the files on S3 when someone edits any of the aforementioned fields.

Amy and Rich spent the day working on the front-end app. However, I had to leave a bit early so I didn't hear what they'd been working on.

At the end of the day, Chris, Amy & Rich adjourned to the [Old Kings Head][] for a well-deserved beverage. They bumped into [Ben G][] who joined them for a cheeky pint.

Anyway, that's all folks.

-- James


[smart-answers]: https://github.com/alphagov/smart-answers
[Chris]: /chris-roos
[erik-eide]: https://github.com/erik-eide
[release-2864]: https://github.com/alphagov/smart-answers/releases/tag/release_2864
[Architecture Decision Record]: http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions
[David Singleton]: http://dsingleton.co.uk/
[Amy]: http://amyeee.com/
[Rich Holman]: http://www.dogwonder.co.uk/
[Hookline]: [Hookline]: http://hookline.tv/
[Old Kings Head]: http://www.fancyapint.com/Pub/london/old-kings-head/437
[Ben G]: https://twitter.com/beng
[auto-enrolment]: http://www.thepensionsregulator.gov.uk/en/employers

[pr-2051]: https://github.com/alphagov/smart-answers/pull/2051
[pr-2046]: https://github.com/alphagov/smart-answers/pull/2046
[pr-2041]: https://github.com/alphagov/smart-answers/pull/2041
[pr-2058]: https://github.com/alphagov/smart-answers/pull/2058
[pr-2056]: https://github.com/alphagov/smart-answers/pull/2056
[pr-2055]: https://github.com/alphagov/smart-answers/pull/2055
[pr-2035]: https://github.com/alphagov/smart-answers/pull/2035
[pr-2050]: https://github.com/alphagov/smart-answers/pull/2050
[pr-2047]: https://github.com/alphagov/smart-answers/pull/2047
[pr-2054]: https://github.com/alphagov/smart-answers/pull/2054
[pr-2053]: https://github.com/alphagov/smart-answers/pull/2053

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-11-10 17:33:00 +00:00
:updated_at: 2015-11-10 17:33:00 +00:00
:page_title: Week 355
