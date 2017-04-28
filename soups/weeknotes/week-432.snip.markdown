Week 432
========

We worked from home a bit more than usual this week, but we still did a couple of days at [TOG Bloomsbury][] with a pitstop at Aviation House on Wednesday for a meeting with Antonia Simmons and her [Holding government to account][govuk-roadmap-2017-2018] team at [GDS][]. Chris L headed off for a well-earned holiday in Spain on Thursday.

In the last couple of weeks the co-working space at TOG has been a lot busier with a lot of people on the phone and seemingly larger teams of people resulting in more hubbub. On Wednesday afternoon I was struggling to concentrate and ended up heading home early to work on something in peace and quiet. This is a bit frustrating and we've started to talk again about looking for some office space or even setting up our own cooperatively-run co-working space.

## GDS

This week we managed to get rid of the last [couple of][pr-989] [repositories][pr-1024], the [last factory][pr-985], and the [last non-standard validator][pr-984] from the application.

We also [converted all ad-hoc scripts into Rake tasks][pr-983] so they can be run via Jenkins in order to keep a record of when they have been run, and we [added a Rake task to call some existing functionality to relocate a manual][pr-1031] which wasn't otherwise executable.

We made [a first step towards introducing a Mongo-backed Section model][pr-1035] and [started rationalising the classes in `app/exporters`][pr-1034].

As I mentioned above, we also met up with the developers from the new "Holding government to account" team to introduce ourselves and to explain what we've been doing and what our plans are. It was really pleasing to hear one of the developers, [Steve Laing][], commenting on how much easier he found working with the app compared to a couple of months ago. Progress!

## GFR

On Tuesday we met up for lunch with the talented [Nat][] and [Dan][] of [Buckley Williams][], a London-based design studio. I was really interested to hear about their business development efforts and I think they've done a really good job [show-casing their projects on their website][buckley-williams-projects]. After lunch they showed us [their lovely studio in Somerset House][somerset-house-studios] and took us on a tour of the building.

We had a relatively quiet, but enjoyable, Monthly Drinks on Wednesday evening at the [Queen's Larder][].

Anyway, that's all for now. Until next time.

-- James

[govuk-roadmap-2017-2018]: https://insidegovuk.blog.gov.uk/2017/02/13/the-2017-to-2018-gov-uk-roadmap/
[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[pr-983]: https://github.com/alphagov/manuals-publisher/pull/983
[pr-984]: https://github.com/alphagov/manuals-publisher/pull/984
[pr-985]: https://github.com/alphagov/manuals-publisher/pull/985
[pr-989]: https://github.com/alphagov/manuals-publisher/pull/989
[pr-1024]: https://github.com/alphagov/manuals-publisher/pull/1024
[pr-1031]: https://github.com/alphagov/manuals-publisher/pull/1031
[pr-1034]: https://github.com/alphagov/manuals-publisher/pull/1034
[pr-1035]: https://github.com/alphagov/manuals-publisher/pull/1035
[Steve Laing]: http://www.laingsolutions.com/
[Nat]: http://natbuckley.co.uk/
[Dan]: http://www.iamdanw.com/
[Buckley Williams]: http://buckleywilliams.com/
[buckley-williams-projects]: http://buckleywilliams.com/projects/
[somerset-house-studios]: https://www.somersethouse.org.uk/somerset-house-studios
[Queen's Larder]: http://www.queenslarder.co.uk/

:name: week-432
:updated_at: 2017-04-28 14:21:26.754470000 +01:00
:created_at: 2017-04-28 14:21:26.754461000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 432
:extension: markdown
