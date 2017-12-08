Week 464
========

Afternoon folks,

We've spent most of the week getting back into the [Asset Manager][asset-manager] project after our trip to [Wortley Hall][wortley-hall] last week. Despite only being away for a week, it still took me quite a while to get my head back into the project.

## Asset Manager

We divided our efforts this week. Chris has been looking to upload more Whitehall assets to Asset Manager, James has been removing unused code from Asset Manager and I've been trying to ensure we serve all assets from the canonical asset host.

James is removing unused code as a precursor to being able to remove old assets from the NFS mount. What should've been quite a simple code removal exercise has ended up being way more involved that we'd hoped. It turns out that there are some external (to Asset Manager) tests relying on the code that James is trying to remove. He's currently deep in these tests trying to make them more realistic before he can go back to removing the code.

I'm trying to redirect asset requests to the canonical asset host. It turns out that it's possible to request certain Whitehall assets via two different hosts. We want to serve them all from the canonical asset host so that we can then make changes to the assets in a single place. This turned out to be more involved than expected as it required changes to our nginx config to ensure that we have enough information to be able to decide whether to redirect a request or not. I continue to wish for some way of testing our nginx config.

## Space4

We spent the day work from [Space4][space4] on Wednesday and took advantage of the organised communal lunch to meet some of our fellow co-working members. It was interesting to hear from a couple of people working on [Erase All Kittens][erase-all-kittens]: a game focussed on encouraging more girls to get into software development. They have an [active Kickstarter campaign][erase-all-kittens-kickstarter] that's pretty close to hitting its target.

## CoTech

A subset of [CoTech][co-tech] co-ops have been discussing the idea of producing some kind of promotional material that can be used to explain CoTech to potential customers. We got together at Wortley Hall and came up with a bit of a plan. We've since heard from another two co-ops that are happy to contribute financially and a further co-op that's agreed to contribute design effort. I'm interested to see how this pans out and what it might mean for CoTech and its ability to pitch for work.

## New laptop

I had a bit of a frustrating set back yesterday when my laptop died. It's a 5 year old MacBook Air so I've taken the opportunity to replace it with a 2017 version.

Although the laptop doesn't boot into macOS it does allow me to boot to Ubuntu running on a USB stick. This has been working surprisingly well while I've been waiting for my replacement. It really highlights everything that's possible in the browser now.

## New members

Somewhat inspired by the Wortley Hall retreat and by our ongoing work to update our Articles of Association, we've started talking about the practicalities of someone else joining Go Free Range. It raises the question of a new member's ownership of any assets we have in the company at the time they join. This is a question we've tried to answer many times in the past and I'm interested to see whether thinking about it through more co-opy eyes will help us find an answer.

## Charity

James was selected to donate to charity this month and chose to donate to [Mind][mind]. Thanks, James!

I think that's about all for this week.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[co-tech]: https://www.coops.tech/
[erase-all-kittens-kickstarter]: https://www.kickstarter.com/projects/eraseallkittens/erase-all-kittens-a-game-that-inspires-girls-to-co
[erase-all-kittens]: https://eraseallkittens.com
[mind]: https://www.mind.org.uk/
[space4]: http://space4.tech/
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-464
:updated_at: 2017-12-08 15:56:00.000000000 +00:00
:created_at: 2017-12-08 15:56:00.000000000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 464
:extension: markdown
:draft: true
