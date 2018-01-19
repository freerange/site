Week 470
========

We spent the week working variously from Space4, TOG Bloomsbury and home. We've been pressing on with our work on Asset Manager for our client GDS, aware that we're coming to the end of the project. But we also found time to do a few other things too!

## Asset Manager

Our project to move all of the uploaded assets (images, PDFs, office documents of various kinds) from an NFS mounted file-system to Amazon's S3 cloud storage system is part of a broader piece of work to move all of the GOV.UK applications to AWS. The first part of this move started this year with the integration environment switching over to AWS. We rely quite heavily on the integration environment. Although we have virtual machines that can mostly recreate a production-like environment locally, there are some things that are much easier to test on integration. For example, when testing the migration of assets it is great to be able to use a full clone of production data to [catch edge cases](https://github.com/alphagov/asset-manager/pull/396). We've spent a good part of the week helping the Reliability Engineering team fix some issues with assets in integration.

We continued to migrate assets from Whitehall to Asset Manager including another 500,000 uploaded images. Migrating these assets can take many hours as we've decided to process each individual asset as if it were newly uploaded. This means virus scanning each one and uploading it to S3. We noticed that if a deployment of the Whitehall application happened while the migration was happening, the migration jobs that were on the queue would fail. This was due to them storing [too much state](https://github.com/alphagov/asset-manager/issues/414) on the location of the file on disk at the time that the job was enqueued. Once fixed, we were able to press on with the migration.

Chris and James made the most of their time together at Space4 to pair on the largest remaining unknown piece of work in the project - migrating PDF attachments from Whitehall to Asset Manager. This work is complicated by the fact that some of these attachments are subject to access control. This allows government staff to prepare draft pages with attachments ahead of time and ensure that the pages and their attachments are only available to the public when published. Whitehall currently manages this access control but when the assets themselves are served from Asset Manager we'll need to recreate those rules there. We're starting to [spike](https://en.wikipedia.org/wiki/Spike_(software_development)) a solution to shake out any problems as early as we can.

## Business Development

We're aware that we will be finishing our work at GDS in early March and are starting to think about what we work on next. This week we were visited by Annie and Cat from [The Dot Project](http://www.thedotproject.co/) one of our fellow [CoTech co-operatives](http://coops.tech/). The Dot Project are helping a group of CoTech co-ops to put together a comprehensive description of the services CoTech can offer so that we can market ourselves more effectively. They interviewed Chris and James and Space4 to help understand how Go Free Range work in particular.

We also had some interesting conversations with a couple of potential clients (one in the public sector and one charity) and put in an application through the GOV.UK Digital Marketplace to do some [coaching at the Legal Aid Agency](https://www.digitalmarketplace.service.gov.uk//digital-outcomes-and-specialists/opportunities/6003).

If you've got an interesting project that you think we might be able to help you with please [get in touch](mailto:lets@gofreerange.com).

## Finally

This week we also [published a writeup](http://gofreerange.com/show-and-tell-40) of our most recent Show and Tell event and had a beer on Thursday night with our friends at the [Outlandish](https://outlandish.com/) "Christmas" party. I started some intensive Spanish lessons - I'm hoping to have 10 hours per week of one-on-one lessons between now and the end of February.

:name: week-470
:updated_at: 2018-01-19 11:15:58.220550000 -05:00
:created_at: 2018-01-19 11:15:58.220540000 -05:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 470
:extension: markdown
