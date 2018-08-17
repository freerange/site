Week 431
========

After enjoying the Easter bank holiday Monday we got stuck in to some
work for our client GDS before taking Friday out for a self-organised
"away day".

## GDS

We continued our work simplifying the Manuals Publisher application. In particular we:

- [Created some namespaces](https://github.com/alphagov/manuals-publisher/pull/980) for
  the
  various
  [service objects](http://stevelorek.com/service-objects.html) making
  them easier to find in the file system and call from other parts of
  the code.
- [Removed remaining calls](https://github.com/alphagov/manuals-publisher/pull/979) to
  an older version of the API that the application uses to publish
  manuals to
  the [content store](https://github.com/alphagov/content-store).
- Removed some more non-standard parts of the code including
  the
  [ManualBuilder](https://github.com/alphagov/manuals-publisher/pull/978),
  [SectionBuilder](https://github.com/alphagov/manuals-publisher/pull/977) and
  [ManualRepository](https://github.com/alphagov/manuals-publisher/pull/968).

We also tracked down
and [fixed](https://github.com/alphagov/manuals-publisher/pull/976)
the source of some intermittent build failures in the continuous
integration environment that were caused by us incorrectly specifying
which types
of
[build agent](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) should
be used when building the project on Jenkins.

## GFR

On Friday we took some time out of our other work to hold an "away
day". We try to organise one of these every three months and they
provide us with an opportunity to think about where we are going as an
organisation and what we want to achieve. We also use them as an
excuse to have some fun as a team.

We started the day in a meeting room
at
[The Office Group in Kings Cross](http://www.theofficegroup.co.uk/office/the-stanley-building/). I'd
prepared an activity based on
a
[blog post](https://www.linkedin.com/pulse/discover-your-organizations-purpose-half-day-wendy-van-der-klein?trk=prof-post) by
Wendy van der Klein to help us think about the purpose of Go Free
Range and what working for it means to us. We talked about the history
of our company and tried to put ourselves in "the empty chair" - a
technique for giving a voice to the company itself rather than
reflecting our own thoughts. We collected together the results of
these exercises and looked for common sentiments that we all
shared. We're still reflecting on how best to present these, but it
showed us that we all consider the cooperation, mutual respect and
opportunity to learn and develop as key things that make us who we are
as a group.

It felt like a useful exercise, but one where we may have benefited
more from having an external facilitator to guide us through.

We then had a great couple of hours
at [ClueQuest](https://cluequest.co.uk/) an
"[escape room](https://en.wikipedia.org/wiki/Escape_room)" near Kings
Cross. We had 1 hour to solve the clues and escape the room which we
managed, in mission-impossible style, with 1 second to spare!

![Go Free Range celebrate escaping the ClueQuest escape room](/images/blog/2017-06-07-cluequest-team-photo.jpg)

In the afternoon we concentrated on some nearer-term objectives and in
particular how to balance client and company work and manage the
different commitments we've made.

I think we had a very productive, fun day and enjoyed the change of
pace.

:name: week-431
:updated_at: 2017-04-27 11:03:47.837280000 +01:00
:created_at: 2017-04-27 11:03:47.837274000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 431
:extension: markdown
