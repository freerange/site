Show and Tell 26
================

* When: Wed 9 Nov 2016
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-26]

![Show & Tell 26 at Forge & Co](/images/blog/2016-11-09-show-and-tell-26-group.jpg)

We had a full house for Show & Tell 26, including a couple of new faces. [Riccardo][riccardo-cambiassi] was joined by his colleagues from [100 Starlings][100-starlings]: [Alex][alex-stubbs] and Laslow (apologies if I've mis-spelled this!). It was good to see Alex having last seen him about 6 years ago when we worked at Headshift. We were also joined by [Ben G][ben-griffiths], [James A][james-adam], [Murray][murray-steele], [Pablo][pablo-manrubia], [Rob C][rob-chatley], [Tadas][tadas-tamosauskas] and [Tom S][tom-stuart].

[100-starlings]: https://github.com/100Starlings
[alex-stubbs]: https://twitter.com/alexstubbs
[ben-griffiths]: https://twitter.com/beng
[james-adam]: http://lazyatom.com/
[murray-steele]: https://twitter.com/#!/hlame
[pablo-manrubia]: http://pmanrubia.info/
[riccardo-cambiassi]: https://github.com/bru
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[tom-stuart]: http://codon.com/
[tadas-tamosauskas]: http://codeme.lt/

---

### Tom S - Lambda calculus

![Tom S at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-tom-s.jpg)

Tom demoed the latest iteration of his tool to help people interact with and understand Lambda Calculus (see Show & Tell 24 for notes about the previous version). Based on feedback about the Ruby version (both from the London Computation Club and elsewhere) Tom has ported it to JavaScript and made an impressive looking web GUI.

The similarities between RSpec and Jasmine meant that he was able to programmatically convert his Ruby tests to JavaScript. Having these tests in place made it _relatvely_ trivial to implement all the functionality in JavaScript.

With the library in place, he was able to use React GUI to build the interface over the top. He then used [create-react-app] to convert his "lashed-together React prototype to a modern toolchain (Babel precompilation with Webpack, a linter, a minifier, a command-line test runner etc)"

I'm really impressed by Tom's perseverence with this particular problem and was happy to hear that the latest version seems to be doing its job. Tom now gets questions about Lambda Calculus rather than the tool he's using to try to teach it.

[create-react-app]: https://github.com/facebookincubator/create-react-app

---

### James A - Contagion

![James A at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-james-a-science-museum-lates.jpg)

James A described his involvement in Contagion: a Science Museum Lates event in October.

He built software to help The London School of Hygiene & Tropical Medicine model and illustrate the spread of infectious diseases using the visitors at the event.

Visitors were given stickers with QR codes. The QR codes contained a URL that included a number. This

26 Oct Science Museum Lates
* http://www3.imperial.ac.uk/newsandeventspggrp/imperialcollege/eventssummary/event_21-10-2016-11-35-16
* James's tweet about it - https://twitter.com/lazyatom/status/791382964336721926
* Demonstrate spread of disease
* "Marketing exercise for the university" (which?)
* Largest game they've run to date
* They used to use pegs + codes but have now switched to QR codes
* Built a visualisation of the spread of disease
* Almost no programming required

---

### James A - Thermostat

![James A at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-james-a-thermostat.jpg)

Frustrated with having to leave his chair to adjust the heating, James has been exploring how to make his life easier by connecting his thermostat to a [Spark Core][spark-core]. The combination of the Wi-Fi enabled Spark Core and the [Particle Cloud API][particle-cloud-api] allowed James to build a simple webapp that allowed him to turn the heating on and off from the comfort of his chair. James was particularly impressed by the ease at which the Spark Core handles HTTP, particularly when contrasting it with the pain of trying to get an Arduino to deal with HTTP.

With this basic system in place, he added a [Raspberry Pi Zero][raspberry-pi-zero] and temperature sensor so that he could enable/disable the heating based on the ambient temperature of the room. He did this by using [Dweet][dweet] to send the temperature data to an app running on the web.

He finished up by showing us the next version of the app that allows him to set the temperature based on a schedule.

[dweet]: https://dweet.io/
[particle-cloud-api]: https://docs.particle.io/reference/api/
[raspberry-pi-zero]: https://www.raspberrypi.org/products/pi-zero/
[spark-core]: https://www.adafruit.com/product/2127

---

### Alex - Hardware time tracker

![Alex at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-alex-s.jpg)

Alex talked about and showed us his [Espruino Pico][espruino-pico]. It sounds a bit similar to an Arduino or Raspberry Pi but comes with the [Espruino][espruino] JavaScript interpreter and a web based development environment. Alex sounds particularly interested in the soon-to-be-available [Puck.js][puck-js]. If I understood correctly, he's imagining making use of the built-in Magnetometer to build a time tracking app that works by rotating the Puck.js to point at a particular project.

[espruino]: https://www.espruino.com/
[espruino-pico]: https://www.espruino.com/Pico
[puck-js]: https://www.kickstarter.com/projects/gfw/puckjs-the-ground-breaking-bluetooth-beacon

---

### Ben - Chess fun times

![Ben at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-ben-g-chess-1.jpg)

![Ben demoing chess board image recognition at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-ben-g-chess-2.jpg)

Ben demoed the chess project that he, James and I worked on in [weeks 407][week-407-fun-times] and 408.

He gave a brief overview of how we'd approach the problem before diving straight in and showing the game we'd built. Everyone seemed suitably impressed by the incredibly atmospheric dynamic sound track that accompanied the game :-) [Check it out][chess-game]!

Ben then went into some detail about the image recognition work he'd been doing in our absence. The hope is that we can add dynamic audio tracks to real games of chess although it looks like there's more work required before this will be possible.

[chess-game]: https://techbelly.github.io/game-soundtrack/webaudio/
[week-407-fun-times]: /week-407#fun-times

---

### Rob C - Education for Engineers

![Rob C at Show & Tell 26](/images/blog/2016-11-09-show-and-tell-26-rob-c.jpg)

Rob went into more detail about his teaching process and systems that he demonstrated in [Show & Tell 24][show-and-tell-24].

I hadn't quite appreciated how much of the system that Rob described previous is actually in place. It's certainly more advanced that I'd envisaged from the demo last time.

Despite being fairly full featured there are still areas that Rob would like to improve (e.g. make it possible to use the system outside of the computing department) and he used this opportunity to ask for feedback on some of his ideas.

There were lots of suggestions from the group, particularly around the idea of utilising existing software (e.g. GitHub) or at least existing terminology (e.g. branches and Pull Requests). I really hope Rob found it useful and look forward to hearing about how it's evolved at a future Show and Tell.

[show-and-tell-24]: /show-and-tell-24#education-for-engineers

[attending-io-show-and-tell-26]: https://attending.io/events/gfr-show-and-tell-26/

:name: show-and-tell-26
:updated_at: 2016-10-27 12:05:21.318640000 +01:00
:created_at: 2016-10-27 12:05:21.318624000 +01:00
:render_as: blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 26
:extension: markdown
:layout: show-and-tell-layout
