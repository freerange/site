Week 473
========

Howdi folks.

We've continued to focus on the [Asset Manager][asset-manager] project during the week but have squeezed in a couple of [CoTech][co-tech] related things around the edges.

We've worked at [TOG][the-office-group] Whitechapel (which was _very_ cold), TOG Old Street, TOG Bloomsbury, [Space4][space4] and from home. I was off on Monday for my partner's birthday.

In some exciting news, we've got a 4th member joining us from April!

## GDS

[Chris][chris-lowis] started the week by picking up the task of migrating the [Whitehall][whitehall] attachments to Asset Manager. I'd attempted to queue  all 1.5m of them (to be migrated) on Friday last week but that failed because the queue grew too large and ate all the memory available to [Redis][redis]. Oops. We ended up migrating about 200,000 over the weekend and Chris has been shepherding the remainder through during the week.

Chris has also refactored the controllers responsible for serving assets in Whitehall. The changes mean that the code better describes reality in that we're only serving HMRC assets and attachments from Whitehall.

[James][james-mead] has been continuing to work on marking Asset Manager attachments as draft/published based on their parent document's state in Whitehall. This has been tricky but it sounds as though it's almost there!

I've been trying to explore how to add support for access limited assets to Asset Manager. At one point during the week we hoped we might get away with not having to add this support but it's become clearer that it's going to be required.

We had our regular catch-up with Daniel Roseman on Tuesday. We've only got 3 weeks left after this week so we started talking about some kind of handover. We've agreed to present an overview of the project at one of the fortnightly tech events and we'll probably try to do some more detailed handover with the team that will be responsible for the app in future.

We realised a few weeks back that there was more to do than there was money left in the budget. We acknowledged this and agreed between us that we'd invoice for the remainder of the budget and not worry about working more than the time we bill in the final few weeks. I've enjoyed not having to worry so much about recording our time in order to bill it accurately. I think this is a bit closer to what we're trying to achieve by saying that we charge for an iteration instead of per day.

## CoTech

Cat (from [The Dot Project][the-dot-project]) and Harry (from [Outlandish][outlandish]) represented CoTech in a meeting with the [Co-op group][co-op-group] on Monday. We're trying to raise awareness of CoTech and explain why the Coop should use us. Chris attended a catch-up call about this meeting on Tuesday and James and I are waiting to hear the outcomes from Chris a bit later today.

Chris helped get a [decision about the membership criteria of CoTech][loomio-membership-criteria] and updated the constitution accordingly.

Chris and I chatted to Aaron of [Agile Collective][agile-collective] about the finances for facilitation at the CoTech retreat at [Wortley Hall][wortley-hall] last year. Aaron had already done all the work - he just wanted to sanity check it with us. Hopefully he'll be able to recoup all the money in time for someone to start planning this year's event!

## Business development

We've been ramping up our business development efforts just recently given that our current contract is coming to an end, and that we're going to have another mouth to feed soon.

James and I met with a small company that specialise in discovery and service design. They're contemplating taking one of their products from alpha to beta and are looking for a development partner. It sounds as though we share a common approach and it sounds like an interesting project so it'll be interesting to see whether anything comes from it.

We're also speaking to a company later today about the possibility of taking on a small(ish) project with them.

## Social

We hosted our monthly drinks at The Old Street [Draft House][draft-house] on Wednesday.

I think that's about all for this week.

Until next time.

-- Chris

[agile-collective]: https://agile.coop/
[asset-manager]: https://github.com/alphagov/asset-manager
[chris-lowis]: /chris-lowis
[co-op-group]: https://www.co-operative.coop/
[co-tech]: https://www.coops.tech/
[draft-house]: http://www.drafthouse.co.uk/
[james-mead]: /james-mead
[loomio-membership-criteria]: https://www.loomio.org/p/bHwQzJCp/clarify-implicit-rules-around-uk-based-membership-criteria-to-allow-us-to-ratify-the-first-version-of-the-constitution
[Outlandish]: http://outlandish.com/
[redis]: https://redis.io/
[space4]: http://space4.tech/
[the-dot-project]: http://www.thedotproject.co/
[the-office-group]: http://www.theofficegroup.co.uk/
[whitehall]: http://github.com/alphagov/whitehall
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-473
:updated_at: 2018-02-09 10:22:25.858411000 +00:00
:created_at: 2018-02-09 10:22:25.858409000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 473
:extension: markdown
