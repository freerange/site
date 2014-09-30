Week 297
========

We continued to work on the Video project for much of the week, but we had a bit of a rethink which meant backing out a bunch of changes.

Having spiked on using [Login with Amazon][] and the AWS Security Token Service's [AssumeRoleWithWebIdentity][] functionality to setup resources within the _user's_ AWS account, we decided that the resultant user experience was going to be way too complicated.

We also realised that the important aspect of the service's [USP][] is that the user can easily switch to using another service - the most obvious practical implication is that the user should own the URLs for their assets, but there's no need for them to own e.g. the AWS S3 bucket from which they are hosted.

This means that we'll need to take responsibility for all AWS charges which is something that we'd have preferred to avoid. However, it feels like the right way to go and we figure we can cross that bridge when we get to it. It may well provide the impetus we need to do some more investigation into things like the [AWS Marketplace][].

It's always disheartening to undo a bunch of development work, but we learnt a lot in implementing it and predictably it didn't take as long as we thought to remove it. And by the end of the week it felt as if we had momentum back in the project.


## Little Schemer Book Club

The 13th and final meeting of the book club took place in our office on Monday evening, [ably minuted][Little Schemer Meeting 13] by Murray.

I found it very heartening to see that the book's Scheme implementation of a Scheme interpreter closely resembled our own Ruby implementation of a Scheme interpreter. A triumphant end indeed!

The club has been re-branded as the [London Computation Club][] and is currently [on the look-out for ideas for what to do next][Little Schemer what next]. Do you fancy joining us?


## Alumni

On Wednesday, we spent an enjoyable day hanging out with the inimitable [Jason Cale][]. It was really interesting to hear about his involvement in the [Lost My Name][] personalised book project and what he's been up to more recently at [Art.com Labs][] - some really impressive stuff!

That evening we managed to meet up with a few other friends including [James Adam][], newly arrived back from Austin, Texas. It was great to catch up over a beer or two and we look forward to hearing more about his [exciting][] plans.

Ciao.

-- James


[Login with Amazon]: https://login.amazon.com/
[AssumeRoleWithWebIdentity]: http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html
[USP]: /week-295#usp
[AWS Marketplace]: https://aws.amazon.com/marketplace
[Little Schemer Meeting 13]: https://groups.google.com/forum/#!topic/london-computation-club/4WeajK29_hY
[London Computation Club]: https://groups.google.com/forum/#!forum/london-computation-club
[Little Schemer what next]: https://groups.google.com/forum/#!topic/london-computation-club/4ari5vK15Kc
[Jason Cale]: http://jasoncale.com/
[Lost My Name]: https://beta.lostmy.name/
[Art.com Labs]: http://corporate.art.com/artlabs/
[James Adam]: http://interblah.net/
[exciting]: http://exciting.io/


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-09-30 17:35:00 +01:00
:updated_at: 2014-09-30 17:35:00 +01:00
:page_title: Week 297
