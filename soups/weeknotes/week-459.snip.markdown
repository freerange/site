Week 459
========

Afternoon folks.

[James][james-mead], [Chris][chris-lowis] and I have spent the week working on [Asset Manager][asset-manager], [CoTech][co-tech] and [GFR][gfr] at [TOG][the-office-group] Bloomsbury, [Space4][space4] and from home.

## Asset Manager

We've finally got a subset of [Whitehall][whitehall] assets (organisation logos) being served from Asset Manager! This has taken much longer than we'd hoped but should mean we're in a good position to migrate the remaining non-attachment assets.

We've also enabled replication for all of our assets stored in [S3][aws-s3]. Although enabling replication on the bucket was relatively trivial, it was quite a bit harder to replicate the existing objects in the bucket. We ended up re-uploading all these existing objects to trigger replication. This feels a bit over the top but it wasn't obvious that there was a better way of doing it.

I was caught out by some slightly unexpected behaviour in [Sentry][sentry-io]: the way we're grouping exceptions combined with only being emailed on the first occurrence of a particular exception meant that I didn't receive an email notification I was expecting. The current set-up doesn't feel quite right but I'm not sure how to improve it.

## Sociocracy

We attended a [Sociocracy][sociocracy] training session hosted by [Pete Burden][pete-burden] at Space4 on Monday. Pete guided us through two practical examples in order to introduce us to [consent-based decision making][consent-based-decisions]. I really enjoyed learning about this particular aspect of Sociocracy and am happy to finally understand a tiny bit about this term that I've heard quite a lot in CoTech.

## CoTech

Chris started a thread on the [Solid Fund][solid-fund] Loomio group to request some help with funding the [Wortley Hall][wortley-hall] event. There's not been much discussion to date but the feedback we have had has been positive. Chris has now turned the discussion into a proposal and asked Solid Fund members to vote so we'll see what happens.

Chris and James are working with a subset of CoTech at Space4 this afternoon to continue organising the Wortley Hall event.

I think that's about all for this week.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[consent-based-decisions]: http://www.sociocracy.info/consent-versus-consensus/
[gfr]: /
[james-mead]: /james-mead
[pete-burden]: https://twitter.com/peteburden
[sentry-io]: https://sentry.io
[sociocracy]: https://en.wikipedia.org/wiki/Sociocracy
[solid-fund]: http://solidfund.coop/
[space4]: http://space4.tech
[the-office-group]: http://www.theofficegroup.co.uk/
[whitehall]: http://github.com/alphagov/whitehall
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-459
:updated_at: 2017-11-03 16:33:22.562636000 +00:00
:created_at: 2017-11-03 16:33:22.562621000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 459
:extension: markdown
