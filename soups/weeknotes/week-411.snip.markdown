Week 411
========

We both seemed to struggle with motivation a bit during week 411. It's a problem we've experienced before when we don't have a primary thing we're working on, and instead spend our time working on lots of smaller tasks.

## Business development

We met Jack from GDS to talk about the practicalities of doing some more work with them. We were hoping to be able to use the [Digital Outcomes and Specialists framework][dosf] but it sounds as though that might not be feasible; or at least not in the short term.

Despite this we started going through the application process for version 2 of the framework. I ended up wasting quite a lot of time trying to compare the various contracts between the two versions before giving up. The contracts only appear to be available as PDFs which makes comparing them _way_ harder than it should/could be. At one point I found myself creating Markdown versions of the contracts to make comparison easier (I figure this would be useful to others too) before deciding that it wasn't the best use of my time.

## IFTTT

We're continuing to use [IFTTT][ifttt] to automatically create [Trello][trello] cards for a number of recurring tasks we have set-up in a Google Calendar. This week we moved the small number of recurring tasks from our main calendar to a "GFR Tasks" specific calendar. This makes things a little simpler as we no longer have to rely on being able to search for the tasks we want to create cards for.

## Collaborative Inbox

We spent quite a while experimenting with the [Google Groups Collaborative Inbox][collaborative-inbox]. We share the responsibility of handling the emails we receive and have evolved a mostly shared understanding of how to deal with them. We:

* Forward emails to Trello where it looks like there might be some work required.
* Forward emails to our main Google Group with a note to explain why we're ignoring it.
* Forward emails to our main Google Group with a note to explain why there's no action required; because it's an informational email in response to submitting our payroll, for example.

We hoped that using the Collaborative Inbox would mean that we're able to codify this process a bit which would allow us to avoid having to remember it. Unfortunately, it didn't quite work in the way we expected and actually appears to introduce more problems than it solves.

We started by trying to use the groups web interface instead of our individual mail clients. This was immediately problematic as it doesn't appear to be possible to reply to the author directly: a reply is sent to the group and cc'd to the author. We imagine this being confusing to (most) people that aren't aware that they're dealing with a mailing list.

We then switched to using a combination of the group interface and our individual mail clients. This is problematic as the status of messages in the group (e.g. marking an email as "done") isn't reflected in our email clients, meaning that we now need to look in two places to see whether we need to do something.

We ended up going back to using our email clients instead of the group interface. The only thing we're doing in addition is using moderation in the group in an attempt to reduce the number of junk/pointless emails that make it through to our email clients and the group archive.

## Hookline

We had an urgent email on Friday afternoon reporting that the playlists weren't working in the [Hookline][hookline] music app! We soon realised that it was because the credit card registered with [AWS][aws] had expired. Updating the details had us back up and running immediately. We're planning to put something in place that helps ensure we're alerted to this problem much sooner in future.

## Mocha

James and I spent some time pairing on my [pull request that refactors some of the `ClassMethod` and `AnyInstanceMethod` classes][mocha-pr-269]. This has been in progress for some time so our goal was to determine the minimum work required to get the changes merged. I came away with a list of things to do and hope to get round to them soon.

James investigated the problem described in [issue 286][mocha-issue-286] and decided to [deprecate the somewhat confusing behaviour of passing a block to the `stub` and `mock` methods][mocha-pr-290]. This all took slightly longer than expected as James first had to work around a change on Travis that [caused builds against Ruby 1.8.7 to fail][travis-issue-6963].

## Chess

James spent some time working with the chess boards he'd purchased. He'd hoped to get the chess computer wired up to a breadboard but progress was hampered when the soldering proved to be much trickier than expected.

## Social

We headed to the [Calthorpe Arms][calthorpe-arms] for our monthly drinks on Wednesday. It wasn't too busy, had a good atmosphere, served delicious beer and the food looked pretty tasty too.

Until next time.

-- Chris

[aws]: https://aws.amazon.com/
[calthorpe-arms]: http://www.rampubcompany.co.uk/visit-pubs/calthorpe-arms
[collaborative-inbox]: https://support.google.com/a/answer/167430?hl=en
[dosf]: https://www.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists/opportunities
[hookline]: http://hookline.tv/
[ifttt]: https://ifttt.com/
[mocha-issue-286]: https://github.com/freerange/mocha/issues/286
[mocha-pr-269]: https://github.com/freerange/mocha/pull/269
[mocha-pr-290]: https://github.com/freerange/mocha/pull/290
[travis-issue-6963]: https://github.com/travis-ci/travis-ci/issues/6963
[trello]: https://trello.com/

:name: week-411
:updated_at: 2016-12-08 10:27:16.377238000 +00:00
:created_at: 2016-12-08 10:27:16.377231000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 411
:extension: markdown
