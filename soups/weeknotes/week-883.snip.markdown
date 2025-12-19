Week 883
========

Week beginning Monday, 15th December 2025.

This week has been pretty hectic especially given that we've not been working on a client project! I've found all the context-switching a bit challenging, but it feels as if we got a lot done!

## Bidness 💼

We've agreed to take on a project at the Government Digital Service ([GDS]) in collaboration with [dxw] working on the [GOV.UK] publishing system. So we spent a chunk of the week sorting out contracts and completing various on-boarding checks. We had a kick-off meeting with dxw and GDS folks on Thursday morning with the aim of hitting the ground running in the week after the New Year.

We also had another quick catch-up with Stu at [Good Machine] and ongoing conversations with Tom at [Goodbase]. We're hoping we might get to work with one/both of them next year.

## [Jam] 🍓

On Wednesday we had another hour with Polly at [Newable] about [Jam]. We talked a bit about some of the current sticking points and what we might do to resolve them. And then we spent some time workshopping a value proposition specifically for artists. We plan to refine that and generate something similar for fans too. It's great to have someone outside GFR facilitate these sessions and Polly has also been great at suggesting people worth talking to.

[Chris L] has continued to collaborate with a couple of record labels to refine the functionality [he added last week][jam-label-functionality]. And earlier today he sent our another installment of the newsletter explaining what we've been working on in recent weeks.

[Chris R] has been digging into the tax and financial service regulations that might be relevant for Jam. We want to be on a solid footing before we make a concerted marketing push.

## [Mocha] ☕️

I finally got round to releasing [Mocha v3.0.0] on Monday. A big shout out to [Étienne Barrié] and his team at Shopify for testing release candidates. Inevitably, despite taking a _lot_ of care, I still managed to [break something][rspec-integration-bug]. Fortunately I managed to [release a fix][mocha-3.0.1] on Wednesday.

## [CoTech] 🎨

Somehow Chris L also managed to find the time to complete the re-design of [the CoTech website][CoTech]. He told us that he enjoyed putting some of his recent design & CSS thinking into practice. He also mentioned that he'd [applied progressive enhancement] to a `<dialog>` element to implement part of the design. The site is now more focussed on the idea of advertising the services of the member co-ops and it's good to see it get a bit of love.

## [Code Club] 🤖

Chris R has now got everything in place to run a [Code Club] at his daughter's school starting in the New Year. It's already full (10 children) with 1 on the waiting list! While this is obviously great news, I have to admit that I'm somewhat disappointed at how hard it's been for Chris; I feel as if the process could be improved!

## [Mission Patch] 🚀

Something weird happened with an order that came in this week: code using the [ferrum] gem couldn't find the browser executable on a production machine in order to generate the artwork. After a lot of faffing I managed to get it working again, but I don't feel as if I've got to the root cause of the problem yet. A job for the New Year, methinks!

## New hardware 💻

I bought a new Mac laptop and so in between things I've been trying to get it set up. I've decided to abandon my [nix-based dotfiles setup] and go back to a simpler approach. Using the nix-based approach for a couple of years has been educational. However, it feels like overkill for just managing my dotfiles and a few other things and, because I don't make changes very often, I keep forgetting how it works!

Although I had done some [work][secrets-managed-by-mise] to store project-specific secrets using [mise] and had plans to implement something similar for global secrets using [sops] backed by [age] in my nix configuration, I never quite got round to it. Chris R has pointed me at [1Password Shell Plugins] which seem like a reasonable alternative.

On Wednesday, Chris L bought [a Mini PC] with the idea of joining Chris R in using Linux on a desktop machine. I'm looking forward to hearing how he gets on.

## Miscellaneous 🧩

Chris R helped out on his daughter's school trip. Chris L attended his eldest son's school play. I caught up with [Rob D] in London over dinner and a few beers.

Anyway, that's all for now. Wishing you all a very 🎄Merry Christmas🎄 and a 🍾 Happy New Year 🍾! 

-- James


[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[dxw]: https://www.dxw.com/
[GOV.UK]: https://www.gov.uk/
[Good Machine]: https://www.goodmachine.team/
[Newable]: https://www.newable.co.uk/
[Jam]: https://jam.coop/
[Chris L]: /chris-lowis
[jam-label-functionality]: /week-882#jam
[Chris R]: /chris-roos
[Mocha v3.0.0]: https://mocha.jamesmead.org/file.RELEASE.html#3-0-0
[Étienne Barrié]: https://fr.linkedin.com/in/etiennebarrie
[rspec-integration-bug]: https://github.com/freerange/mocha/issues/768
[mocha-3.0.1]: https://mocha.jamesmead.org/file.RELEASE.html#3-0-1
[the CoTech website]: https://www.cotech.uk/
[applied progressive enhancement]: https://git.coop/cotech/website/-/commit/0858c664c9b8f54abe83ee043786ff5bbdaf8e82
[Code Club]: https://codeclub.org/
[a Mini PC]: https://www.geekom.co.uk/geekom-a6-mini-pc
[nix-based dotfiles setup]: https://github.com/floehopper/dotfiles
[secrets-managed-by-mise]: https://github.com/floehopper/dotfiles/blob/5e766ddaf050e9777140a994092a8433caf81a2d/README.md#secrets-managed-by-mise
[mise]: https://mise.jdx.dev/
[age]: https://github.com/FiloSottile/age
[sops]: https://getsops.io/
[1Password Shell Plugins]: https://developer.1password.com/docs/cli/shell-plugins
[Rob D]: https://uk.linkedin.com/in/rob-d
[ferrum]: https://github.com/rubycdp/ferrum
[Mission Patch]: https://mission-patch.com/
[Mocha]: https://github.com/freerange/mocha
[CoTech]: https://www.cotech.uk/
[Goodbase]: https://goodbase.co.uk/

:name: week-883
:updated_at: 2025-12-19 17:01:44.498307000 +00:00
:created_at: 2025-12-19 17:01:44.498305000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 883
:extension: markdown
