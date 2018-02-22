Week 474
========

With only a couple of weeks remaining on our current project with GDS, we've been working hard to get as many things done as we can. I worked remotely again this week, while James and Chris split their time between TOG offices and Space4.

## Asset Manager

I spent most of the week, on-and-off, gradually [migrating attachments](https://github.com/alphagov/asset-manager/issues/441) from Whitehall to Asset Manager. After migrating over 1.4 million files, we noticed that around 4 files were on the Whitehall disk but not in the Asset Manager database. It's still a bit of a mystery what happened to them - we had an incident where the redis instance that stored the message queue used to queue up the migration ran out of memory. Perhaps at this point a job or two was lost? Regardless, once we knew which ones were missing it was a simple fix to migrate them and all was well. This means that once we're able to serve the assets from Asset Manager we can finally delete these 500GB of files from the disks.

Before we can get there we need to be able to replicate the access control features of Whitehall in Asset Manager. In particular James worked on [updating the "draft" status of an asset](https://github.com/alphagov/whitehall/pull/3769) in Asset Manager when it is published in Whitehall while Chris made changes to Asset Manager to [restrict access to assets to certain groups of users](https://github.com/alphagov/asset-manager/pull/471).

## Other Good Things

- A potential client sent us over some documentation and code to have a look at so that we're better able to tell them whether we're the right people to take on their project. It sounds exciting so far.
- We finally sorted out the bar tab from last year's CoTech retreat at Wortley Hall.
- We received some great advice from our [accountant Dawn](http://www.goddardsolutions.co.uk/) about categorisation of business expenses, non-EU VAT and company-supported childcare.
- Chris went to an auction.
- James and Chris had lunch in [a (former) toilet](https://the-attendant.com/locations/fitzrovia/).

That's all folks!

:name: week-474
:updated_at: 2018-02-21 20:02:17.420792000 -05:00
:created_at: 2018-02-21 20:02:17.420782000 -05:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 474
:extension: markdown
