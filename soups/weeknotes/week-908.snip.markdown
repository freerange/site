Week 908
========

Week beginning Monday, 8th June 2026.

We've continued to work on performance-related improvements for the [Mavis project] for [NHS Digital](https://digital.nhs.uk/). It's been a bit of a slog of late, but I think we're getting there!

During our work on the proejct I discovered a new-to-me feature of [git] which allowed me to [add a commit note trailer] to a series of commits using a command like [this][git-commit-trailer-gist].

The development team has decided to try out [GitHub's load balancing algorithm] for assiging reviewers to pull requests. The hope is to spread the reviewing workload and to increase the team's collective knowledge of the codebase.

There's also been a concerted effort by the team to address a bunch of problems we've been seeing with "flakey" end-to-end tests which I really appreciate.

[Chris L] worked at the [Good Machine](https://www.goodmachine.team/) office again on Wednesday, but [Chris R] had to stay at home for childcare duties and I had to stay at home for a water company engineer visit.

On Tuesday Chris R ran the [Code Club] at his daughter's school as usual - it makes me really happy that he's doing this! ❤️

That day there was also a problem with a [Mission Patch] order. Someone had paid using [RevolutPay], but the code was expecting payment by credit card. Fortunately this wasn't too difficult to diagnose and fix.

Chris L spent Thursday at the "Scaling cooperation: Working together for a fairer, more productive digital platform ecosystem in the new music economy" event at [Goldsmiths] which he'd co-organised.

Over the course of this week I've spent way too long trying to resolve an annoying "Catch-22" situation with updating our VAT registration details. Today I've upgraded the Heroku stack for [this website](/) from [heroku-22] to [heroku-26] which fortunately went off without a hitch.

Last weekend I had another go at merging a long-running branch to provide Stripe integration for artists selling music on [Jam]. Unfortunately I've only been able to work on it in short bursts and each time I come back to it I've forgotten most of the context. I thought I'd got it to a point where I could merge it, but questions have arisen about the VAT on various parts of the transaction, so I'll have to try to find some time to go back over it again.

I've been a bit frustrated this week with delays to the building work at my house - suspicions about asbestos in a wall and the discovery that the water supply is a lead pipe shared with 3 other properties. The upshot is that I'm currently living in a bit of a building site with no heating, no cooker, and no sink, with no end in sight! 😬

Until next time!

-- James

[Mavis project]: https://www.manage-vaccinations-in-schools.nhs.uk
[NHS Digital]: https://digital.nhs.uk/
[GitHub's load balancing algorithm]: https://docs.github.com/en/organizations/organizing-members-into-teams/managing-code-review-settings-for-your-team#routing-algorithms
[add a commit note trailer]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---trailertokenvalue
[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Goldsmiths]: https://www.gold.ac.uk/
[Mission Patch]: https://mission-patch.com/
[heroku-22]: https://devcenter.heroku.com/articles/heroku-22-stack
[heroku-26]: https://devcenter.heroku.com/articles/heroku-26-stack
[git-commit-trailer-gist]: https://gist.github.com/floehopper/11606ea5dad171a0b7be55cfd2f9afef
[git]: https://git-scm.com/
[Code Club]: https://codeclub.org/en
[RevolutPay]: https://www.revolut.com/revolut-pay/
[Jam]: https://jam.coop

:name: week-908
:updated_at: 2026-06-12 11:16:07.271469000 +01:00
:created_at: 2026-06-12 11:16:07.271468000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 908
:extension: markdown
