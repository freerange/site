Week 443
========

Hello! I've been working from home for most of this week. We had some family staying to help with our new arrival for the first few weeks of his life, but now they've gone home we've been on our own. It's been great to spend time together but it's taken until yesterday until I've felt that I've settled into a working routine.

Working remotely has also reminded me how much I enjoy the company of my colleagues - a few minutes spent with James at [TOG East Side](https://www.theofficegroup.co.uk/office/east-side/) on Wednesday afternoon made Thursday a whole lot more productive, for example. I've been experimenting with keeping much more granular lists of the work I need to do when programming. When I am able to concentrate for long spells I can usually keep it in my head, but writing it all down seems to make it much easier to cope with interruptions[^1].

Chris and James met up on Tuesday and Wednesday and hosted a very enjoyable [Show and Tell event](http://gofreerange.com/show-and-tell-events) over at [Forge and Co](http://forgeandco.co.uk/) in Shoreditch on Wednesday night.

Our work to migrate assets on [GOV.UK](https://www.gov.uk/) to a cloud-based storage system continues. There are currently two systems that manage uploaded assets (images, PDF documents etc.) for GOV.UK. The [Asset Manager API](https://github.com/alphagov/asset-manager) provides a service that a variety of publishing applications integrate with, while the large publishing application [Whitehall](https://github.com/alphagov/whitehall) has its own asset management functionality. Both systems use the [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) library to store files on disk - with storage managed using an [NFS mount](https://en.wikipedia.org/wiki/Network_File_System).

This week we've been working on [adding support for Amazon's S3 file storage](https://github.com/alphagov/asset-manager/pull/63) to the Asset Manager API. As a first step we will upload the assets to [S3](https://aws.amazon.com/s3/) in parallel with the existing storage. This means we can work out any issues with integration without affecting the existing service. The configuration of AWS services used by GOV.UK is [managed using Terraform](https://github.com/alphagov/govuk-terraform-provisioning) so we've been getting to grips with how that works so we can add the S3 buckets and permissions that the Asset Manager API will need. Along the way we've been tidying up and updating the Asset Manager code, including [making sure the code follows the GOV.UK linting rules](https://github.com/alphagov/asset-manager/pull/66).

For the Whitehall application we have two options. Either we migrate the storage for this application from NFS to S3 directly, and then look to remove the duplication between this application and the Asset Manager API. Or, we convert Whitehall to use the Asset Manager API first even if that requires us adding some features to the API that Whitehall needs. We've been spiking the latter approach to get a feel for how much work it will be.

As we mentioned last week, we've also been helping the Smart Answers team to make some changes to how the "start" pages are rendered. Chris [finished up the work on this](https://github.com/alphagov/smart-answers/pull/3126) and with the help of the team got it merged.

[^1]: I've been using the [checkboxes feature](http://orgmode.org/manual/Checkboxes.html) in emacs [org mode](http://orgmode.org/) for lightweight todo lists.


<!-- add content here -->

:name: week-443
:updated_at: 2017-07-14 14:59:45.995030000 +01:00
:created_at: 2017-07-14 14:59:45.995020000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 443
:extension: markdown
