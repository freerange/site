Week 453
========

We mostly focussed on the [Asset Manager][asset-manager] project and worked from [TOG][the-office-group] Bloomsbury, TOG Whitechapel, [Space4][space4] and home this week. We had our much postponed company day out on Friday and [Chris][chris-lowis] and I spent an enjoyable Saturday morning at the [Patterns for Decentralised Organising][decentralised-organising] workshop at [Newspeak House][newspeak-house].

## Asset Manager

Chris continued his work to switch Asset Manager from [Delayed Job][delayed-job] to [Sidekiq][sidekiq]. He's merged and deployed all the supporting changes which should allow him to make a seamless switch between the two queues in Asset Manager.

[James][james-mead] and I used what we learnt from our [spikes][software-spiking] last week and started making the necessary changes to allow Asset Manager to serve [Whitehall][whitehall] assets. We were reminded of how much longer it takes to do things properly versus hacking around on a spike. After some initial pairing, James went on to focus on making the required changes to Asset Manager while I spent time trying to understand a bit more about the functionality required by Whitehall.

I added some validation for the UUID attribute on Assets. I started out trying to make it read-only but ended up adding validation to ensure it's present, unique and conforms to the format stated in [RFC 4122][rfc-4122]. This felt like overkill and I was left questioning how useful it actually was. On balance, I _think_ it was useful given that it's really quite difficult to make a truly read-only attribute in [ActiveRecord-like][active-record] objects.

James, Chris and I met with [Daniel][daniel-roseman] for our regular catch-up on Wednesday. We're nearing the end of the project budget and so spent some time preparing for the meeting by trying to estimate the amount we'd get done before the budget runs out. We're hopeful that we'll be able to get all assets stored on [S3][aws-s3] and for there to be a single Asset Manager application. Unfortunately we don't think we'll get to the point of serving assets directly from S3 which is possibly/probably where the real benefit of this work lies.

## Space4

James and Chris worked from [Space4][space4] on Thursday and made use of the shiny new monitors we've purchased for our desks there.

James helped Polly make some more changes to the Space4 website. We're planning to persevere with the hand-rolled approach for now but want to make sure that Polly and anyone else involved knows that we're absolutely open to changing it if it becomes too painful to maintain.

## CoTech

We didn't find/make time to help organise the [CoTech][co-tech] Wortley Hall event this week although I see from [Taiga][taiga] that [Aaron][aaron-hirtenstein]'s made some good progress. Aaron's away on holiday now so hopefully we can contribute in his absence.

## Company day out

We had our company day out on Friday after postponing it multiple times throughout the summer. We followed the tried and tested pattern of a morning of work and an afternoon of not working in a pub.

We hired a meeting room at TOG Bloomsbury and spent the morning working on our transition to becoming a "proper" co-op. We describe ourselves and practically operate as a co-op but apparently have some things in our [Articles of Association][articles-of-association] that are incompatible with some of the [ICA's 7 Co-operative principles][ica-7-principles]. Chris has been working on this in the background for a while and he talked us through his findings. We focussed on removing uncertainty around our adoption of the [Coops UK model documents][coops-uk-model-documents] for running a [working co-op as a company limited by shares][coops-uk-worker-coop-documents]. We answered some specific questions where there were "choose your own adventure" options in the docs. Chris is going to make the changes to the docs and we've then agreed that we'll all read them to double check that we're all happy before adopting them. We're trying to do this before the CoTech retreat at Wortley Hall so that we can avoid having to explain how we're "basically a co-op".

We rewarded our morning of work by having a couple of games of bowling at [Bloomsbury Lanes][bloomsbury-lanes] followed by a late lunch and some beers at [The Lowlander Cafe][the-lowlander-cafe].

## Patterns for Decentralised Organising

Chris and I attended the [Patterns for Decentralised Organising workshop][decentralised-organising] at [Newspeak House][newspeak-house] on Saturday. It was run by Rich and Nati of [Loomio][loomio] and was roughly divided into half presentation and half workshop. The presentation contained an overview of eight patterns for decentralised organising that they've come across/evolved over time. The workshop involved each of the tables in the room to come up with a question/problem that one of us had with a group we're part of; and to see whether we could use any of the patterns we'd heard about to try to address that question/problem.

I really enjoyed the event and came away feeling pretty inspired. I think we're already following some of the patterns at GFR even if they're somewhat implicit. There are others that I think we might benefit from. I'm hoping to make some time to revisit the notes I made to compare and contrast the patterns to the way we work to see whether there's anything useful we can adopt. In the meantime, if you're interested, you can read [another person's account of the workshop][decentralised-organising-blog-post] from earlier this year.

## GFR

James had a very positive interaction with [FreeAgent][free-agent] about a discrepancy he'd noticed in his salary payments. Thanks, FreeAgent!

James also spent some time creating our own conference call number with [Twilio][twilio]. We've occasionally had problems with the call quality when using things like [Appear.in][appear-in], [Google Hangouts][google-hangouts] and [Skype][skype] and wonder whether such a conference call number might offer a better experience.

Until next time.

[aaron-hirtenstein]: https://twitter.com/zizanio64
[active-record]: https://en.wikipedia.org/wiki/Active_record_pattern
[appear-in]: https://appear.in/
[articles-of-association]: https://en.wikipedia.org/wiki/Articles_of_association
[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[bloomsbury-lanes]: http://bloomsburybowling.com/
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[coops-uk-model-documents]: https://www.uk.coop/developing-co-ops/model-governing-documents
[coops-uk-worker-coop-documents]: https://www.uk.coop/developing-co-ops/model-governing-documents/worker-co-operative-company-limited-shares
[daniel-roseman]: https://twitter.com/danielroseman
[decentralised-organising]: https://www.eventbrite.co.nz/e/patterns-for-decentralised-organising-london-tickets-36951594213#
[decentralised-organising-blog-post]: https://medium.com/enspiral-tales/5-shapes-for-training-without-being-the-boss-d8f02f137c72
[delayed-job]: https://github.com/tobi/delayed_job
[free-agent]: https://www.freeagent.com/
[google-hangouts]: https://hangouts.google.com/
[ica-7-principles]: https://ica.coop/en/what-co-operative
[james-mead]: /james-mead
[loomio]: https://www.loomio.org/
[newspeak-house]: https://www.nwspk.com/
[rfc-4122]: https://tools.ietf.org/html/rfc4122
[sidekiq]: http://sidekiq.org/
[skype]: https://www.skype.com/
[software-spiking]: https://en.wikipedia.org/wiki/Spike_(software_development)
[space4]: http://space4.tech/
[taiga]: https://taiga.io/
[the-lowlander-cafe]: http://www.lowlander.com/
[the-office-group]: http://www.theofficegroup.co.uk/
[twilio]: https://www.twilio.com/
[whitehall]: http://github.com/alphagov/whitehall

-- Chris

:name: week-454
:updated_at: 2017-09-25 10:20:15.489094000 +01:00
:created_at: 2017-09-25 10:20:15.489092000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 454
:extension: markdown
