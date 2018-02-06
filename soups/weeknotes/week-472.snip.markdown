Week 472
========

Not having a permanent office has some downsides, but it certainly means we get to work in a lot of different places. This week variously from The Office Group buildings in Whitechapel and Old St, Space4 in Finsbury Park and at home. Keenly aware that we only have 4 more weeks remaining on our project with GDS we continued to work on leaving it in the best shape we can.

## Asset Management

James and Chris continued to work on the last piece of the puzzle of migrating assets from the content management system Whitehall to the Asset Manager API. Whitehall has a feature which allows assets to be uploaded and published in a draft state, where they are accessible to authorised users but not the general public, before publishing them "for real". Before we can migrate the assets completely to Asset Manager we need a mechanism for storing the permission state of the assets and a way of notifying Asset Manager when the state changes. This is complicated somewhat by the fact that assets in the draft state are served from a separate sub-domain - getting this to work involved some wrangling of SSL configurations.

Meanwhile having fully migrated all non-attachment assets to Asset Manager and ensuring that new assets are saved in "the cloud" (Amazon's S3 service) we were in a position to finally delete the assets from the file system. Some new rake tasks and a bit of help from second-line and we'd deleted over 100GB of files. Later in the week we could already see the benefits of moving fewer files around in the run-times of the scripts that synchronise changes between environments. When we finally delete the remaining 500GB of attachments we'll be able to remove or greatly simplify the code around this part of the system.

## Other Good Things

We continue to work with our colleagues at [The Dot Project](http://www.thedotproject.co/) who are putting together a cohesive overview of how [CoTech](http://coops.tech/) members can work together and jointly bid for work. Following on from the CoTech community call last week we I started to work with [Luke](http://www.aptivate.org/en/about/team/user_cv/luke_murphy/) from Aptivate and Chris from Web Architects to start working on a monthly newsletter for CoTech. We've been coordinating our work on CoTech's [gitlab instance](https://git.coop/cotech/newsletter/) and I've been enjoying learning how to use it. We finished the week with our customary company retrospective and chat.

<!-- add content here -->

:name: week-472
:updated_at: 2018-02-05 19:47:19.392154000 -05:00
:created_at: 2018-02-05 19:47:19.392144000 -05:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 472
:extension: markdown
