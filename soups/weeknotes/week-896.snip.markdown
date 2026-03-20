Week 896
========

Week beginning Monday 16th March.

## Government Digital Service 🏷️

We spent most of this week building [a demo Rails app] to suggest [Topic Taxonomy] tags for either an existing document on GOV.UK or for draft content. This built on the work [Chris L] & [Chris R] did last week which [generated embeddings] for a subset of documents on GOV.UK.

In the Rails app, we're using PostgreSQL with the [`pgvector` extension] so that we can [load the embeddings] into [a `vector` column] in the `documents` table. We then use the [`neighbor` gem] to identify documents which are similar to the document in question (or to the draft content submitted). The tags on these similar documents are then displayed as suggested tags for the document.

We used [GOV.UK Frontend] and [GOV.UK Design System] components to make the site look presentable. This was so that we could ask some of our original user research participants to play with it and see whether they think it's giving useful results. We're hosting the app on [Render], so you can [try it out] yourself if you're interested.

## CoTech Gathering 🤝

On Thursday, all three of us all attended [the CoTech Gathering] at [Space4]. The focus of the day was to start planning an event for the autumn which we can use to raise awareness of [CoTech] and its member co-operatives. As always it was lovely to catch up with fellow co-operators and compare notes on how things are going in our respective businesses. Since it was such a lovely sunny day, we adjourned to the pub a bit early and put the world to rights. ☀️

[the CoTech Gathering]: https://www.eventbrite.co.uk/e/cotech-gathering-march-2026-keeping-up-the-momentum-tickets-1981008895935
[Space4]: https://space4.tech/
[CoTech]: https://www.cotech.uk/

## Miscellaneous 🧩

Earlier in the week Chris L chatted to Ben from [Caution Your Blast] to learn a bit about them and see whether there might be things we could collaborate on in the future.

On Wednesday we were delighted to see that Szczepan and our friends at [Animorph] (now [CrossSense]) had been [awarded] the [Longitude prize on dementia] - so richly deserved! 🎉

Anyway, that's all for now. Until next time.

-- James

[a demo Rails app]: https://github.com/freerange/govuk-topic-taxonomy-suggestions-experiment
[Topic Taxonomy]: https://www.gov.uk/government/publications/govuk-topic-taxonomy-principles/govuk-taxonomy-principles
[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[generated embeddings]: /week-895#suggesting-topic-taxonomy-taxons-to-publishers
[`pgvector` extension]: https://github.com/pgvector/pgvector
[load the embeddings]: https://github.com/freerange/govuk-topic-taxonomy-suggestions-experiment/blob/b08efdaf64ddc00379c15641fd4da0d2d163e470/db/seeds.rb#L27-L49
[a `vector` column]: https://github.com/freerange/govuk-topic-taxonomy-suggestions-experiment/blob/b08efdaf64ddc00379c15641fd4da0d2d163e470/db/schema.rb#L23
[`neighbor` gem]: https://github.com/ankane/neighbor
[GOV.UK Frontend]: https://frontend.design-system.service.gov.uk/install-using-precompiled-files/#try-gov-uk-frontend-using-precompiled-files
[GOV.UK Design System]: https://design-system.service.gov.uk/
[Render]: https://render.com/
[try it out]: https://govuk-topic-taxonomy-suggestions.onrender.com
[Caution Your Blast]: https://www.cautionyourblast.com/
[Animorph]: https://www.animorph.coop/
[CrossSense]: https://crosssense.com/
[awarded]: https://www.theguardian.com/society/2026/mar/18/ai-smart-glasses-1m-prize-technology-dementia
[Longitude prize on dementia]: https://dementia.longitudeprize.org/

:name: week-896
:updated_at: 2026-03-20 10:29:12.355935000 +00:00
:created_at: 2026-03-20 10:29:12.355932000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 896
:extension: markdown
