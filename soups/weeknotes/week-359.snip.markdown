Week 359
========

Week 359 was our last full(ish) week working on [Smart Answers][smart-answers] having now spent almost 8 months working on the project. There's still lots more that we'd like to do and it's possible we'll be back in the New Year to pick up where we've left off.

We'd agreed with GDS that Tuesday would be our last day working on Smart Answers, although we also ended up working on Wednesday and Thursday in an attempt to leave the project in as good a state as possible.

## Smart Answers

The week didn't start quite as planned. We heard from the team on second line that the memory profile of Smart Answers appeared to have changed after our most recent deployment. Unfortunately, we had to postpone any investigation as we had two presentations on Tuesday that we needed to prepare for.

### Presentations

We spent all of Monday and quite a bit of Tuesday morning preparing for the presentations that we'd agreed to do: one for developers and the other for the content team. I'd naively thought the preparation wouldn't take too long but getting started reminded me of how long it took us to prepare for the presentation we gave at FutureLearn back in [week 317][week-317].

We used the same format for both presentations. We explained what we'd been asked to do, how we approached the problem, what we did and what we'd do next. We used [Deckset][deckset-app] to generate slides from our [Markdown notes that you can find on GitHub][gds-presentations].

### Handover

In between preparing for the presentations we had a couple of final handover meetings. The first with [Brad][brad-wright] and [Dafydd][dafydd-vaughn] in which we offered to be available on an ad-hoc basis over the next month or so. The second with [David][david-singleton], [Jenny][jenny-duckett] and Erik in which we went through Trello for the final time to ensure that there wasn't anything critical we'd missed. James, Erik and I then spent the last hour on Tuesday going through Trello and making sure that all the cards made sense.

### Investigating memory use

[James][james-mead] started investigating the memory problem on Tuesday and then we both paired on it on Wednesday. We _think_ the problem might be due to us switching to using ERB to render question pages. We weren't able to replicate the problem locally which was a pain. What we were able to see was that due to the way one of the presenter objects worked, we were now creating a large number of additional objects that we weren't creating before.

James made a change to our primary presenter so that it [memoized the child presenters it created][smart-answers-pr-2172]. We hope this'll reduce the total number of objects being created, and therefore the amount of memory being consumed.

James investigated reducing the number of `ActiveView::Base` objects we were creating by [using a single ActionView::Base object for all node presenters][smart-answers-pr-2176]. Although it sounded like an improvement, the change was quite awkward to make given the current state of the code, and James ended up discarding the spike.

### Leaving drinks

We finished up on Tuesday with some low key leaving drinks at the [Princess Louise][princess-louise-holborn] with a few folks from the content team.

## GFR

Our big news is that both James and I are going to spend some time abroad for the first part of next year. I'm going to be in Australia and New Zealand for the first 6 months and James has recently agreed to share the rent of an apartment in a Swiss ski resort!

The plan is to continue working while we're both away but we have no real idea how feasible this is going to be. It's certainly going to be interesting to see how everything pans out.

Given that we're both going away we've decided to give up the lease on our office at [Shoreditch Works][shoreditch-works]. We've really enjoyed our time here and might well come back in the second half of 2016 (if there's still room) but it just doesn't make sense to hold on to it when neither of us are around to use it.

Having given our notice we spent quite a bit of Thursday and Friday working out how to get rid of the things we've accumulated. This mostly consisted of trips to our storage unit, taking photos of all our stuff and listing lots of things on Gumtree.

We took a break from our office management duties to have a splendid lunch at the [Horse and Groom][horse-and-groom] with [Murray][murray-steele] and [James A][james-adam] on Friday.

Until next time.

-- Chris

[brad-wright]: https://twitter.com/bradwright
[dafydd-vaughn]: https://dafyddvaughan.uk/
[david-singleton]: http://dsingleton.co.uk/
[deckset-app]: http://www.decksetapp.com/
[gds-presentations]: https://github.com/freerange/gds-presentations
[horse-and-groom]: http://thehorseandgroom.net/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[jenny-duckett]: https://twitter.com/jenny_duckett
[murray-steele]: https://twitter.com/#!/hlame
[princess-louise-holborn]: http://princesslouisepub.co.uk/
[shoreditch-works]: http://shoreditchworks.com/
[smart-answers]: https://github.com/alphagov/smart-answers
[smart-answers-pr-2172]: https://github.com/alphagov/smart-answers/pull/2172
[smart-answers-pr-2176]: https://github.com/alphagov/smart-answers/pull/2176
[week-317]: /week-317

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-12-16 16:25:00 +00:00
:updated_at: 2015-12-16 16:25:00 +00:00
:page_title: Week 359
