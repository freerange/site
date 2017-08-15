Week 446
========

This was another fairly full-on GDS week. We spent Monday, Tuesday and Friday working together at [TOG Bloomsbury], worked from home on Wednesday, and worked at the new GDS [Whitechapel Building] office on Thursday.

## GDS

We had our fortnightly catch-up about assets on GOV.UK with Daniel Roseman while we were in the GDS office on Thursday. We also took the opportunity to meet up with Antonia Simmons about handing over our work on Manuals Publisher that same afternoon.

This week, after a lot of back and forth, Chris R finally managed to sort out his security pass for the new GDS building; Chris L & I then followed the same steps and hope to have our passes issued in the not too distant future.

### Asset management

Early in the week, the three of us spent a couple of hours brainstorming possible solutions for storing the "mainstream" assets on S3.

Chris R & I did a bunch of performance testing of the "streaming from S3" solution for the Asset Manager application. This included running the app on EC2 to get a better understanding of the bottlenecks. We also spiked on [using Nginx's X-Accel feature to proxy from S3][nginx-x-accel-redirect-remote] rather than serve directly from the NFS mount. We then did some performance testing on this approach. Unsurprisingly, it was considerably slower than serving directly from the filesystem with the majority of the slowdown being due to the latency of fetching the asset from S3.

In the meantime Chris L did battle with [Kibana] to query the logs to understand the current pattern of requests to the Asset Manager. He also did some useful analysis of the sizes and distribution of assets on the NFS mount.

Towards the end of the week, having seen the performance disadvantages of the "stream from S3" approaches, we started doing some work on a ["redirect to S3" solution][pr-112]. With this solution the asset is downloaded from the redirection target URL on S3 and so we need to set [Cache-Control][pr-109] and [Content-Disposition][pr-111] response headers on the S3 objects themselves at upload time.

In the middle of all this Chris R somehow found time to [add some handy examples][pr-82] of how to use the Asset Manager API to the README.

## GFR

### CoTech

[Outlandish] have asked [Founders & Coders] to do some user research into improvements they want to make to CoTech and/or the [CoTech website][CoTech] to "facilitate and simplify collaboration and skills sharing on projects amongst our members". Chris L spent about 45 mins chatting to Bradley of Founders & Coders answering his questions concerning this user research.

Prompted by Polly at Outlandish, we all filled in a Doodle poll to help choose a date for a half-day planning session for the annual CoTech get together at [Wortley Hall]. Hopefully this planning session will go ahead sometime early in September.

Having signed up for a couple of desks the week before, we received our first invoice for the as yet [unnamed CoTech co-working space][name-coworking-space] on the floor in Outlandish's building. We're really looking forward to seeing how the space turns out.

At the end of the week, I wrapped up a Loomio thread which I'd opened about [decision-making within CoTech][loomio-thread]. We'd been keen to clarify how the network is going to use Loomio to make decisions. Unfortunately not many people responded and, of those that did, a number weren't happy with my proposal.

If the network is going to become effective, I think we're going to work this out somehow. Hopefully the upcoming session at Outlandish and/or the bigger meeting at Wortley Hall will provide opportunities to move this forward when we're face-to-face.

### Solid Fund

Chris R asked John Atherton of [Co-operatives UK] about how other co-ops account for contributions to [Solid Fund]. Our accountant doesn't think they are legitimate business expenses. Via their Loomio group John has asked other Solid Fund members how they account for their contributions.

### Teaching

Chris L spent the day on Wednesday researching and planning an introductory course to data science using the [R programming language]. We've always been keen to run some courses as an alternative to doing client work and Chris' ideas for this course sound excellent.

### Company meeting

We had our usual Friday afternoon session in [The Plough] and it felt like one of the more productive ones!

We finalised an ongoing discussion about whether we should have a hard-and-fast "rule" about aiming to keep 6 months of reserves in the bank. I think we agreed that the aspiration is a good one, but it should just be one of a number of factors to consider when making decisions about e.g. what projects we decide to work on (client or internal), how much business development to do, etc.

We also agreed that reserves don't have to be "in the bank", i.e. we're open to other ways of saving/investing our reserves. From my point of view, the most important outcome was that we're going to try to keep a closer eye on our finances and have added a standing item to our weekly meeting agenda to this effect.

We revisited some cards which have been kicking around in our main Trello board for some time. I think we've done a pretty good job of keeping this board under control in recent months, but a few cards seem to have slipped through the net. It was good to come up with a plan for them.

### Just visiting

[Rob D] spent most of the day working with us in the TOG co-working space and joined us in the pub after our company meeting. It was interesting to hear what he's been working on and to hear about some of his plans for the future.

Until next time.

-- James

[Whitechapel Building]: http://thewhitechapelbuilding.london/building.html
[nginx-x-accel-redirect-remote]: https://kovyrin.net/2010/07/24/nginx-fu-x-accel-redirect-remote/
[pr-82]: https://github.com/alphagov/asset-manager/pull/82
[pr-109]: https://github.com/alphagov/asset-manager/pull/109
[pr-111]: https://github.com/alphagov/asset-manager/pull/111
[pr-112]: https://github.com/alphagov/asset-manager/pull/112
[loomio-thread]: https://www.loomio.org/d/dTl08HJL/clarification-of-cotech-decision-making-process
[The Plough]: https://www.greeneking-pubs.co.uk/pub/plough-bloomsbury/m2605/
[TOG Bloomsbury]: http://www.theofficegroup.co.uk/
[Kibana]: https://www.elastic.co/products/kibana
[Outlandish]: http://outlandish.com/
[Founders & Coders]: https://foundersandcoders.com/
[CoTech]: https://www.coops.tech/
[Solid Fund]: http://solidfund.coop/
[Rob D]: https://twitter.com/robd
[name-coworking-space]: https://community.coops.tech/t/name-the-new-working-events-space-prizes-to-be-won/310
[Wortley Hall]: http://www.wortleyhall.org.uk/
[Co-operatives UK]: https://www.uk.coop/
[R programming language]: https://www.r-project.org/

:name: week-446
:updated_at: 2017-08-15 09:21:52.875858000 +01:00
:created_at: 2017-08-15 09:21:52.875851000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 446
:extension: markdown
