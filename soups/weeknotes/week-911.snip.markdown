Week 911
========

Week beginning Monday, 29th June 2026.

My week has again been plagued by tooth pain and interspersed with trips to the dentist 🦷. Thanks to [Chris L] and [Chris R] for holding the fort in the meantime. 🏰

## NHS Vaccinations (Mavis) 💉

Chris L has been focussing on reducing the scope of the locking we when importing vaccination records from a CSV file with the ambition to reduce the average time a nurse has to wait for an import to finish. Chris R has continued pairing on making parts of a couple of other CSV imports run in parallel which should mean we'll be able to improve performance by horizontal scaling of the background worker processes.

I've been looking at using [Sidekiq Pro's batch functionality] to parallelize one of the last steps in the vaccinations import for similar reasons. The trickiest bit has been working out how best to test this functionality and keep all the existing tests working, but I think I'm gradually homing in on a sensible approach.

A while ago the structure of our contract for this project changed and we've found ourselves needing a bunch of extra insurance cover. Chris R has been sorting this out with our insurance broker which I really appreciate.

## Jam 🍓

Chris L landed [some changes][refactor-album-creation-pr] he's been working on for a while to make it easier for artists to add albums to the site 🎉. He's also opened [a pull request][herb-linter-pr] to use [the Herb Linter]. 🌿

I've opened [a pull request][playwright-pr] to use [Playwright] instead of [Cuprite] in the system tests in the hope that we can avoid some flakiness. I also revamped [an old spike][sticky-player-pr] I did into implementing an audio player that persists as the user navigates around the site. Foolishily I didn't write many notes at the time, so I've made an effort to try to write some after the fact.

I spent a bit of time over the weekend trying to work out what to do about the [Stripe Connect] application fee shenanigans that I mentioned [last week]. I think I'm a bit more confident that the current approach is the best option. However, I've now spotted a potential problem with how we'll explain Stripe payouts into our bank account using [DoubleAgent] and [FreeAgent][] [^1]. I'm starting to wonder whether it might be worth creating a separate legal entity for Jam. This is always something we've planned to do at some point, but it's tricky to decide at when's the right time.

Until next time!

-- James

[^1]: Referral link

[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Sidekiq Pro's batch functionality]: https://sidekiq.org/wiki/Batches
[refactor-album-creation-pr]: https://github.com/freerange/jam-coop/pull/455
[herb-linter-pr]: https://github.com/freerange/jam-coop/pull/571
[the Herb Linter]: https://herb-tools.dev/projects/linter
[playwright-pr]: https://github.com/freerange/jam-coop/pull/563
[sticky-player-pr]: https://github.com/freerange/jam-coop/pull/562
[Playwright]: https://playwright.dev/
[Cuprite]: https://cuprite.rubycdp.com/
[last week]: /week-910
[DoubleAgent]: https://doubleagent.io
[FreeAgent]: http://fre.ag/3276i4uh
[Stripe Connect]: https://stripe.com/gb/connect

:name: week-911
:updated_at: 2026-07-03 10:54:56.978348000 +01:00
:created_at: 2026-07-03 10:54:56.978345000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 911
:extension: markdown
