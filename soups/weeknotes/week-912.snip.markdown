Week 912
========

Week beginning Monday, 6th July 2026.

We welcomed [James] back on Tuesday after he found some (hopefully long-lasting) relief from tooth pain.

## NHS Vaccinations (Mavis)

I finished up some changes to the way we process uploads of immunisation records. Previous performance issues and worries about race conditions mean we were relying on [sidekiq-throttled] to ensure we only processed one of this type of job at a time. By performance testing and code reading I've convinced myself that we should be OK to process more of these jobs concurrently so I used the [dynamic throttling] options to create a per-team concurrency lock instead. [Craig Norford]'s Brighton Ruby talk inspired me to think about sidekiq and queuing in different ways so it was satisfying to put that into practice very quickly.

The team have been working on some changes to the process for how we decide what to work on. They're really positive, pragmatic changes and it meant that James and I were able to pick up and start working on our first user-facing (rather than backed or performance) change to Mavis - allowing [SAIS] teams to reschedule appointment bookings.

Chris continues to pair on a large refactor to support a new way of processing imported data. He's also chipping away at flakey end-to-end tests.

## Jam

I wrote an [AI policy], [Privacy policy] and [list of alternatives to jam] today. For the latter I was inspired by [Codeberg's] similar document. We've had [an open issue] for a while about how we can do our best to apply Doctorow's [principles for preventing platform decay] (aka "Enshittification"). Providing guidance on how to exit is a good first step.

James conducted a successful test purchase in production using the [Stripe Connect] integration he's been working on. The big advantage for artists on [jam] is that we can transfer the money directly to them shortly after the purchase has been made.

It's hot though, so I'm going to find a dark, air-conditioned cinema to sit in.

Have a good weekend!

-- Chris

[James]: /james-mead
[sidekiq-throttled]: https://github.com/ixti/sidekiq-throttled
[dynamic throttling]: https://github.com/ixti/sidekiq-throttled#dynamic-throttling
[Craig Norford]: https://github.com/CraigDoesCode
[SAIS]: https://www.gov.uk/government/publications/health-protection-in-schools-and-other-childcare-facilities/supporting-immunisation-programmes
[AI policy]: https://jam.coop/docs/ai-policy
[Privacy policy]: https://jam.coop/docs/privacy-policy
[list of alternatives to jam]: https://jam.coop/docs/alternatives
[Codeberg's]: https://docs.codeberg.org/getting-started/what-is-codeberg/#alternatives-to-codeberg
[an open issue]: https://github.com/freerange/jam-coop/issues/119
[principles for preventing platform decay]: https://en.wikipedia.org/wiki/Enshittification
[Stripe Connect]: https://stripe.com/gb/connect
[jam]: https://jam.coop


:name: week-912
:updated_at: 2026-07-10 16:11:32.088031468 +01:00
:created_at: 2026-07-10 16:11:32.088030596 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 912
:extension: markdown
