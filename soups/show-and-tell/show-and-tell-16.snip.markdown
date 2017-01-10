Show and Tell 16
================

We were a bit thinner on the ground than usual for this meeting with only 5 of us, but at least that meant that we had plenty of space for all of us at GFRHQ.

## Tracy Island

As per usual [Ben G][] is in the middle of another fun project for his children. He's decided to try to build a scale model of the [home of International Rescue][tracy-island]. His children are big fans of [Minecraft][] and Ben discovered that someone has built [a World containing Tracy Island][minecraft-tracy-island] [^1].

So rather than design Tracy Island from scratch, Ben has extracted horizontal cross-sectional images from this World. He's filled in these layer images (to remove all the voids) and identified the *outline* of the island in each layer. The plan is to laser-cut these layers out of 3mm plywood sheets and glue them together to make a large scale model of the island.

Ben wants to avoid the island being too heavy, so based on the assumption that the outline of the island gets smaller as you go upwards, he's planning on adding a scaled-down outline of the layer below to each layer as an *inside* edge. This should result in a hollowed-out version.

He also wants to keep the costs down and so he's contemplating trying to do some tessellation of his layers to minimize waste. Anyway, it all sounds great to me - watch this space!

## Minecraft Logic Gates

Ben also gave us a bit of an introduction to Minecraft. For a game that's become so popular with kids and is [reportedly worth $2 billion][microsoft-buying-minecraft], it's pretty amazing that it has such a clunky user interface. Starting it up (at least on Mac OS X) shows two terminal windows with lots of incomprehensible logging output and then displays a launcher GUI app. The latter even gives you the option of selecting the JVM you want to use!

Anyway, Ben started the app in [creative mode][minecraft-creative-mode] and showed us a bunch of things in a world he'd knocked up. Having just worked through the Nand2Tetris book at [London Computation Club][london-computation-club], I was most interested in the [logic gates][minecraft-logic-gates] made using [redstone][minecraft-redstone]. It's fascinating how people have come up with these "circuits" using relatively few initial components.

Ben also showed how to build a simple "machine" using [pistons][minecraft-piston] to generate a repeating sequence of four notes. Finally he showed us videos of a [pianola][minecraft-pianola] and a [music sequencer][minecraft-music-sequencer]. Amazing stuff!

## Nand2Tetris Hardware Simulator

I did a little demo of where I've got to with [my JavaScript version][nand2tetris-js] of the [Nand2Tetris hardware simulator][nand2tetris-hardware-simulator]. The authors of the book provide this as a Java app which allows you to run test scripts against the chips you design using their [hardware description language][hardware-description-language] (HDL). The user interface for this Java app is pretty clunky, so I thought it might be interesting to build a better one in JavaScript and run it in the browser.

So far I've been focussing on a command-line version of the tool. I've used [PEG.js][peg-js] to define "grammars" for the test scripts and the HDL files. The HDL file for a chip is parsed into an abstract syntax tree (AST) which is then transformed into a "chip definition" model. A chip definition can have either a built-in implementation or be implemented by one or more chips. These implementations are recursively resolved into more chip definitions parsing the HDL files for each as appropriate.

The graph of chip definitions is then converted into instances of [backbone.js][backbone-js] models representing each chip and connections between their pins are "made" using [backbone event handlers][]. Once the connections have all been made, the changing of an input value cascades through the event handlers, eventually changing the values of the relevant outputs.

I've got the command-line version of the tool working for simple chips and I'm halfway through making it work with multi-bit busses. Once I've got that working, I hope to move on to running the code in a browser and building a nice user interface for it.

## SICP Distilled

[Tom H][tom-h] gave us a quick tour through his [SICP Distilled][sicp-distilled] site which he's recently made public as part of his [Kickstarter][sicp-distilled-kickstarter]. Apparently [this][sicp-distilled-on-hacker-news] made the front page of Hacker News on Sunday!

He's ended up doing a bit of a re-write of the [original book][sicp-book] and uses Clojure instead of Scheme in his example code. Tom said he's most proud of the [Escher section of chapter 2][sicp-distilled-escher] and the [Metacircular Evaluator section of chapter 4][sicp-distilled-evaluator]. Unfortunately my understanding of Clojure is fairly limited, so I struggled a bit to follow along, but it certainly looks like an impressive bit of work.

## Terraframe

Next Tom told us about [Terraform][] which is a [Puppet][]-like infrastructure-as-code system with its own description language (DL). According to Tom the Terraform DL suffers like Puppet's from not being a general purpose language [^2]. The [author of Terraframe][terraframe-author] isn't keen on the Terraform DL, but really likes the underlying engine, so he's implemented [Terraframe][] which provides a Ruby DSL to output JSON conforming to the Terraform specification format.

Tom's been using Terraframe on his current project and is really impressed by it. He also uses [Packer][] to build [AMIs][]. These AMIs are used to build machines which are then configured using a simple Puppet recipe with a [masterless Puppet setup][masterless-puppet].

## Octopress to Middleman Conversion

Tom wrapped things up by telling us about how he's recently converted [his blog][tom-h] from [Octopress][] to [Middleman][]. He was surprised that the conversion was very straightforward. He's using a slightly modified version of the [Ghost][] theme and a couple of Middleman plugins, [middleman-sync][] and [middleman-cdn][] [^3] to deploy to AWS' S3 & CloudFront.

Tom liked being able to use [GitHub-flavoured Markdown][github-flavoured-markdown] and the automatic page reloading when editing your site locally. Anyway the end result looks very nice!

## Next Meeting

Please [get in touch][contact] if you're interested in joining us for the next Show and Tell on Wednesday 14th October.

Thanks to everyone for coming. Hope to see you next time.

-- James

[Ben G]: https://twitter.com/beng
[tracy-island]: https://en.wikipedia.org/wiki/Tracy_Island
[Minecraft]: https://en.wikipedia.org/wiki/Minecraft
[minecraft-tracy-island]: http://www.planetminecraft.com/project/thunderbirds-tracy-island/
[microsoft-buying-minecraft]: http://arstechnica.com/gaming/2014/09/report-microsoft-to-buy-minecraft-developer-mojang-for-2-billion/
[minecraft-creative-mode]: http://minecraft.gamepedia.com/Creative
[minecraft-logic-gates]: http://minecraft.gamepedia.com/Tutorials/Basic_logic_gates
[minecraft-redstone]: http://minecraft.gamepedia.com/Redstone
[london-computation-club]: http://london.computation.club
[minecraft-piston]: http://minecraft.gamepedia.com/Piston
[minecraft-pianola]: https://www.youtube.com/watch?v=qt1fOED0vC8
[minecraft-music-sequencer]: https://www.youtube.com/watch?v=bWkgiTvMZKQ
[nand2tetris-js]: https://github.com/floehopper/nand2tetris.js/tree/master
[nand2tetris-hardware-simulator]: http://www.nand2tetris.org/software.php
[hardware-description-language]: https://en.wikipedia.org/wiki/Hardware_description_language
[peg-js]: http://pegjs.org/
[backbone-js]: http://backbonejs.org/
[tom-h]: http://www.thattommyhall.com/
[sicp-distilled]: http://www.sicpdistilled.com/
[sicp-distilled-on-hacker-news]: https://news.ycombinator.com/item?id=10178544
[sicp-distilled-kickstarter]: https://www.kickstarter.com/projects/1751759988/sicp-distilled
[sicp-distilled-escher]: http://www.sicpdistilled.com/section/2-escher/
[sicp-distilled-evaluator]: http://www.sicpdistilled.com/section/4.1/
[Terraform]: https://www.terraform.io/
[Terraframe]: https://github.com/eropple/terraframe
[Puppet]: https://puppetlabs.com/
[terraframe-author]: http://edcanhack.com/
[Packer]: https://www.packer.io/
[AMIs]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html
[masterless-puppet]: https://www.digitalocean.com/community/tutorials/how-to-set-up-a-masterless-puppet-environment-on-ubuntu-14-04
[Octopress]: http://octopress.org/
[Middleman]: https://middlemanapp.com/
[Ghost]: https://ghost.org/
[middleman-sync]: https://github.com/middleman-contrib/middleman-sync
[middleman-cdn]: https://github.com/leighmcculloch/middleman-cdn
[github-flavoured-markdown]: https://help.github.com/articles/github-flavored-markdown/
[backbone event handlers]: http://backbonejs.org/#Events
[sicp-book]: https://mitpress.mit.edu/sicp/full-text/book/book.html
[contact]: /contact

[^1]: I'm not sure this is the one Ben actually used
[^2]: This resulted in a rant or two about the awfulness of Puppet
[^3]: I'm not sure these are the exact plugins Tom is using

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-09-11 15:48:00 +01:00
:updated_at: 2015-09-11 15:48:00 +01:00
:page_title: Show and Tell 16
:layout: show-and-tell-layout
