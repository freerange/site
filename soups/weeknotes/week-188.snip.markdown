Week 188
========

Well hello there everybody peeps.  I hope you're all well on this very fine Tuesday.  Tuesday!  Wowsers, this must be a new lateness record.  I do have an excuse though; honest.  You see, I had to take a couple of days off ill at the end of last week - poor Chris.

Week 188 had us welcoming [James M][] back from the [GP14 World Championships][], and wishing [Tom][] fun at a [Swedish crayfish party][] as he entered the second week of his holidays.

## Harmonia

I started the week by doing some work on [Harmonia (the old skool mix)][Harmonia] after we received a notification from HMRC that we'd neglected to pay our PAYE contributions.  It turns out that we had paid them but because we'd previously combined the PAYE and wages task, we'd actually paid them too early.  Having spoken to HMRC, I now understand the quarterly schedule and have [split the PAYE task from that of paying us wages](https://github.com/freerange/harmonia/commit/11f1ce131734dda3be6dfa5b3ac733b681ffaa13). As well as splitting these tasks, I took the opportunity to tidy a few rough edges in the software, and [fixed a little oversight in our task unassignment](https://github.com/freerange/harmonia/commit/bd51255e774bc661d6be3b7b951c8170ebbd31c5) that meant that only James A and I have been candidates for the invoicing and weeknotes tasks for the past few weeks.

Work on Harmonia next continues, with [James A][] starting to explore some of the non-development tasks we'll want to perform if we're going to make a go of this as a product that other people can use.

## Our Tuesday chat

Tom mentioned in [week 184][] that we're going to make sure we spend at least one day a week working in the same location, notably GFRHQ, irrespective of whether we're on client work or not.  We've been doing that for the last few weeks and I think it's really helping us keep up some momentum on our GFR projects.  I've certainly found it really useful to be able to discuss [Roosmarks][], for example, with the team.  We still have very valid concerns as to whether something like Roosmarks is a valid use of company time, which James A touched on in [week 187][], and having these discussions allows us to question whether we're really focussing on those things that are most likely to be valuable to the company.

James M has been remote the last couple of Tuesdays so we've used Skype to chat, and we've started playing with using Quicktime Player to record the audio of the conversation.  It feels good to keep a record of what was discussed, but it'd be even better if we could convert it into a search friendly format.  Can anyone recommend any transcription services that we might use to do just that?

## Mocha

James M has made some great progress on Mocha this week.  You can follow along with the work in the [minitest-and-testunit-integration-without-monkey-patching branch](https://github.com/freerange/mocha/compare/master...minitest-and-testunit-integration-without-monkey-patching), at least until it gets merged to master.  The motivation here is to remove the need to [monkey patch][] both [test-unit][] and [minitest][] now that they support callbacks at relevant points in the test lifecycle; and James hopes to have this all packaged up and released in the near future.

[GP14 World championships]: http://gp14worlds.com/
[Harmonia]: https://github.com/freerange/harmonia
[James A]: /james-adam
[James M]: /james-mead
[minitest]: https://github.com/seattlerb/minitest
[monkey patch]: http://en.wikipedia.org/wiki/Monkey_patch
[roosmarks]: https://github.com/chrisroos/roosmarks/
[Swedish crayfish party]: http://www.sweden.se/eng/home/lifestyle/traditions/celebrating-the-swedish-way/the-crayfish-party/
[test-unit]: https://github.com/test-unit/test-unit/
[Thoughtbot playbook videos]: https://learn.thoughtbot.com/products/7-the-playbook-video-edition
[Tom]: /tom-ward
[week 184]: /week-184
[week 187]: /week-187

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: chris-roos
:created_at: 2012-08-28 15:52:00 +01:00
:updated_at: 2012-08-28 15:52:00 +01:00
:page_title: "Week 188"
