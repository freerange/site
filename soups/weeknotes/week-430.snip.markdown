Week 430
========

With James and I on leave for some of the week and the Good Friday
bank holiday, Week 430 was a shorter than usual working week. We
mainly continued working on the Manuals Publisher project for our
client GDS.

## GDS

We spent a couple of days squashing
a
[long-standing bug](https://github.com/alphagov/manuals-publisher/issues/861) in
Manuals Publisher. The bug had manifested itself
on
[the updates page for The Highway Code](https://www.gov.uk/guidance/the-highway-code/updates) which
was showing updates to the guidance that hadn't actually
happened. We
[tracked down](https://github.com/alphagov/manuals-publisher/issues/861#issuecomment-293857884) the
bug to a problem with how publication log entries are created when the
published date of a Manual is changed through the user interface.

Once we'd established what was causing the bug we were able to
recreate the incorrect data in our development environment. We
then
[wrote a data migration](https://github.com/alphagov/manuals-publisher/pull/973) to
fix the data in production. A pre-existing script in the repository
allowed us to republish the manual and fix the
issue. We
[converted the script](https://github.com/alphagov/manuals-publisher/pull/972) to
a Rake task so that it could be run on various environments
using [Jenkins](https://jenkins.io/). This means there is a record of
the script having been run.

It was good to get to the bottom of the issue and to see our fix
having an impact on a public-facing part of `gov.uk`. Tracking down
the root cause of the bug also seemed much easier thanks to the
refactoring work that had gone before. This has given us renewed
confidence that we're on the right track.

## GFR

We hosted our
monthly [Show and Tell](http://gofreerange.com/show-and-tell-events)
on Wednesday which was particularly well-attended.

After a brief retrospective of the week on Thursday we headed off for
a weekend of chocolate-eating.

:name: week-430
:updated_at: 2017-04-27 10:16:47.455166000 +01:00
:created_at: 2017-04-27 10:16:47.455160000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 430
:extension: markdown
