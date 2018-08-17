Week 477
========

I returned from an extended trip to Colombia this week and in my jet-lagged state never got round to writing weeknotes. These come to you, therefore, almost 3 weeks late!

Looking back through my notes I see we spent a couple of days in the Bloomsbury Office Group office, held our monthly drinks at The Three Crowns and continued to work on our Asset Manager project for GDS.

## Asset Manager

We are trying to move the last remaining files (around 500,000 attachments) from the Whitehall publishing application to Asset Manager. In doing so we need to make sure that Whitehall no longer depends on files existing on the file system as once we've made the switch the files will leave in Amazon's cloud storage service S3.

One area we'd overlooked was the functionality to preview a CSV which is used to give an overview of data files before a user commits to downloading a potentially large file. For very large files the code was using ruby's low-level `File` API to read in a limited number of bytes of the file from disk. [We changed this to use a HTTP RANGE request instead](https://github.com/alphagov/whitehall/pull/3826).

We also had to make sure that metadata about each attachment that was previously stored in Whitehall is now stored in Asset Manager. This includes [support for parent document URLs in HTTP headers](https://github.com/alphagov/asset-manager/pull/502). In addition we [continued to add support](https://github.com/alphagov/asset-manager/pull/512) for access-limited and draft assets to Asset Manager.

Warm greetings from the future!


:name: week-477
:updated_at: 2018-03-29 15:55:35.421081000 +01:00
:created_at: 2018-03-29 15:55:35.421072000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 477
:extension: markdown
