Week 396
========

Week 396 was a short one for me. I spent most of Thursday and Friday getting a houseboat surveyed!

[James][james-mead] took a couple of hours out on Friday to reminisce about his time in Antarctica by visiting the [Visions of the Great White South][visions-of-the-great-white-south] exhibition at Bonhams.

On the work front, we split our time between GFR, Mocha and Hookline.

---

## GFR

### Short to medium term plans

James and I spent Tuesday morning talking about we're going to do next. We've recently spoken to a couple of people about taking on new projects and needed to make a decision so that we could get back to them.

We agreed that we'd prefer to spend some time working on our own projects rather than jumping straight into working on another client project. After some discussion, and on the basis that we're in the fortunate position of having money saved in the bank, we decided to spend at least a couple of months working on a combination of [Hookline][hookline] and some other smaller projects.

### Improving business processes

James improved the instructions for paying ourselves by splitting the task into two. We were finding ourselves confused between when we should submit the payroll and when we should transfer the money. Creating two independent tasks makes things easier to understand and should mean that the smaller tasks are easier/quicker to complete.

### More use of Harmonia

We've started trialling a slightly different workflow for some of our non-recurring tasks. Instead of adding things to an "Inbox" in Trello, we've started emailing the tasks to [Harmonia][harmonia] so that they're automatically assigned to one of us. It'll be interesting to see how this works out.

### Annual accounts

I spent some more time working on annual accounts. I continue to question how much time it's worth digging into the detail of the accounts...

### Show and Tell

We invited a couple more people to our [Show and Tell][show-and-tell-events]. Lower numbers and hosting recent events in a pub mean that it's in danger of becoming another pub night which we want to avoid. Feel free to join the [mailing list][show-and-tell-mailing-list] or [get in touch][contact] if you're interested in coming along.

---

## Mocha

James and I spent most of Wednesday pairing on [Mocha][mocha]; specifically on [PR 244][mocha-pr-244]. It took us quite a long time to understand what the code was doing and what we think it should be doing based on the problem described in the PR. We finished the day with a spike branch that we think fixes the problem in a more generic way to the PR. The implementation we've come up with only works in Ruby 2.0 and above which means that we're left the original broken behaviour in 1.8.7 (1.9.3 behaves differently and isn't affected by the original problem!) While not ideal, we think this is still an improvement.

I really enjoyed pairing on this and can't imagine getting anywhere near the solution we came up with if I'd been working on it alone.

In addition to the work we did together, James also worked on and merged a documentation change that had been submitted in [PR 248][mocha-pr-248].

### Open Collective

James was contacted by [Open Collective][open-collective] some time ago. They suggested that Mocha could apply to be a collective which would potentially allow us to be paid for the work we do. Having found the time to investigate further, James went ahead and signed up. We're still not 100% clear on how it works but it seems low risk enough for it to be worth a try.

They opened [Mocha PR 253][mocha-pr-253] to add sponsors.

Since signing up there's been some additional talk of GFR becoming an Open Collective Host for the UK. We're not completely sure what this entails and so we need to investigate this further before we can agree to anything.

---

## Hookline

We continued to make some good progress with the Hookline music library app.

It feels as though we're roughly dividing our time between trying to add new functionality and improving what we've started with. It's quite amazing how much debt we managed to accrue in the initial two weeks of development. We'd consciously taken some short cuts in an attempt to get something working within the two weeks. Unfortunately, that didn't pay off and we're now repaying that debt alongside building new features.

Until next time, folks.

-- Chris

[contact]: /contact
[james-mead]: /james-mead
[harmonia]: https://harmonia.io
[hookline]: http://hookline.tv/
[mocha]: https://github.com/freerange/mocha
[mocha-pr-244]: https://github.com/freerange/mocha/pull/244
[mocha-pr-248]: https://github.com/freerange/mocha/pull/248
[mocha-pr-253]: https://github.com/freerange/mocha/pull/253
[open-collective]: https://opencollective.com/
[show-and-tell-events]: /show-and-tell-events
[show-and-tell-mailing-list]: https://groups.google.com/a/gofreerange.com/forum/#!forum/show-and-tell
[visions-of-the-great-white-south]: https://www.bonhams.com/press_release/22167/

:name: week-396
:updated_at: 2016-08-26 11:46:13.690342000 +01:00
:created_at: 2016-08-26 11:46:13.690311000 +01:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 396
:extension: markdown
:week_dates: Mon 15 Aug to Sun 21 Aug
