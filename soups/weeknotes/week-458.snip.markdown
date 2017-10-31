Week 458
========

We continued working on the [Asset Management][asset-manager] project for [GDS][gds] this week; working from home, [TOG][the-office-group] Bloomsbury and [Space4][space4].

[James][james-mead] was away on Thursday and Friday to visit the Isle of Wight.

## Asset Manager

[Chris][chris-lowis] and I spent the week working on serving a subset of [Whitehall][whitehall] assets from Asset Manager. James continued to work on decommissioning the use of NFS for storing Asset Manager assets.

We decided to descope the work of serving Whitehall assets from Asset Manager by focussing on organisation logos. We'd initially descoped the work to focus on non-access-controlled assets but that was still proving quite large. Descoping further should help us get an end-to-end slice working earlier and we'll be able to use what we learn to help migrate the remaining assets.

Chris and I paired on tracking down a hairy bug in our new [CarrierWave][carrier-wave] File object where, even after removing the file, it was still reported as being present. The fix was simply adding a method to our object but the tangle of code made it very hard to find. I wonder whether it'd be possible for CarrierWave to have some kind of tests that we could use to check whether our object satisfies the interface it's expecting.

Fixing the hairy CarrierWave problem means that we now have Whitehall organisation logos being uploaded to and deleted from Asset Manager. All that remains is to upload existing organisation logos and switch the [Nginx][nginx] routing so that they're being served from Asset Manager instead of Whitehall. Chris worked on uploading existing logos and I made the necessary Nginx and Whitehall changes so that we're ready to switch once the existing logos have been uploaded.

James enabled [cross-region replication][s3-replication] on our production S3 asset bucket. We're currently using [Duplicity][duplicity] to back-up our production assets from NFS to S3 so switching to AWS native technology will allow us to remove another moving part from the GOV.UK stack.

James has also started investigating how to copy the production assets to both staging and integration overnight to mirror the current rsync'ing of assets between environments.

We arrived one morning to learn that one of our Nginx changes contained an error that prevented Nginx from starting! It was discovered because the integration environment is rebooted every night and Nginx failed to start when the machines came up. We found and fixed the problem quite quickly and James updated the puppet scripts so that they'll fail fast if they detect a problem with the Nginx config in future.

We had our regular catch-up meeting with [Daniel][daniel-roseman] on Wednesday.

## Annual accounts

After a successful call with our new accountant, during which they answered all the questions we had about the accounts, we were able to get them submitted and our corporation tax paid. It was a relief to get this all done given the deadline is the end of October!

## Changing our Articles of Association

James continued to read through the new [Articles of Association][articles-of-association] that we discussed in [week 453][week-453]. We're still hoping to have adopted them by the time we attend the [CoTech][co-tech] retreat at [Wortley Hall][wortley-hall].

## Space4 launch

We combined our regular monthly drinks with the Space4 launch party on Thursday. It was really well attended and the handful of lightning talks I heard were all really good. [Tom W][tom-ward] joined us and so we ended up heading off early to a local pub for a bit of a catch-up before heading home.

## CoTech

Chris drafted a proposal to request some money from [Solid Fund][solid-fund] to help with funding the CoTech retreat to Wortley Hall and James posted [a summary of our CoTech involvement][co-tech-participation] to a thread on the discussion forum.

## Cashflow

James investigated why our simple cashflow calculator started reporting that we had an additional two months reserves in the bank from one month to the next. While an additional two months sounds positive we were worried that the jump meant that something wasn't quite right in our calculations. We don't completely understand the reason for the jump but we're fairly confident that the results are correct. We've agreed to pair on this task in future to try to ensure we're all doing it in the same way.

## Website

James updated our website to avoid exceptions we were seeing when a certain crawler was requesting our content as `text/plain`. The current fix is to [reject these requests with a 406 Not Acceptable][freerange-site-9abe7ef] response but we wonder whether simply returning HTML in this case would be better.

That's all for this week.

-- Chris

[articles-of-association]: https://en.wikipedia.org/wiki/Articles_of_association
[asset-manager]: https://github.com/alphagov/asset-manager
[carrier-wave]: https://github.com/carrierwaveuploader/carrierwave
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[co-tech-participation]: https://community.coops.tech/t/what-has-cotech-done-nov-2016-nov-2017/379/5
[daniel-roseman]: https://twitter.com/danielroseman
[duplicity]: http://duplicity.nongnu.org/
[freerange-site-9abe7ef]: https://github.com/freerange/site/commit/9abe7ef719e375bb9cabf96f29f861b7b6bf0b4a
[gds]: https://gds.blog.gov.uk/
[james-mead]: /james-mead
[nginx]: https://nginx.org/
[s3-replication]: http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html
[solid-fund]: http://solidfund.coop/
[space4]: http://space4.tech
[the-office-group]: http://www.theofficegroup.co.uk/
[tom-ward]: https://twitter.com/tomafro
[week-453]: /week-453
[whitehall]: http://github.com/alphagov/whitehall
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-458
:updated_at: 2017-10-30 10:25:01.259309000 +00:00
:created_at: 2017-10-30 10:25:01.259306000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 458
:extension: markdown
