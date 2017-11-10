Week 460
========

Afternoon folks.

We worked at [Space4][space4], [TOG][the-office-group] Bloomsbury, TOG Whitechapel and from home this week and spent the majority of our time on [Asset Manager][asset-manager].

## Asset Manager

We had our regular catch-up meeting with [Daniel][daniel-roseman] on Wednesday. I was really pleased that we were able to report that we're serving a subset of [Whitehall][whitehall] assets from Asset Manager and that we have replication working for all production assets stored on [S3][aws-s3]. We've been making slower progress than we'd anticipated so finally hitting these mini-milestones feels really positive.

We've continued to make good progress on the project during the week, too.

[James][james-mead] has almost finished preparing the various pull requests required to enable syncing of assets from production to staging and integration. The Asset Manager is currently serving assets from S3 in production but from NFS in staging and integration. Getting this syncronisation in place will mean that we can serve assets from S3 in all environments, remove the assets from NFS and simplify the application.

[Chris][chris-lowis] and I have been updating Whitehall so that it saves organisation logos to Asset Manager and not to NFS. There's still some uncertainty around this and we want to be confident that it all works as expected before migrating the rest of Whitehall's non-attachments assets to Asset Manager.

## CoTech

Chris's [Solid Fund][solid-fund] proposal asking for some financial help toward our [Wortley Hall event][cotech-wortley-hall] has been accepted! This is great news and should mean that we're able to support some people/co-ops that might otherwise struggle to attend.

## GFR

We hosted our 38th [Show & Tell][show-and-tell] at [Forge & Co][forge-and-co] on Wednesday. It was a little quieter than usual but still full of interesting and entertaining demos. James has kindly volunteered to write the blog post so watch this space for that.

Chris was tasked with making our monthly donation to charity and chose [Crisis][crisis] after hearing some of our Space4 colleagues talk about it recently.

That's about all for this week as we're about to head off for our weekly company meeting and retrospective. We've skipped the last week or two so I think we have a fair bit to chat about.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[chris-lowis]: /chris-lowis
[cotech-wortley-hall]: https://wiki.coops.tech/wiki/Wortley_Hall_2017
[crisis]: https://www.crisis.org.uk/
[daniel-roseman]: https://twitter.com/danielroseman
[forge-and-co]: http://forgeandco.co.uk/
[james-mead]: /james-mead
[show-and-tell]: /show-and-tell-events
[solid-fund]: http://solidfund.coop/
[space4]: http://space4.tech
[the-office-group]: http://www.theofficegroup.co.uk/
[whitehall]: http://github.com/alphagov/whitehall

:name: week-460
:updated_at: 2017-11-10 15:56:35.066758000 +00:00
:created_at: 2017-11-10 15:56:35.066745000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 460
:extension: markdown
