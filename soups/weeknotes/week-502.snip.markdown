Week 502
========

This was a short week, given the bank holiday on Monday. Chris L was back from holiday and all three of us worked in the Trainline office on Tuesday. Chris R and I also worked there on Thursday, otherwise we all worked remotely from home. When we're working fairly full-time on a client project like this, the cost of maintaining our own office bothers me slightly. Hopefully when Ben's back from holiday next week, we'll make more use of it again.

## Trainline

On Tuesday afternoon we had a useful retrospective with one of the teams. There were some good ideas about how to avoid problems that have happened in recent weeks.

I spent much of the week investigating some intermittent build failures which I'd seen last week. Thanks to some productive pairing sessions with Chris R, we eventually got to the bottom of the problem - it turned out to be a combination of some rather brittle tests and an [Event Machine][]-related race condition.

Chris R spent some time trying to establish that the connection health messages for [SOAP][] failures is working correctly in production. He's made some good progress, but isn't quite there yet. He's also pushed things forward with having [Rubocop][] fail the Continuous Integration build rather than just automatically add comments to the GitLab merge requests.

Chris L has been investigating the validation of messages sent to another Trainline application; in particular the differences between the contracts enforced by the code and those expected by the schema.

## Elsewhere

On Friday morning, we had a remote company meeting via a Slack group voice and screen-sharing call which worked pretty well. We've started creating an agenda for our upcoming company away day. We also all did a bit of catching up with company admin and then both Chris R & Chris L moved on to do some more work on the [Modern Slavery Registry][] project. Amongst other things I spent rather too long investigating inconsistencies and possible rule violations in our categorisation of bank transactions in [FreeAgent][] and then moved on to catching up with my writing backlog, including these week notes!

Anyway, that's all for now. Have a lovely weekend!

-- James

[Event Machine]: https://github.com/eventmachine/eventmachine
[SOAP]: https://en.wikipedia.org/wiki/SOAP
[Rubocop]: http://docs.rubocop.org/en/latest/
[Modern Slavery Registry]: https://www.modernslaveryregistry.org/
[FreeAgent]: https://www.freeagent.com/

:name: week-502
:updated_at: 2018-08-31 13:52:50.463882000 +01:00
:created_at: 2018-08-31 13:52:50.463880000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 502
:extension: markdown
