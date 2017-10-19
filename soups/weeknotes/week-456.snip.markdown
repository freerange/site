Week 456
========

We had a couple of days working from [The Office Group's Whitechapel](https://www.theofficegroup.co.uk/office/133-whitechapel-high-street/) co-working space this week. It's reasonably quiet, comfortable and conveniently located opposite our current client's office.

## GDS

This week we continued work on migrating Whitehall to use the Asset Manager API (and in doing so migrate the assets themselves from an NFS file system to Amazon's S3 storage). In particular we're concerned that due to the number of assets in the system, and how many requests are made to the most popular ones, we don't want to change any of the cache control headers served with the asset (and thereby invalidate downstream caches) when we move to the new system. We [fixed some issues](https://github.com/alphagov/asset-manager/pull/257) with how we're storing the data used to populate these headers and then [changed the Asset Manager API](https://github.com/alphagov/asset-manager/pull/261) to allow requests for assets to be proxied to S3.

[Whitehall](https://github.com/alphagov/whitehall) uses [Carrierwave](https://github.com/carrierwaveuploader/carrierwave), a Ruby library, to generate various resized versions of images when a new one is uploaded. In some cases up to 7 different versions of an image can be created for a single upload. When storing the versions on disk this operation was fast enough that it was allowed to happen as part of the request-response cycle on image upload. However with the move to using an API to store these Assets the process becomes slower, and potentially more brittle - any of the individual requests to store a version of an image could fail due to network connection issues between Whitehall and the API, for example. To mitigate this we [moved to making the API requests in a background worker](https://github.com/alphagov/whitehall/pull/3480). Eventually we may investigate generating these versions (potentially on-demand) in the Asset Manager API itself, but for now this decision allows us to make a smaller change. It's another example of one of the challenges of a [service-based](https://en.wikipedia.org/wiki/Service-oriented_architecture) architecture - although splitting a system into smaller pieces has several advantages for code reuse, and independent development of the pieces it introduces additional complexities for the clients of the new services.

## New projects

We'd previously decided to apply for a [new project](https://www.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists/opportunities/5122) through the Government's [Digital Marketplace](https://www.digitalmarketplace.service.gov.uk/). Having submitted an application form we were invited in to present on Wednesday afternoon. We prepared a few slides and notes - based mainly on the application we'd already submitted. We wanted to keep the presentation short to allow plenty of time for questions, it seemed to us that that would be the best way to explain our approach and how we work. We went in to the GDS Whitechapel office for 30 minutes towards the end of the day on Wednesday and were fairly pleased with how the presentation went.

## GFR

On Wednesday we hosted our [October Show and Tell](http://gofreerange.com/show-and-tell-37) in Shoreditch. It was great to see some new and some familiar faces.

There was the usual smattering of business-related work this week too. We received a note from our accountant Paul that he wouldn't be able to continue working with us - although our annual accounts, due to be submitted shortly are almost completed we were faced with a choice: finish them up ourselves or find a new accountant to help. We decided to go with the latter, and after a few emails settled on someone who offered to help. We're still finalising the agreement but they seem to be professional and helpful so far.

We're working with Aaron at [Agile Collective](https://agile.coop/) to organise the accommodation for the upcoming [CoTech retreat](https://wiki.coops.tech/wiki/Wortley_Hall_2017) at Wortley Hall. We've sent out a Google spreadsheet for CoTech members to complete and we'll then handle the invoicing and room allocation when we've got them all back. It's a bit of legwork but will hopefully it easier for everyone who's attending to concentrate on the activities at the retreat.

:name: week-456
:updated_at: 2017-10-19 13:55:20.980111000 +01:00
:created_at: 2017-10-19 13:55:20.980097000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 456
:extension: markdown
