Show and Tell 19
================

Howdi folks. This is the long overdue write-up of Show and Tell 19, the final one of 2015. We're going to take a break from hosting these events in early 2016 while I spend some time traveling around New Zealand.

Anyways. On with the writeup.

There were 7 of us for our final [Show and Tell][show-and-tell-events] at [GFR HQ 3][gfrhq-3].


## 3D pinball

[Chris Jubb][chris-jubb] joined us to show a new project he's been working on (having previously shown us his Arduino fruit machine at [Show and Tell 7][show-and-tell-7]). Chris demonstrated the software he's building to allow people to create 3D pinball games. Pinball tables are created in [Blender][blender] and the game code is programmed using JavaScript. The game that Chris is currently working on is at [makepinball.com][makepinball] and the [code is all on GitHub][makepinball-github].

Chris is filling a gap by creating this cross platform alternative to the Windows only [Future Pinball][future-pinball] and [Visual Pinball][visual-pinball].


## Elixir and Phoenix

[James M][james-mead] gave us an introduction to the [Elixir programming language][elixir] and [Phoenix web framework][phoenix].

James demonstrated a very simple web app and a websocket based chat server. I was aware of this language and framework but didn't really know anything about them so I found this introduction useful. It was particularly interesting to see how similar the code looked to Ruby and Rails.


## AIS on SDR

James has previously talked about AIS on SDR in Show and Tells [11][show-and-tell-11-ais-on-sdr] and [12][show-and-tell-12-ais-on-sdr]. Someone came across his [write-up on the wiki][ais-on-sdr-wiki-page] and got in touch to point at their work on [nmea_plus][github-nmea-plus]: An AIS and NMEA parser/decoder for Ruby. I know James is hoping to revisit the AIS project so it'll be interesting to see whether he's able to use this Gem to parse some real data.


## Egg Planes

[Ben][ben-griffiths] came across these slightly odd [egg plane models][egg-plane-models] when looking for Airfix kits for his daughter that weren't entirely military focussed. While they do still have a military slant, these models are quite cute and appear to feature female characters on the packaging.


## Steganography + Dinosaurs

[Murray][murray-steele] dug out his [stegosaurus project][murray-stegosaurus] that explores hiding data in BMP, MIDI and WAV files. Of the three, WAV files appear to work best as the audio can be played and the file can contain an unmodified version of the original data. The BMP files can be viewed as images but the original data has to be modified slightly so that it conforms to the the file format. The MIDI files can contain unmodified data but unfortunately don't actually play any audio!


## Mandelbrot set visualisation

[Tom S][tom-stuart] showed us some [visualisations of the Mandelbrot and Julia sets][tom-stuart-mandelbrot-visualisations] ([source][tom-stuart-mandelbrot-visualisations-source]) he'd put together for the [December meeting of London Computation Club][2015-12-lcc-writeup]. I was particularly fascinated by the [escape time visualisation][tom-stuart-escape-time-visualisation] that shows a familiar Mandelbrot set image being drawn (press the space bar a few times to generate some points in the page). Without understanding anything about them, I felt that this gave some insight into how they're created.

Seeing these patterns brought back some distant memory of seeing/learning about fractals on my childhood Amiga.


## Google Location Timeline

I talked a little bit about [Google Maps Timeline][google-maps-timeline] (previously Google Location history). I particularly like the ability to "check-in" to a location after the fact, without having to remember to do it at the time.


[2015-12-lcc-writeup]: https://github.com/computationclub/computationclub.github.io/wiki/The-New-Turing-Omnibus-Chapter-9-Mathematical-Research
[ais-on-sdr-wiki-page]: https://github.com/freerange/ais-on-sdr/wiki/Capturing-raw-AIS-data-using-rtl_fm-and-decoding-using-aisdecoder-v2
[ben-griffiths]: https://twitter.com/beng
[blender]: https://www.blender.org/
[chris-jubb]: https://twitter.com/mrjubb
[egg-plane-models]: http://www.hasegawausa.com/aircraft_egg.html
[elixir]: http://elixir-lang.org/
[future-pinball]: http://www.futurepinball.com/
[gfrhq-3]: http://lanyrd.com/venues/london/vfdyf/
[github-nmea-plus]: https://github.com/ifreecarve/nmea_plus
[google-maps-timeline]: https://www.google.com/maps/timeline
[james-mead]: /james-mead
[makepinball-github]: https://github.com/chrisjubb/makepinball.com
[makepinball]: http://makepinball.com/
[murray-steele]: https://twitter.com/#!/hlame
[murray-stegosaurus]: https://github.com/h-lame/stegosaurus
[phoenix]: http://www.phoenixframework.org/
[show-and-tell-11-ais-on-sdr]: /show-and-tell-11#ais-on-sdr
[show-and-tell-12-ais-on-sdr]: /show-and-tell-12#ais-on-sdr
[show-and-tell-7]: /show-and-tell-7
[show-and-tell-events]: /show-and-tell-events
[tom-stuart-escape-time-visualisation]: http://tomstuart.github.io/mandelbrot/escape.html
[tom-stuart-mandelbrot-visualisations-source]: https://github.com/tomstuart/mandelbrot
[tom-stuart-mandelbrot-visualisations]: http://tomstuart.github.io/mandelbrot/
[tom-stuart]: http://codon.com/
[visual-pinball]: http://www.vpforums.org/

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-01-25 13:30:00 +13:00
:updated_at: 2016-01-25 13:30:00 +13:00
:page_title: Show and Tell 19
:layout: show-and-tell-layout
