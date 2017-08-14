Week 447
========

## Unit 4

We spent a couple of days working from [Outlandish][outlandish]'s new co-working space (currently known as Unit 4) in Finsbury Park this week. [James][james-mead] and [Chris][chris-lowis] were there on Monday and the three of us were there on Wednesday. I like it. It reminds me of our old Worship Street office - even more so as [James A][james-adam] was also there last week :-) We've taken a couple of desks on a trial run to see how it works for us.

## GDS Asset Manager

We ended up with a bit of a change in direction in our [Asset Manager][asset-manager] work this week. We started the week with a plan to serve assets directly from [S3][aws-s3] but the more we worked toward it the more nervous I got. I'm concerned that we don't yet have enough information to decide on a sensible URL structure for the new asset URLs; and that trying to get that information might take quite some time. We've agreed to park the idea of serving assets directly from S3 and have decided to revisit the idea of using [nginx][nginx] to proxy asset requests to S3. This should hopefully allow us to move the assets from NFS to S3 while continuing to serve them from the existing URLs. Once the assets are on S3 we can then decide whether it's worth tackling the separate issue of serving them directly from S3.

## Show & Tell

We hosted our 35th [Show & Tell][show-and-tell] on Wednesday. It was a very wet day in London but fortunately a few folks, including a couple of new faces, braved the rain to join us. James has been assigned to write-up an account of the evening so I won't go into anymore detail here.

## Rubyforge

James published a [blog post about the death of Rubyforge][rubyforge-blog-post] and the more recent death of some redirects they'd put in place. Seeing the web decay like this makes us sad and James has offered for us to help if we can.

## Pensions and accounting

James spent some time investigating some odd looking pension payments in our [FreeAgent][free-agent] account. It sounds as though he's been able to explain most of it but still has a small discrepancy we'd like to solve.

That's all for now. Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[chris-lowis]: /chris-lowis
[free-agent]: https://www.freeagent.com/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[nginx]: https://nginx.org/
[outlandish]: http://outlandish.com/
[rubyforge-blog-post]: /broken-rubyforge-urls
[show-and-tell]: /show-and-tell-events

:name: week-447
:updated_at: 2017-08-14 13:00:56.449988000 +01:00
:created_at: 2017-08-14 13:00:56.449975000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 447
:extension: markdown
