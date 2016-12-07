Show and Tell 26
================

* When: Wed 9 Nov 2016
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-26]

### Attendees

Me
James M
Ben G
Pablo
Tadas
Rob C
Laslow
Tom S
Riccardo
Alex
James A
Murray

### Tom S - Lambda calculus

Tom demo'd the latest iteration of his tool to help people interact with and understand Lambda Calculus (see Show & Tell 24 for notes about the previous version). Based on feedback about the Ruby version (both from the London Computation Club and elsewhere) Tom has ported it to JavaScript and made an impressive looking web GUI.

The similarities between RSpec and Jasmine meant that he was able to programmatically convert his Ruby tests to JavaScript. Having these tests in place made it _relatvely_ trivial to implement all the functionality in JavaScript.

With the library in place, he was able to use React GUI to build the interface over the top.

The whole thing is brought together using Webpack.

I'm really impressed by Tom's perseverence with this particular problem and was happy to hear that the latest version seems to be doing its job. Tom now gets questions about Lambda Calculus rather than the tool he's using to try to teach it.


### James A - Science Museum Lates

26 Oct Science Museum Lates
* http://www3.imperial.ac.uk/newsandeventspggrp/imperialcollege/eventssummary/event_21-10-2016-11-35-16
* James's tweet about it - https://twitter.com/lazyatom/status/791382964336721926
* Demonstrate spread of disease
* "Marketing exercise for the university" (which?)
* Largest game they've run to date
* They used to use pegs + codes but have now switched to QR codes
* Built a visualisation of the spread of disease
* Almost no programming required

### James A - Thermostat

James was

James showed us how he's been

* Bad thermostat in his house
* Could've bought something (e.g. Nest) but decided it'd be fun to make something himself
* It was surprisingly easy
* He used a relay and [Spark Core][spark-core]. Spark Core appears to be owned by Particle? Although it's not clear you can still buy them.
* USP of board is that you don't have to think about HTTP - contrast this with Arduino where you have to interact with HTTP at a very low level
* Particle HTTP API - 3rd party service?
* First version of the web app - heat-o-tron - allowed him to turn the heating on/off from his computer - i.e. without having to get up and go downstairs
* Using [Dweet][dweet] to send temp. data from [Raspberry Pi Zero][raspberry-pi-zero] - this allows him to build a thermostat by turning the heater on if the temperature isn't at a set level
* Next version allows him to set a timer for the heating system to be turned on/off on a schedule

[dweet]: https://dweet.io/
[raspberry-pi-zero]: https://www.raspberrypi.org/products/pi-zero/

### Alex - Hardware time tracker

* [Espruino][espruino] - £25
* Battery powered 4 year life
* USB powered
* Chrome development environment
* Runs JavaScript
* Includes direction sensor and temperature sensor
* Fibbo? Mesh network
  * £40 for 1/2 switch device
* Esprino / [Puck.js][puck-js]
* Use case
  * Time tracking with a physical device - Button on/off
  * Point at time/client? on a piece of paper

[espruino]: https://www.espruino.com/
[puck-js]: https://www.kickstarter.com/projects/gfw/puckjs-the-ground-breaking-bluetooth-beacon

### Ben/James/Chris

* Ben has migraines
* Been playing more physical games with the kids (e.g. card games)
* Interesting idea to add soundtracks to games - do it manually by playing soundtracks but it'd be good if the music could react to what's happening in the game
* We decided to focus on chess
* Rules engines are relatively easy to use
* Amazing what you can now achieve using JS alone
* Ben moved on to image recognition version so that it could recognise real chess board
* Someone said that it "sounds like how I imagine chess"

### Rob C

* Continuation of the demo he gave last time
* More frequently test students
  * Problem of more frequently needing to mark assignments
* CI like system for students to push their responses to tests and have them automatically marked against a set number of criteria
* They'd like to make it usable outside of the computing department
* Rob was mostly asking for feedback on what they might try
* I think they're using a combination of Gitlab and some inhouse software for the current system
* Create all repos for all students - what does this mean?
* Main objective of the system is to get more feedback to the students quicker
* Code wars - what does this mean?
  * Can run tests against students solution
* Lots of ideas from the group
  * Focussed on using familiar tools to help
    * e.g. GitHub, PRs, branches and tags

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
