Show and Tell 29
================

* When: Wed 08 Feb 2017
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-29]

[Chris R][chris-roos] and I were joined by [Amy][amy-wagner], [Ben][ben-griffiths], [Rob C][rob-chatley], [Rob D][rob-dupuis] and [Riccardo][riccardo-cambiassi] for our 29th Show & Tell.

[attending-io-show-and-tell-29]: https://attending.io/events/gfr-show-and-tell-29/
[chris-roos]: /chris-roos
[amy-wagner]: http://amyeee.com/
[ben-griffiths]: https://twitter.com/beng
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://github.com/robd
[riccardo-cambiassi]: https://github.com/bru

## Rob C - Test-driving performance

<%= image_tag('blog/2017-02-08-show-and-tell-29-rob-chatley.jpg', alt: 'Rob Chatley talking about test-drivign performance of software') %>

[Rob talked us through this idea][performance-testing-with-mocks] a couple of months ago. This time he had some code to show us. One of his students had modified jMock to make it possible to describe the performance characteristics of each mocked method, e.g. by chaining `responseTime(uniform(100, 200))` on the end of the expectation one can specify that the mocked method should take a random amount of time between 100ms and 200ms with the response times distributed uniformly within this range.

When the test is run, the mocked methods add the relevant response time to a per-test virtual clock so that at the end of a test the response time of the method-under-test is known. Each test is run multiple times to capture a representative sample of response times for the method-under-test.

Assertions can then be added to check the performance of the method-under-test fulfils the requirements, e.g. `assertThat(percentile(80, context.runtimes(), is(lessThan(250.0))))` which ensures that for 80% of the time the response time of the method-under-test is under 250ms.

If one of these assertions fails, it might be hard to work out what was wrong. Rob thinks it would be good to display a graph of the response times if an assertion fails to give the developer as much information as possible to diagnose the problem.

Rob has some ideas for modelling asynchronous requests being queued up, i.e. the interaction between multiple requests. He's also interested in instrumenting production code and plugging real data distributions into the performance characteristics of a mocked method.

Ben mentioned that he has a problem with an application which is creating a lot of database connections. It takes a long time to create each connection and so this is slowing the application down. Ben thinks it would make sense to introduce a connection pool so the connections can be re-used, but he said it would be nice to be able to model various solutions and compare their relative performance.

[performance-testing-with-mocks]: /show-and-tell-27#rob-c---performance-testing-with-mocks


## James - Raspberry Pi monitoring

<%= image_tag('blog/2017-02-08-show-and-tell-29-james-rpi-monitoring.jpg', alt: 'James talking about analysing a temperature log') %>

I gave a quick update on the kit [I mentioned a couple of months back][rpi-monitoring] to monitor a vacant property. I've improved the dynamic DNS situation by changing providers - I'm now using changeip.org which seems to be a lot more reliable. I've also re-visited the property and opened up SSH access on the Raspberry Pi so I can now fix things if they go wrong.

I showed some primitive analysis of the temperature data which I'd done in Google Spreadsheets to convince myself that the central heating was working. The central heating is on a simple time-switch (no room thermostat) and it was encouraging to see that the temperature showed an upward gradient in the periods when it's supposed to be on and a negative gradient in the other periods. Therefore the heating is working. QED!

During some cold weather, I was able to use the data to make the decision to visit the property and increase the length of time the heating is switched on; James, the human thermostat!

I found some CSV data available online for the the local outside temperature and thought it would be interesting to try to model the thermodynamic characteristics of the house. I got as far as looking at this [Simple Home Heating Model][] before running out of enthusiasm.

[rpi-monitoring]: /show-and-tell-27#james-m---raspberry-pi-monitoring
[Simple Home Heating Model]: http://nicola.qeng-ho.org/housemodel/interactive.php


## James - 3-port central heating valve

<%= image_tag('blog/2017-02-08-show-and-tell-29-james-3-port-valve.jpg', alt: 'James talking about the 3-port central heating valve') %>

I waxed lyrical about [this amazing bit of engineering][midpositionvalve] which is used in many small houses across the country. I really like how the combination of a simple mechanical and electrical design provides some quite sophisticated emergent behaviour. If you're interested in learning more and you can bear the narrator's monotonous voice, [this video][how-3-port-valve-works-video] is quite good.

[midpositionvalve]: http://www.diyfaq.org.uk/plumbing/controls/midpositionvalve.htm
[how-3-port-valve-works-video]: https://www.youtube.com/watch?v=F5m8f6HN2Us


## James - GFR website conversion

I think I also talked briefly about how we're considering converting [our company website][gfr-website] from using [vanilla.rb][], a Ruby port of [vanilla][], to [Rails][]. While we like many aspects of vanilla.rb, it feels as if things like routing, layouts, partial templates, etc, sometimes work in unexpected ways. This is exacerbated by some slightly odd customisations which we've added to our website app over the years.

We've considered a few options, but we're leaning towards converting it into a database-less Rails app. Part of the thinking is that Rails is our bread and butter and so we ought to be very familiar with it. We did consider moving to a generated static app, but it felt as if this would be a bigger change and might restrict what we can do with the site in the future.

It was reassuring to hear that people didn't seem to think it was a completely crazy idea!

[gfr-website]: https://github.com/freerange/site/
[vanilla.rb]: https://github.com/lazyatom/vanilla-rb
[vanilla]: http://www.vanillasite.at/space/about
[Rails]: http://rubyonrails.org/


## Amy - micro-licensing music for sync

<%= image_tag('blog/2017-02-08-show-and-tell-29-amy.jpg', alt: 'Amy talking about micro-licensing music for sync') %>

[Hookline][] have a catalogue of music by independent artists which they license for [Sync][]. They're always looking for new ways to bring in revenue for their artists and they're currently investigating micro-licensing shorter edits of their artists' tracks for use on e.g. Youtube. It would be a bit like a high-quality stock image library, but for music. Part of the thinking is to bring in a steadier revenue stream, because while Sync deals for TV and advertising can be lucrative, they are also more unpredictable.

Amy was interested in feedback on the idea and on the best way to prototype it on their website. People came up with some suggestions for target markets in the micro-licensing space. And the consensus was to prototype the idea with a simple static page making use of something like the Stripe or Paypal javascript widget.

[Hookline]: http://hookline.tv/
[Sync]: https://en.wikipedia.org/wiki/Synchronization_rights
[woo-commerce-plugin]: https://en-gb.wordpress.org/plugins/woocommerce/

## Riccardo - Amazon Echo & Alexa

<%= image_tag('blog/2017-02-08-show-and-tell-29-riccardo.jpg', alt: 'Riccardo talking about Amazon Echo & Alexa') %>

Riccardo explained that the [Echo][amazon-echo] is essentially a big speaker with a microphone, all connected to the internet. It uses the [Alexa Voice Service][] to respond to your questions and commands, e.g. buy an item from Amazon. He went on to explain that this functionality is provided by a set of built-in "skills", but it's possible to [build your own custom skills][alexa-skills-kit] and there's even a [marketplace][alexa-skills-marketplace] where you can buy or sell skills.

He then demonstrated how to use the [Alexa developer console][alexa-developer-console] to create a simple new skill invoked by saying "Alexa: Open 'Hello World'" and responding by saying "Hello World". As I understood it, first you have to set up some "intents" which describe what phrases trigger your skill and then you define an [AWS Lambda][aws-lamda] function to perform the desired operation. Even though he didn't have an Echo device, he was able to use a simulator to test the new skill.

Riccardo mentioned that someone has built an interactive story called [The Magic Door][]. He's interested in building a [Choose Your Own Adventure][CYOA] game and he's hoping to write his Lambda functions in [ClojureScript][]. He recommended using the [Alexa Skills Kit SDK for Node.js][alexa-skills-kit-sdk-for-nodejs]. Apparently a session gets passed to the Alexa Lambda functions so it's possible to store state between invocations of multiple skills.

I suggested that if he had microphones all around the house, he could have an adventure game where you have to physically move around the house. Riccardo said that you can federate multiple microphones, so this might well be possible. Ben suggested Riccardo might be able to use [Infocom's Z-machine][z-machine], a virtual machine designed for building text adventures, or [parchment.js][], an interpreter for interactive fiction.

Finally, Ben then amused us all by telling us about the [Alexa dolls' house fiasco][alexa-dollhouse-fiasco] in which a TV news story caused lots of Echo units to order a dolls' house.

[amazon-echo]: https://developer.amazon.com/echo
[Alexa Voice Service]: https://developer.amazon.com/alexa-voice-service
[alexa-skills-kit]: https://developer.amazon.com/alexa-skills-kit
[alexa-skills-marketplace]: https://www.amazon.com/b?ie=UTF8&node=13727921011
[alexa-developer-console]: https://developer.amazon.com/edw/home.html#/skills
[aws-lamda]: https://aws.amazon.com/lambda/
[The Magic Door]: https://www.themagicdoor.org/
[ClojureScript]: https://clojurescript.org/
[alexa-skills-kit-sdk-for-nodejs]: https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs
[CYOA]: https://en.wikipedia.org/wiki/Choose_Your_Own_Adventure
[z-machine]: https://en.wikipedia.org/wiki/Z-machine
[parchment.js]: https://iplayif.com/
[alexa-dollhouse-fiasco]: https://www.youtube.com/watch?v=oI2KLIULjXc

## Ben - Board games

<%= image_tag('blog/2017-02-08-show-and-tell-29-ben.jpg', alt: 'Ben talking about card & board games') %>

Ben has been playing lots of card and board games with his kids recently. He's discoverd a couple of things which make this a lot easier:

* [Little Hands card holder](https://www.funlearning.co.uk/little-hands-card-holder)
* [Build your own dice tower](http://makezine.com/2016/11/19/building-your-own-dice-tower/)

He also showed us a bunch of games which he likes:

* [Enchanted Forest](https://boardgamegeek.com/boardgame/938/enchanted-forest) - cruel memory game - easy for kids, hard for adults
* [Catan Junior](https://boardgamegeek.com/boardgame/125921/catan-junior) - dress up as a pirate
* [My First Carcassonne](https://boardgamegeek.com/boardgame/41010/my-first-carcassonne) - don't need to be able to read
* [My First Stone Age](https://boardgamegeek.com/boardgame/191004/my-first-stone-age) - for similar reasons
* [Ghost Fightin' Treasure Hunters](https://boardgamegeek.com/boardgame/146312/ghost-fightin-treasure-hunters) (aka Geister Geister) - cooperative game - all working together to defeat game mechanic - good for kids who think they always lose when they play on their own
* [Zeus on the Loose](https://boardgamegeek.com/boardgame/22864/zeus-loose) - maths game
* [Dungeons & Dragons board games](https://boardgamegeek.com/geeksearch.php?action=search&objecttype=boardgame&q=Dungeons%20%26%20Dragons) - ham them up - big monsters - need to be able to read - wander around dungeons
* [Thunderbirds](https://boardgamegeek.com/boardgame/160610/thunderbirds) - excellent: best board game designer in the world - expansion packs make it better
* [Harry Potter: Hogwarts Battle](https://boardgamegeek.com/boardgame/199042/harry-potter-hogwarts-battle) - [deck-builder game](https://en.wikipedia.org/wiki/Deck-building_game) - 7 games - 1 per book - each one gets harder to win


## Show & Tell 30

Please [get in touch][contact] if you're interested in joining us for the next Show & Tell on Wednesday, 8th March 2017 - it'll be fun!

[contact]: /contact

:name: show-and-tell-29
:updated_at: 2017-03-02 10:29:52.279126000 +00:00
:created_at: 2017-03-02 10:29:52.279118000 +00:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 29
:layout: show-and-tell-layout
:extension: markdown
:erb: true
