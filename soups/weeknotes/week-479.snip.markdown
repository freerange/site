Week 479
========

This week we were mostly finishing up our work on the Asset Manager project. We took some time away from that to do a little bit of office-hunting and to do our quarterly "away-day".

## Asset Management

We were mostly preparing to switch serving attachments from Whitehall to Asset Manager by:

- [Refactoring the related controllers](https://github.com/alphagov/whitehall/pull/3881)
- [Writing a worker](https://github.com/alphagov/whitehall/pull/3892) to handle the migration of metadata
- [Landing a few changes](https://github.com/alphagov/whitehall/pull/3903) from a long-running branch onto `master`
- [Dealing](https://github.com/alphagov/whitehall/pull/3880) [with](https://github.com/alphagov/asset-manager/pull/528) [edge cases](https://github.com/alphagov/asset-manager/pull/531) present in the 500,000 assets we're attempting to migrate.

By the end of the week we'd reached the point where we could start running the migration to make sure that all of the assets in Asset Manager had the same draft, redirect and access-limited metadata as they do in Whitehall. Once we've ironed out all the inconsistencies we'll finally make a change to the nginx server and start serving traffic.

## Office Hunting

We have a new member joining in early April which will take Go Free Range up to 4 permanent members. We're currently using co-working membership at The Office Group. While we've been happy with the flexibility this offers there's a couple of downsides that will get worse when we're 4. Firstly, it's quite difficult to find 4 desks next to each other in our preferred co-working space. This is understandable, they're really designed for individual workers not teams. Secondly, at £375 per desk per month it starts to look financially more sensible to look for some permanent desks somewhere.

We certainly miss having our own office - we used to be able to host people for short stays working with us, have clients over, and host evening events in our old place on Worship St. With rents steadily climbing though, this may not be possible again.

This week we took a look at some sub-let desks in a spacious building in Hoxton. We're going to keep looking for something flexible and keep thinking about a slightly more permanent home for the future.

## Away Day

We like to get away from the day-to-day work once every 3 months ago and talk about something a bit higher level. This time we spent a couple of hours in a The Office Group meeting room near Bank station, before having a long lunch. On the agenda was our pay and renumeration for the next financial year, our on-going work to change our articles of association and become a legit co-operative and our hopes and aspirations for the coming year with a new member joining.

A particularly interesting discussion was around time-tracking and holidays. We have an informal "take as many days off as you need" policy, but we're a little worried that we're not taking the breaks we need when we're busy, and that without a firmer policy we might be feeling guilty taking time off when others are not. We discussed tracking time worked and time off more closely but felt unsure about the unintended consequences of doing that. We decided to have a standing agenda item in our weekly meetings where we talk about time worked, time taken off, what our work-life balance is like and anything we can change to improve it. We hope that by forcing ourselves to discuss this more regularly it'll be easier to make small changes to improve things.

'Til next time!

<!-- add content here -->

:name: week-479
:updated_at: 2018-03-29 15:42:39.477142000 +01:00
:created_at: 2018-03-29 15:42:39.477131000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 479
:extension: markdown
