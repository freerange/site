Show and Tell 32
================

* When: Wed 10 May, 2017
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io](https://attending.io/events/gfr-show-and-tell-32/)
* Attendees: [Ben G][ben-griffiths], [Chris][chris-lowis], [Leo][leo-cassarini], [James M][james-mead], [Tom S][tom-stuart], [Paul P][paul-pod]

[chris-lowis]: /chris-lowis
[james-mead]: /james-mead
[ben-griffiths]: https://twitter.com/beng
[leo-cassarini]: https://twitter.com/cassarani
[tom-stuart]: http://codon.com/
[paul-pod]: http://neuromantics.net/


## James M - Sequence diagrams

I've always thought the most useful [UML][] diagram is the [Sequence Diagram][]. Many years ago I played around with the idea of generating a sequence diagram by tracing application execution, mainly in the context of characterising automated tests.

Recently we've been busy refactoring a legacy Rails web app in which most requests were handled by a very large number of objects, i.e. many, many levels of indirection. Early on in the process I often found myself sketching sequence diagrams to help me understand what was going on. So I've recently been playing around again with the idea of generating such diagrams by tracing application execution.

I demonstrated using [Ruby 2's TracePoint][tracepoint-docs] to generate output suitable for [js-sequence-diagrams][], firstly for a single web request using [Rack][] middleware and then for a set of specs using an [RSpec around hook][rspec-around-hook].

This was definitely a work-in-progress and not a polished solution, but I was keen to get some feedback on whether people thought it could be useful. One of the main problems I'd run into was how cluttered the diagrams are with calls to objects outside the application, i.e. objects in Rails, other gems, and the Ruby standard library. I'd made some attempt to remove this clutter, but there's more work to do on that front.

I'm keen to take this work a bit further and, for example, implement an [RSpec formatter][rspec-custom-formatters] to output sequence diagrams for specs.

<%= image_tag('blog/2017-05-10-show-and-tell-32-james-m.jpg', alt: 'James M - Sequence Diagram') %>

[UML]: https://en.wikipedia.org/wiki/Unified_Modeling_Language
[Sequence Diagram]: https://en.wikipedia.org/wiki/Sequence_diagram
[tracepoint-docs]: http://ruby-doc.org/core-2.0.0/TracePoint.html
[Rack]: http://rack.github.io/
[js-sequence-diagrams]: https://bramp.github.io/js-sequence-diagrams/
[rspec-around-hook]: https://relishapp.com/rspec/rspec-core/v/3-6/docs/hooks/around-hooks
[rspec-custom-formatters]: https://relishapp.com/rspec/rspec-core/v/2-6/docs/formatters/custom-formatters


## Paul P - Pitch to BBC

Paul took us through a presentation which he had previously used in a pitch to the BBC. The competitive brief for which his previous company had pitched was to encourage online participation by "makers" following the success of shows like [The Great British Bake-off][bbc-bake-off]. It was interesting to hear him explain how he'd made some of the slides.

Paul mainly uses Photoshop and Illustrator (he says this is "old school" compared to the currently-popular [Sketch][]). One approach was to take photos and trace over them to creating pencil-like drawings. These help to turn attention away from the person in the photo and onto the device they're holding. Another approach was to use a collection of vector images in Illustrator to create some isometric perspective illustrations of the applications in use in physical spaces.

Ultimately they didn't win the bid and as a result these slides will probably never see the light of day again. It's a bit sad to think of all the work that goes into presentations like this which never get a wider audience.

[bbc-bake-off]: http://www.bbc.co.uk/programmes/b013pqnm
[Sketch]: https://www.sketchapp.com/


## Ben G

### Temperature logger

Ben explained how he'd built a temperature logger using a [Particle Photon][] board with a [temperature sensor][grove-temperature-sensor] connected via the [Grove system][]. He also connected a [4-digit display][grove-4-digit-display] to display the current temperature.

He had to write a bit of code and use a bit of trial and error to convert the input signal from the temperature sensor into degrees Celsius, but it was then relatively trivial to display that figure and send it to the [Particle cloud][].

He had then used an IFTTT applet to [write each Particle event to a Google Spreadsheet][ifttt-write-particle-event]. This means that each time the app running the Photon board sends a value to the Particle cloud, that value is written to a new row in a Google spreadsheet.

Apparently the temperature sensor was accidentally hidden behind some furniture and was forgotten for some months. Ben discovered that the IFTTT applet had reached the maximum number of rows in a Google spreadsheet and had been forced to create several more spreadsheets!

<%= image_tag('blog/2017-05-10-show-and-tell-32-ben-g-particle.jpg', alt: 'Ben G - Temperature Logger') %>

[Particle Photon]: https://www.particle.io/products/hardware/photon-wifi-dev-kit
[grove-temperature-sensor]: http://wiki.seeed.cc/Grove-Temperature_Sensor/
[Grove system]: http://wiki.seeed.cc/Grove_System/
[grove-4-digit-display]: http://wiki.seeed.cc/Grove-4-Digit_Display/
[Particle cloud]: https://www.particle.io/products/platform/particle-cloud
[ifttt-write-particle-event]: https://ifttt.com/applets/368678p-write-particle-event-to-google-spreadsheet-row


### Tutankhamun Quiz

Next I asked Ben about a [tweet he'd sent about giving programming advice to his son][beng-tweet-programming-advice]. Apparently there's a running joke in his household that all his son's homework assignments are turned into computer projects. In the week in question, his son was supposed to be learning about [Tutankhamun][], so he built a quiz game using [Scratch][] which asked questions about the pharaoh. There was a picture of an [Egyptian mummy][] and if you got a question wrong, some of the bandages were removed [hangman-style][hangman-game] to reveal a skeleton.

At one point Ben suggested his son could remove a line of code, but his son (correctly) said that removing it would break the program and followed that by saying "Is this really your job, Dad?"! Ben explained this by saying that his son can keep much more stuff in his head at one time than Ben can. I definitely know this feeling! Anyway, kudos to Ben for sharing this moment!

<%= image_tag('blog/2017-05-10-show-and-tell-32-ben-g-scratch.jpg', alt: 'Ben G - Tutankhamun Quiz') %>

[beng-tweet-programming-advice]: https://twitter.com/beng/status/861316361657647105
[Tutankhamun]: https://en.wikipedia.org/wiki/Tutankhamun
[Scratch]: https://scratch.mit.edu/
[Egyptian mummy]: https://en.wikipedia.org/wiki/Mummy
[hangman-game]: https://en.wikipedia.org/wiki/Hangman_(game)


## Tom S - Ikea Trådfri

First Tom setup two of the [Trådfri][] wireless bulbs and showed us how to control them with the wireless dimmer. The latter is just a disc which contains an accelerometer and you can control any paired bulbs by rotating it in any orientation - it's actually pretty cool! He said he wanted to make it clear that you don't need the [Trådfri gateway][trådfri-gateway] to do this, because that isn't made clear on the website.

Next he showed us how you can use the gateway in conjunction with a wireless access point to control the bulbs individually from an app on your phone via the wireless network (no internet required). As well as turning the bulbs on/off and controlling their brightness, you can also control their colour temperature.

<%= image_tag('blog/2017-05-10-show-and-tell-32-tom-s-tradfri-1.jpg', alt: 'Tom S - Ikea Trådfri') %>

Apparently the gateway, dimmer and bulbs all communicate over a [Zigbee][] wireless network using the HTTP-like [CoAP][] protocol over UDP encrypted using [DTLS][]. Tom has written [a Ruby gem][tradfri-gem] to allow you to control the bulbs from a Ruby application. The gem talks to the gateway by shelling out to the `coap-client` program that comes with [`libcoap`][libcoap]. The gateway advertises itself with [DNS-SD][], so the gem can discover it automatically without you having to specify an IP address. To demonstrate the gem, he ran a script which looped through the bulbs randomly setting their brightness and colour temperature.

Lastly, Tom explained that he had used his gem to integrate his Trådfri lighting system with a [HomeKit][] bridge (maybe [this one][homebridge]?) running on a Raspberry Pi. This allows him to set different lighting configurations triggered things like the time of day, a [geo-fence][], etc.

<%= image_tag('blog/2017-05-10-show-and-tell-32-tom-s-tradfri-2.jpg', alt: 'Tom S - Ikea Trådfri') %>

[Trådfri]: http://www.ikea.com/gb/en/products/lighting/smart-lighting/
[trådfri-gateway]: http://www.ikea.com/gb/en/products/lighting/smart-lighting/tr%C3%A5dfri-gateway-white-art-20337807/
[tradfri-gem]: https://github.com/tomstuart/tradfri
[Zigbee]: http://www.zigbee.org/
[CoAP]: http://coap.technology/
[DTLS]: https://wiki.wireshark.org/DTLS
[libcoap]: https://libcoap.net/
[DNS-SD]: https://en.wikipedia.org/wiki/Zero-configuration_networking#DNS-based_service_discovery
[HomeKit]: https://developer.apple.com/homekit/
[homebridge]: https://github.com/nfarina/homebridge
[geo-fence]: https://en.wikipedia.org/wiki/Geo-fence


## Post-match analysis

Usually after the meeting we retire to the bar downstairs at Forge & Co for a drink or two, but this time it was pretty packed, so we headed to [the Reliance][] instead where we found a table upstairs.

[the Reliance]: http://www.thereliancepub.co.uk/


## Show & Tell 33

Please [get in touch][contact] if you're interested in joining us for the next Show & Tell on Wednesday, 14th June 2017.

[contact]: /contact

:name: show-and-tell-32
:updated_at: 2017-05-16 09:12:42.533970000 +01:00
:created_at: 2017-05-16 09:12:42.533963000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 32
:layout: show-and-tell-layout
:extension: markdown
:erb: true
