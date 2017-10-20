Week 455
========

Chris R was away on a well-earned holiday in Italy all week. Since the [Space4 co-working space][space4] is pretty convenient for both Chris L and I, we both worked there from Monday to Thursday which was very pleasant. Our focus for the week continued to be on

[space4]: http://space4.tech

## GOV.UK Asset Management

Chris L finished off [a pull request][pr-3464] started last week by Chris R which changed the Whitehall app to save some assets to the Asset Manager app via its API. We decided to hide this functionality behind a feature flag in order to get the changes merged into the `master` branch as early as possible. Even with the feature flag switched on, the Whitehall app will still save assets to the existing NFS mount; but having the app save assets to the Asset Manager app as well means we can incrementally move towards *only* saving assets to the Asset Manager app.

Chris L then did some sterling work to [make the saving of assets to Asset Manager asynchronous][pr-3480] which unfortunately turned out to be a bit more awkward than we hoped. However, it means that requests to upload an asset to the Whitehall app won't be held up by the numerous network requests that are made to the Asset Manager API (one for each "version" of the asset), and if any of these requests fails, it will automatically be retried.

I followed up the work I'd done the previous week to store values derived from file metadata (e.g. `ETag` & `Last-Modified`) in the database. I wanted to run a Rake task to store the derived values for all the *existing* assets. I ran into a bunch of problems with my approach, but eventually got it working and run on all the environments. This means that the Asset Manager app is now setting these response headers based on values in the database rather than values directly derived from the file on the underlying NFS mount.

This in turn means we're a step closer to being able to decommission the NFS mount which is good, and that we now have a way to handle the migration of existing Whitehall assets to Asset Manager without wholesale cache invalidation.

I added some documentation about [how to use the Asset Manager in the integration environment with `curl`][pr-253]. This is something I need to do every now and again, but I keep forgetting the magic incantations.

I also finally got to the bottom of a discrepancy in the `X-Frame-Options` response headers for Whitehall vs Mainstream assets. I fixed this in a couple of pull requests, [one for asset-manager][pr-246] and a corresponding [one for govuk-puppet][pr-6602].

[pr-3464]: https://github.com/alphagov/whitehall/pull/3464
[pr-3480]: https://github.com/alphagov/whitehall/pull/3480
[pr-253]: https://github.com/alphagov/asset-manager/pull/253
[pr-246]: https://github.com/alphagov/asset-manager/pull/246
[pr-6602]: https://github.com/alphagov/govuk-puppet/pull/6602

## GFR

* We heard that we'd got through the next "round" of the selection process for [WP1455: End-to-end tests for GOV.UK publishing applications][wp1455] which meant that we've been invited to give a presentation at the GDS office next week.
* We belatedly realised that a flurry of paperwork from GDS meant that our existing contract for GOV.UK Asset Management has been extended. This is good news, because it means we'll be able to get a lot further with the work before handing over to the GOV.UK team.
* Our accountant told us that he wouldn't be able to continue working with us which is a shame, especially as our annual accounts are due soon.
* Chris L spent some time working with Aaron of [Agile Collective][] to draft an email and prepare a spreadsheet to solicit bookings for the annual [CoTech][] meet-up at [Wortley Hall][].
* I attended a presentation by [IndyCube][] at Space4 about a benefits package they've put together with the [Community trade union][] to support freelancers. One interesting aspect of the package is access to a [factoring][] service which allows you to borrow against unpaid invoices.
* Chris L & I attended the weekly Space4 lunch organised by Polly which is a very pleasant way to get acquainted with our fellow co-workers.

Until next time!

-- James

[wp1455]: https://www.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists/opportunities/5122
[Agile Collective]: https://agile.coop/about-us
[CoTech]: https://www.coops.tech/
[Wortley Hall]: http://www.wortleyhall.org.uk/
[IndyCube]: https://www.indycube.community/
[Community trade union]: http://community-tu.org/
[factoring]: https://en.wikipedia.org/wiki/Factoring_(finance)

:name: week-455
:updated_at: 2017-10-20 19:13:12.516057000 +01:00
:created_at: 2017-10-20 19:13:12.516050000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 455
:extension: markdown
