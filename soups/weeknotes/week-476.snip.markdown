Week 476
========

Chris R spent Monday in Belfast on a short break for his birthday. Happy Birthday Chris! As the end of our current project approaches we poured most of our effort into trying to get the Asset Manager work into a state where we'd be happy to hand things over.

We've been facing a bit of a dilemma. For most of the last year on the two projects we've worked on for GDS, we've approached the development work in the same we always do. By trying to deliver small, incremental changes that add value to the system. We do this so that if circumstances change and we need to change direction, work on something different, or stop work altogether we are able to do so in the knowledge that we're leaving the system we're working on in a better state than we found it.

With the last part of the asset manager work - moving the remaining "attachment" assets from Whitehall to Asset Manager - we have struggled to find a way to break the problem into small pieces that can be delivered separately. We can't find a way to start serving these assets from Asset Manager (and by proxy, Amazon's S3 service) without migrating all of the assets, implementing the appropriate permissions system in Asset Manager, and adding functionality to ensure that when editors change the permissions of documents in Whitehall we make sure those changes are also reflected in Asset Manager. As a result, we need to do all of those things before we can finally switch over.

Whitehall is quite a complicated Rails application and the more we work on these aspects the more small, unexpected issues we find. As an example, this week I worked on [changing the CSV preview functionality](https://github.com/alphagov/whitehall/pull/3826) (for example, [this preview](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/603201/Postcode_level_gas_estimates_2015_experimental.csv/preview) of a dataset of domestic gas consumption estimates) so that it didn't rely on reading the file from disk, as shortly we hope the files will no longer be on the disk at all. It was a small change that took quite a bit of time to get right.

We're worrying a little bit about the possibility of writing a lot of code that doesn't ultimately allow us to fully switch the serving of these assets to Asset Manager and that this inconsistency might ultimately make it harder for future developers to understand the system than if we just revert back to a previous, more consistent state. We don't want to have to do that, and we'll be thinking of ways around it when we talk to GDS in Week 477.

In the meantime Chris prepared and delivered a [great, short overview](https://github.com/freerange/gds-asset-manager-presentation) of the changes we'd made to asset serving at a tech talk in the GDS Whitechapel office. There was a lot of useful discussion after the talk and we think it helped other developers to understand how things have changed.

## Other good things

On Wednesday Chris and I spoke to [Hazel Sheffield](https://twitter.com/hazelsheffield) who is writing an article about tech co-operatives and [CoTech](https://www.coops.tech/). We ended the week with our usual team meeting and retrospective - this time entirely remotely.

:name: week-476
:updated_at: 2018-03-08 21:26:20.317590000 +00:00
:created_at: 2018-03-08 21:26:20.317579000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 476
:extension: markdown
