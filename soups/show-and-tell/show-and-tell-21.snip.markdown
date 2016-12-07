Show and Tell 21
================

On 8th June five of us met up at [Bonfire][] in the Barbican. Fortunately the rain had stopped and it turned into a lovely summer evening, so we were able to sit outside on the terrace.

## React

First up [James S][] showed us a nice little web application he'd been building to learn about the [React][] library. He talked us through creating [Components][react-components] (e.g. a [Timer Component][react-timer]) and notifications. I'm afraid I don't remember the details, but this led us into discussions about the use of [ECMAScript 6][] and [JSX][], the pros and cons of using [Redux][] versus [Flux][], and the use of [Webpack][] and [Gulp][].

## Ray tracing

[Tom S][] told us about an e-book, [Ray Tracing in One Weekend][], in which the author walks you through building a ray tracer in C+ (C with classes, not C++). Tom had decided to use the book to build a ray tracer in Ruby. He showed us how he'd done this in step-by-step commits along with examples of rendered scenes. Some of the later scenes were very impressive!

In a slight diversion, this led us on to talk about how one might build a tutorial presentation using such step-by-step commits in a git repository. I really like this idea.

If I remember rightly, [Ben G][] had also been working through the same (?) book implementing a ray tracer in [Swift][].

## Neural network

Tom S also showed us a canvas-based [visualisation of the training of a neural network][neural-network-visualisation] which he'd built for a recent meeting of the [London Computation Club][].

## Central heating

[James A][] told us that he'd got frustrated with the central heating controller in his house. In common with those in many UK homes it isn't possible to adjust the settings remotely (e.g. from his home office) and it takes about 4 button presses to do anything.

So he decided to build his own wireless controller using a [Particle Photon][] board and a relay shield (?). As I understand it, the board connects over wi-fi to the [Particle Cloud][] which allowed James to control the device through a web interface (as well as a web API). A great first step!

I may have got this all wrong, but I think he then made the device available to his iPhone by way of [Homebridge][] and a simple [Sinatra][] web app which communicated with the device via the Particle Cloud API. Homebridge emulates the [iOS HomeKit API][] which meant that James could then control his central heating via [Siri][] on his iPhone which was pretty cool.

Lastly I think James also built an iOS app to communicate with the device via the HomeKit API. All in all, a really nice project.

## Smart Answers

I demonstrated a [prototype][floehopper-smart-answers] of an alternative implementation of the [GOV.UK Smart Answers app][smart-answers]. One of the main things I wanted to achieve was a [common set of acceptance specs][floehopper-smart-answers-specs] running against several different user interfaces, but with the same policy logic. I'd managed to get a very basic example working with [a standard web app][floehopper-smart-answers-web-app] (c.f. GOV.UK), [a single-page web app using Ajax][floehopper-smart-answer-single-page-web-app], and [a command-line app][floehopper-smart-answer-command-line].

The idea of having multiple user interfaces was to force good [separation of concerns][], something that was particularly lacking in the GOV.UK version of the app. I also got some good suggestions about other aspects of the app. Thanks for the feedback, folks!

## Space Invaders

Last but not least, we were treated to [Ben G][] digging out a version of the [Space Invaders][] game which he'd written in Java 18 years ago! Amazingly he got it to build and run. He explained how it was based on a primitive [neural network][] in combination with a simple [genetic algorithm][]. I'm afraid I don't remember any more details, but it was really neat!

Anyway, that's all for now. For those who attended, please feel free to improve [this write-up][this-write-up] via a [pull request][pull-request]. Apologies if I got anything wrong!

Until next time,

-- James.

[Bonfire]: http://bonfirelondon.co.uk/
[James S]: https://www.linkedin.com/in/james-smyth-31078191
[React]: https://facebook.github.io/react/
[react-components]: https://facebook.github.io/react/docs/interactivity-and-dynamic-uis.html
[react-timer]: https://facebook.github.io/react/#timerExample
[ECMAScript 6]: http://es6-features.org/
[Redux]: http://redux.js.org/
[Flux]: https://facebook.github.io/flux/
[JSX]: https://facebook.github.io/jsx/
[Webpack]: https://webpack.github.io/
[Gulp]: https://www.npmjs.com/package/gulp
[Tom S]: https://codon.com/
[Ray Tracing in One Weekend]: http://in1weekend.blogspot.co.uk/2016/01/ray-tracing-in-one-weekend.html
[Ben G]: https://twitter.com/beng
[Swift]: https://swift.org/
[neural-network-visualisation]: http://tomstuart.github.io/neural-network/
[London Computation Club]: http://london.computation.club/
[James A]: http://lazyatom.com/
[Particle Photon]: https://www.particle.io/products/hardware/photon-wifi-dev-kit
[Particle Cloud]: https://www.particle.io/products/platform/particle-cloud
[Homebridge]: https://github.com/nfarina/homebridge
[Sinatra]: http://www.sinatrarb.com/
[iOS HomeKit API]: https://www.apple.com/uk/ios/homekit/
[Siri]: http://www.apple.com/ios/siri/
[floehopper-smart-answers]: https://github.com/floehopper/smart-answers
[smart-answers]: https://github.com/alphagov/smart-answers
[floehopper-smart-answers-specs]: https://github.com/floehopper/smart-answers/tree/master/spec
[floehopper-smart-answers-web-app]: https://github.com/floehopper/smart-answers/blob/master/web_app.rb
[floehopper-smart-answer-command-line]: https://github.com/floehopper/smart-answers/blob/master/app.rb
[floehopper-smart-answer-single-page-web-app]: https://github.com/floehopper/smart-answers/blob/master/single_page_web_app.rb
[separation of concerns]: https://en.wikipedia.org/wiki/Separation_of_concerns
[Space Invaders]: https://en.wikipedia.org/wiki/Space_Invaders
[neural network]: https://en.wikipedia.org/wiki/Artificial_neural_network
[genetic algorithm]: https://en.wikipedia.org/wiki/Genetic_algorithm
[this-write-up]: https://github.com/freerange/site/blob/master/soups/blog/show-and-tell-21.snip.markdown
[pull-request]: https://github.com/freerange/site/pulls

:render_as: blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2016-08-05 16:18:00 +01:00
:updated_at: 2016-08-05 16:18:00 +01:00
:page_title: Show and Tell 21
:layout: show-and-tell-layout
