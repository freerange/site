Week 466
========

This was our last full(ish) working week of 2017!

We worked from [Space4][space4], [TOG][the-office-group] Old Street, TOG Bloomsbury and from home. Chris was off on holiday from Tuesday afternoon and James and I both took Friday off.

We focussed on [Asset Manager][asset-manager] during the week and only really did the minimum admin required to keep GFR ticking over.

[Chris][chris-lowis] and I had a video call with a couple of people from GDS during the week. While the conversation was good, the quality wasn't quite up to scratch. We were connected using three computers and were all relying on the built-in microphones which meant we suffered from quite a lot of feedback. Chris, [James][james-mead] and I have agreed that we should get/use headsets for these sort of calls in future.

## Asset Manager

The week started on a positive note when we confirmed that the long-standing [problem with missing `Content-Type` headers][asset-manager-issue-238] had finally been solved. This problem had been hanging around for a while so it was great to see that the fix we made in week 465 had done the trick.

I updated Whitehall to [redirect asset requests from gov.uk to the canonical asset host][whitehall-pr-3627]. This unblocks us to continue the migration of serving assets from Whitehall to Asset Manager. I also noticed that we hadn't uploaded some hidden files (i.e. files named with a leading dot) from Whitehall to Asset Manager. It's possible/probable that these files aren't actively being requested but we're keen to keep the same behaviour when migrating from one system to another. Removing any old/unused assets can happen later if necessary.

Chris continued to upload existing assets from Whitehall to Asset Manager so that we're ready to switch to serving assets from Asset Manager.

James [extended the state machine for Assets so that we can easily identify those that have been uploaded to S3][asset-manager-pr-364]. A number of unrelated problems (the integration environment not being restarted, Sidekiq workers not being restarted and Sidekiq queue data not being sent to Grafana) meant that this all took longer than we'd hoped. James also worked through a number of [Dependabot][dependabot] pull requests, [removed some redundant nginx config][govuk-puppet-pr-6971] for serving assets from NFS and [allowed the Fake S3 server to be used in non-development environments][asset-manager-pr-361] to help with the [publishing end-to-end tests project][publishing-e2e-tests].

I think that about covers this week.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[asset-manager-issue-238]: https://github.com/alphagov/asset-manager/issues/238
[asset-manager-pr-361]: https://github.com/alphagov/asset-manager/pull/361
[asset-manager-pr-364]: https://github.com/alphagov/asset-manager/pull/364
[chris-lowis]: /chris-lowis
[dependabot]: https://dependabot.com/
[govuk-puppet-pr-6971]: https://github.com/alphagov/govuk-puppet/pull/6971
[james-mead]: /james-mead
[space4]: http://space4.tech/
[the-office-group]: http://www.theofficegroup.co.uk/
[whitehall-pr-3627]: https://github.com/alphagov/whitehall/pull/3627
[publishing-e2e-tests]: https://github.com/alphagov/publishing-e2e-tests

:name: week-466
:updated_at: 2018-01-08 10:50:22.677199000 +00:00
:created_at: 2018-01-08 10:50:22.677182000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 466
:extension: markdown
