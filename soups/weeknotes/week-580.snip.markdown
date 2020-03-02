Week 580
========

Week commencing Mon 24 Feb.

- [Ben][ben-griffiths] had the week off to recover from dental surgery. I hope it wasn't too traumatic/painful!

- [Chris][chris-lowis] added [Chromaticity][chromaticity] calculations to Lightbox - to give users another way of understanding the raw spectra data they upload.

- Chris spoke to a charity about a possible project. Unfortunately it sounds as though their budget isn't going to allow them to get anywhere near their ambition. I understand that this was the sort of topic discussed at the [CAST][cast]/[Catalyst][catalyst] workshop that Ben and Chris attended [last week][week-579].

- We've confirmed the date of our next quarterly away day as Mon 9 Mar. We use these events as an opportunity to step back from the day-to-day work and think about some of the longer term goals of GFR.

- I've been speaking to the product owner and project manager from [TAA][taa] to see whether we (GFR and TAA) can improve how we're working together: it's not bad but there has been some friction in some of the meetings and I'm keen to see whether we can reduce it.

## TAA

- After quite a bit of pairing with GFR, James T was able to tackle some stories on his own this week. This is awesome. Good work, James :-)

- We've moved nearly all hardcoded strings out of the app and into the [i18n][rails-i18n] config files. We're still getting to grips with [Locale][localeapp] and how best to work when there's more than one of us adding/editing translations. We've run into a few problems but I think we're getting there. We're working with a translator and I understand that they're found Locale relatively easy to use.

- We've added a new Insight that helps venues in Scotland understand their audiences based on [Mosaic Scotland][mosaic-scotland] segmentation.

- We've fixed some double counting bugs by introducing some new [Materialized Views][materialized-views] that better represent the data we want to make available. We've introduced a few of these Views now and so Chris has started exploring whether it's time to update the underlying table structure instead.

- [James][james-mead] has been refactoring in order to remove duplication and better communicate the purpose of various aspects of the system.

- We finished the week on a high with Sprint Review. Leo (product owner) did a great job of communicating the progress that has been made over the past two weeks.

[ben-griffiths]: /ben-griffiths
[cast]: https://wearecast.org.uk/
[catalyst]: https://thecatalyst.org.uk/
[chris-lowis]: /chris-lowis
[chromaticity]: https://en.wikipedia.org/wiki/Chromaticity
[james-mead]: /james-mead
[localeapp]: https://www.localeapp.com/
[materialized-views]: https://www.postgresql.org/docs/current/rules-materializedviews.html
[mosaic-scotland]: https://www.experian.co.uk/assets/marketing-services/brochures/mosaic-brochure-scotland.pdf
[rails-i18n]: https://guides.rubyonrails.org/i18n.html
[taa]: https://www.theaudienceagency.org/
[week-579]: /week-579

:name: week-580
:updated_at: 2020-03-02 10:31:27.052821000 +00:00
:created_at: 2020-03-02 10:31:27.052809000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 580
:extension: markdown
