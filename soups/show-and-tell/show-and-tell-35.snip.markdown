Show and Tell 35
================

[Chris R][] and I were joined by [Ben G][], [Chris P][], [James C][] and [Ian D-W][].

[Chris R]: /chris-roos
[Ben G]: https://twitter.com/beng
[Chris P]: https://twitter.com/cpatuzzo
[James C]: http://jcoglan.com/
[Ian D-W]: http://idw.xyz


## GFR website regression tests

I explained how I'd used a simple [automated regression test][] to help me convert our company website from [vanilla.rb][] to [Ruby on Rails][]. This test spins up a server process, crawls the website, captures the rendered HTML, normalises the HTML using [HTML Tidy][], and then compares the normalised HTML with the HTML committed to the git repository.

[automated regression test]: https://github.com/freerange/site/blob/b8b17dd9650871b437d615f29f6d82f35438c271/spec/regression/spider_spec.rb
[vanilla.rb]: http://interblah.net/introducing-vanilla-rb
[Ruby on Rails]: http://rubyonrails.org/
[HTML Tidy]: http://www.html-tidy.org/


## Sentient programming language

![Chris P talking about his Sentient programming language](/images/blog/2017-08-09-show-and-tell-35-chrisp-sentient-language.jpg)

Chris P explained a bit about [Sentient][], an experimental declarative programming language which he's been developing. The Sentient website has some really nice examples, like [this one about generating a Magic Square][sentient-magic-square], which execute in the browser. He explained a bit about the following: Microsoft Research's [Z3 Theorem Prover][], [Propositional Logic][], [Klee][], [maze solving][], and finding bugs in programs.

[Sentient]: http://sentient-lang.org/
[sentient-magic-square]: http://sentient-lang.org/examples/magic-square
[Z3 Theorem Prover]: https://github.com/Z3Prover/z3
[Propositional Logic]: https://en.wikipedia.org/wiki/Propositional_calculus
[KLEE]: https://klee.github.io/
[maze solving]: https://feliam.wordpress.com/2010/10/07/the-symbolic-maze/


## Generating proofs programmatically

![James C talking about his adventures with types ](/images/blog/2017-08-09-show-and-tell-35-jamesc-tapl.jpg)

James C talked about some work he'd done inspired by [Types and Programming Languages][], the book which the members of the [London Computation Club][] are currently working their way through. In particular, in connection with chapter 9.2 "The Typing Relation", he's been writing [some Ruby code][infer-repo] to work out the type of an expression, but also to generate a proof of how it worked that out.

In his own words, he then realised he'd accidentally written a "crap" (Ruby) implementation of [Prolog][]. He embraced this fact and added a user interface to make it actually look like Prolog! He also explained a bit about the concept of [unification][] and how it's at the heart of Prolog.

[Types and Programming Languages]: https://www.cis.upenn.edu/~bcpierce/tapl/
[London Computation Club]: http://london.computation.club/
[infer-repo]: https://github.com/jcoglan/infer
[Prolog]: http://www.swi-prolog.org/
[unification]: https://en.wikipedia.org/wiki/Unification_(computer_science)

## Chess sound track

![Ben talking about our chess soundtrack project](/images/blog/2017-08-09-show-and-tell-35-ben-chess-soundtrack.jpg)

Beng G gave us a quick reprise of the project Chris R, he & I worked on some time ago which [generates a sound track for a game of chess][chess-soundtrack].

[chess-soundtrack]: https://techbelly.github.io/game-soundtrack/webaudio/


## Blender

![Ian's rendering of a room using Blender](/images/blog/2017-08-09-show-and-tell-35-blender-room.png)

Ian is (or was) in the process of buying a house and he showed us some impressive work he'd done with [Blender][] to generate detailed visualisations of how the inside of the property might look with some of his furniture and possessions. The thing I found particularly fascinating was the effort he'd put in to the detail of surfaces like [some net curtains][]!

![Ian demonstrating how to use Blender](/images/blog/2017-08-09-show-and-tell-35-ian-blender-demo.jpg)

He also revealed that he'd previously lectured on a Graphic Design course and had taught people to use Blender. He then proceeded to give us a quick off-the-cuff demo of how to use Blender to render a room with a window, explaining that Blender's user interface isn't very approachable, but the app is incredibly powerful.

[Blender]: https://www.blender.org/
[some net curtains]: http://idw.xyz/material-net-curtain/


## Customizing Nerf guns

Ian also showed us how he'd [added texture and paint to a bunch of Nerf guns][custom-nerf-guns] - the results are [pretty spectacular][finished-nerf-gun]!

[custom-nerf-guns]: http://idw.xyz/custom-nerf-guns/
[finished-nerf-gun]: https://www.flickr.com/photos/ianwright/33568363550/


## Show & Tell 36

We're hosting our 36th Show & Tell on Wednesday, 13th September. It's open to all so please [get in touch][contact] if you'd like to join us.

[contact]: /contact

:name: show-and-tell-35
:updated_at: 2017-09-11 13:29:20.996425219 +00:00
:created_at: 2017-09-11 13:29:20.996404642 +00:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 35
:layout: show-and-tell-layout
:extension: markdown
