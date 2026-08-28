Week 918 & 919
========

Weeks beginning Monday, 17th and Monday, 24th August 2026.

The last few weeks have been a bit of a blur for me. We've been thin on the ground at times due to the school holiday effect with both [Chris L] and [Chris R] being variously away on holiday or having child-care commitments. I've had intermittent dental pain and lots of disruption from building work, culminating in a new water supply connection where the contractors managed to split the 80+ year-old cast iron-water main outside my house! 

## NHS Vaccinations (Mavis) 💉

We've continue our work on the project modulo interruptions due to the events mentioned above.

Last Wednesday, [Good Machine] hosted a product showcase at [The Ministry] in Borough for functionality built over the last year. Chris L did a demo of the clinic booking functionality he and I have been working on.

And then on Thursday, Chris L & Chris R attended an in-person Mavis strategy session, also at The Ministry. In these days of extensive remote working, it's always nice to meet up with colleagues in person, so I was sorry I wasn't able to attend.

## Jam 🍓

We're very happy to [welcome][welcome-toot] Kordel Records, a sub-label of the magnificent [Seil Records]. The label's owner, [Boris], was a very early supporter and friend to the project, so it's great to finally have enough functionality in place to showcase this wonderful music. Check out [Kordel Records] and support Jam, the label and four wonderful ambient artists by buying one of their releases.

Both Chris L and I have been doing bits and bobs of work on Jam, although it's been difficult to find sustained chunks of time to work on the project. Chris [added][avo-commit] a bunch of admin pages using [Avo]. Having configured a bank feed in [FreeAgent][] [^1] for our Jam Stripe account, I wrote up some detailed intructions on how to explain the transactions. I then [added][jam-pr-661] an admin purchases page to Jam and [enhanced][jam-pr-662] it to help supply some of the required figures.

## Developer Environment 💻

I've been fiddling with my development environment. I've ditched [oh-my-zsh], because I was hardly using any of it or its plugins and my shell was taking a long time to load. I've hand-crafted a `.zshrc` to reproduce all the behaviour I wanted. I briefly flirted with the [starship prompt] before settling on the [pure prompt] which is pretty minimalistic and makes any calls to `git` asynchronously. I've also switched from MacOS Terminal.app to [ghostty].

Having abandoned managing my dot files using Nix [some time ago][abandoned-nix], I've been quite pleased with the [new approach][dotfiles-readme] I've been using. I have a bare git repo at `$HOME/.dotfiles` and a `dotfiles` alias that sets this as the git directory and `$HOME` as the working directory. Simple but effective!

Until next time

-- James

[^1]: Referral link

[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Good Machine]: https://www.goodmachine.team/
[The Ministry]: https://www.theministry.com/
[welcome-toot]: https://mastodon.social/@jamcoop/117162926459117546
[Seil Records]: https://ruby.social/@seilrecords@mastodon.social
[Boris]: https://ruby.social/@jogginghouse@mastodon.social
[Kordel Records]: https://jam.coop/labels/kordel-records
[avo-commit]: https://github.com/freerange/jam-coop/commit/92cf955edd1d152c5bec5f1195aacb235a6e0d2d
[Avo]: https://avohq.io/
[jam-pr-661]: https://github.com/freerange/jam-coop/pull/661
[jam-pr-662]: https://github.com/freerange/jam-coop/pull/662
[FreeAgent]: http://fre.ag/3276i4uh
[oh-my-zsh]: https://ohmyz.sh/
[starship prompt]: https://starship.rs/
[pure prompt]: https://github.com/sindresorhus/pure
[ghostty]: https://ghostty.org/
[abandoned-nix]: /week-883#new-hardware-
[dotfiles-readme]: https://github.com/floehopper/dotfiles/blob/136e13b77d2f8af07433b47a0f380245f703ba53/README.md

:name: week-918-and-919
:updated_at: 2026-08-28 13:15:43.680125000 +01:00
:created_at: 2026-08-28 13:15:43.680124000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 918 & 919
:extension: markdown
