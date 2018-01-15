Week 469
========

We worked from [TOG][the-office-group] Bloomsbury, TOG Whitechapel, TOG Old Street and from home during the week. [Chris][chris-lowis] was away on holiday from Tuesday to Friday.

We spent the week focussing on our [Asset Manager][asset-manager] project. We're in the final 8 weeks of the project and we're very aware of how much is left to do!

## Asset Manager

We had our regular catch-up with GDS during the week. We've achieved quite a bit since our last catch-up but I think that was somewhat overshadowed by the amount we have left to do, and the limited time we have to do it.

[James][james-mead] managed to remove a large number of assets that were being stored on NFS and has started to investigate how we're going to support draft/public assets in Asset Manager.

Chris tried to migrate the remainder of non-database assets from [Whitehall][whitehall] to Asset Manager but ran into a problem when a deployment happened part way through.

I spent some time investigating a problem with migrating Whitehall assets containing non-ASCII characters in their filenames. It turns out that the version of [CarrierWave][carrier-wave] in Whitehall is more permissive than the version in Asset Manager.

We were further disrupted by the move of the GOV.UK integration environment to [AWS][aws]. I think the move generally went well but we noticed a couple of problems with Asset Manager that we helped fix.

## Show & Tell

We hosted our 40th [Show & Tell][show-and-tell-events] at [Forge & Co][forge-and-co] during the week. We had a good turnout and it was a really enjoyable evening. I hope to have the write-up published this week.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[aws]: https://aws.amazon.com/
[carrier-wave]: https://github.com/carrierwaveuploader/carrierwave
[chris-lowis]: /chris-lowis
[forge-and-co]: http://forgeandco.co.uk/
[james-mead]: /james-mead
[show-and-tell-events]: /show-and-tell-events
[the-office-group]: http://www.theofficegroup.co.uk/
[whitehall]: http://github.com/alphagov/whitehall

:name: week-469
:updated_at: 2018-01-15 21:07:35.986494000 +00:00
:created_at: 2018-01-15 21:07:35.986486000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 469
:extension: markdown
