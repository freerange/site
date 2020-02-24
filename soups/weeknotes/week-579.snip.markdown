Week 579
========

Week beginning Mon 17 Feb.

- I continued working on Lightbox on Monday. The product owner has been asked to speak at a conference in April and he wants to be able to talk about the tool in the context of his research. We had a conversation to prioritise the backlog to ensure we focus on everything it needs to do before April. Within GFR we've started to discuss the idea of getting someone to help us with the UI/UX of this data visualisation app.

- [James][james-mead] opened an [issue in the AWS CDK repo to propose allowing scheduled tasks to run in a public subnet][aws-cdk-6312]. We're already using such a change in a couple of our projects and James is trying to improve the CDK by making the same change upstream. James has also started writing a blog post about his work on the CDK. I look forward to reading it.

- James reviewed another comprehensive [Mocha PR from Nitish][mocha-pr-431]. Nitish has become a real asset to Mocha and recently spoke at the [February meeting of LRUG][lrug-feb-2020] to describe his experience of contributing to the project. I enjoy following the discussions in these PRs: both James and Nitish are clearly putting a lot of thought and effort into communicating.

- [Ben][ben-griffiths] and [Chris][chris-lowis] attended a workshop run in association with [CAST][cast] and [Catalyst][catalyst] on Monday. The goal was to explore how tech companies might better work together to improve the state of "tech for good" projects. It sounds as though there was quite a bit of discussion but not obviously any concrete outcomes. I'm interested to see whether anything more comes from it.

- Our current contract with [The Audience Agency][taa] ends in just over a month. We've started talking to TAA and internally to work out what happens next.

## TAA project

- Started sprint 11 on Tuesday.

- I particularly enjoyed pairing with James T from TAA. We spent most of the week working on a story about better communicating an organisation's obligations when it comes to reporting to the [Arts Council of England][ace]. This involved changes to the ETL and the Rails app, digging into the data to better understand the organisations affected and culminated with changes to the production app by the end of the week.

- Fixed some more inconsistent data in one of the source systems - we were seeing duplicate entries in the mapping between surveys and organisations.

- Fought with [GitHub Actions][github-actions] until we were able to connect to a specific version of MySQL in CI.

- Switched to using [PostGIS][postgis] to do some geography calculations in the database rather than using Geokit to do them in code.

- Started translating the app into Welsh. We're using the free plan from [Locale][locale] and are working with a translator to translate the content. It's great to be able to see the translations appear in real time in development!

- Improved some of our auto-generated Insight text that helps users derive meaning from their data.

- Added basic version of a new Insight that shows an organisation's audience split into local authority areas.

[ace]: https://www.artscouncil.org.uk/
[aws-cdk-6312]: https://github.com/aws/aws-cdk/issues/6312
[ben-griffiths]: /ben-griffiths
[cast]: https://wearecast.org.uk/
[catalyst]: https://thecatalyst.org.uk/
[chris-lowis]: /chris-lowis
[github-actions]: https://github.com/features/actions
[james-mead]: /james-mead
[locale]: https://www.localeapp.com/
[lrug-feb-2020]: http://lrug.org/meetings/2020/february/
[mocha-pr-431]: https://github.com/freerange/mocha/pull/431
[postgis]: https://postgis.net/
[taa]: https://www.theaudienceagency.org/

:name: week-579
:updated_at: 2020-02-24 15:26:39.790742000 +00:00
:created_at: 2020-02-24 15:26:39.790731000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 579
:extension: markdown
