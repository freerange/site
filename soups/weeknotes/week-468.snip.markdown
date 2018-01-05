Week 468
========

Happy New Year, everyone!

With New Year's Day on Monday, this was a short week. I was back at work on Tuesday, Chris L on Wednesday, and Chris R on Friday. Chris L & I worked from home and then Chris R & I worked at TOG Bloomsbury on Friday.

We hired the delightfully triangular meeting room again to have our weekly company meeting - this meant Chris L could participate remotely via [appear.in][] on a giant TV screen. We've done this a couple of times now and I feel as if the meetings have been very useful and productive.

## GDS - Asset Management

We continued to make steady progress on the project:

### Asset Manager

The main change was to have the app [delete the asset file from NFS when the upload to S3 succeeds](https://github.com/alphagov/asset-manager/pull/373). This reflects the fact that Asset Manager has for some time been serving assets by proxying requests to S3 rather than serving them directly from disk. This means that the disk usage on the Asset Manager part of the NFS mount should no longer grow when we add new assets which will make it easier to migrate exiting Whitehall assets to Asset Manager.

This pull request also adds a Rake task which will allow us to delete the files for all existing assets whose files have been uploaded to S3. However, we need to make some other changes to backup/sync-ing tasks before we can do this. To this end we've hatched [a plan](https://github.com/alphagov/asset-manager/issues/296#issuecomment-355349244) and prepared a number of pull requests to prepare the ground for implementing it:

* [Remove nightly off-site backup of Asset Manager assets from production NFS to S3](https://github.com/alphagov/govuk-puppet/pull/6768)
* [Remove sync-asset-manager-from-master cron job from asset slaves ](https://github.com/alphagov/govuk-puppet/pull/7016)
* [Disable nightly sync of Asset Manager assets from asset-slave-2 to S3 ](https://github.com/alphagov/govuk-puppet/pull/7019)

Along the way we [fixed a minor bug](https://github.com/alphagov/asset-manager/pull/369) where (in between an asset being virus scanned and being uploaded to S3), it was possible for Whitehall asset requests to result in a 404 Not Found rather than a redirect to a placeholder which is what happens when the asset is being virus scanned.

We also did a bunch of refactoring, tidying up, upgrading gems, and improving documentation & graphing:

* [Upgrade govuk_sidekiq to v3](https://github.com/alphagov/asset-manager/pull/365)
* [Revert addition of Rake task to update state of assets to uploaded](https://github.com/alphagov/asset-manager/pull/367)
* [Convert VirusScanner class into stateless service](https://github.com/alphagov/asset-manager/pull/372)
* [Improve documentation for manual testing in integration](https://github.com/alphagov/asset-manager/pull/374)
* [Add test coverage for scripts](https://github.com/alphagov/asset-manager/pull/375)
* [Update assets documentation](https://github.com/alphagov/govuk-developer-docs/pull/641)
* [Display Sidekiq graphs & stats on Asset Manager deployment dashboard](https://github.com/alphagov/govuk-puppet/pull/7012)

### Whitehall

Before Christmas we noticed that some hidden files on the Whitehall part of the NFS mount weren't being migrated to Asset Manager. Since *all* files on this part of the NFS mount are publicly accessible, we decided to preserve the behaviour and [ensure hidden files are migrated to Asset Manager](https://github.com/alphagov/whitehall/pull/3658) in all future migrations. We also identified a couple of these files which we'd missed in a previous migration and migrated them manually.

### Miscellaneous

We also [removed some cron job definitions from the Puppet recipes](https://github.com/alphagov/govuk-puppet/pull/7021) which someone had marked as absent some time ago, but forgotten to remove.

## GFR

Given the short week and the focus on the GDS project, we didn't do anything more than the usual company admin. However, we did make our monthly donation to charity - this month I chose [Crisis].

I should also mention that I managed to do a bit of work on a couple of side projects over the Christmas break, i.e. [AIS on SDR][] and building Linux containers from scratch. However, I'll save further explanation for [Show & Tell 40][] (yes, the big four-oh!) which we're holding next Wed, 10 Jan. Do please come along if you can - we'd love to see you!

Wishing you good health, happiness and prosperity for 2018!

-- James


[appear.in]: https://appear.in
[Crisis]: https://www.crisis.org.uk/
[AIS on SDR]: https://github.com/freerange/ais-on-sdr
[Show & Tell 40]: https://attending.io/events/gfr-show-and-tell-40

:name: week-468
:updated_at: 2018-01-05 15:11:46.689574000 +00:00
:created_at: 2018-01-05 15:11:46.689572000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 468
:extension: markdown
