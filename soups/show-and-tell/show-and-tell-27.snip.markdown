Show and Tell 27
================

* When: Wed 14 Dec 2016
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-27]

[James][james-mead] and I were joined by [Ben G][ben-griffiths], [Edward][edward-betts], [Rob C][rob-chatley] and [Rob D][rob-dupuis] for our 27th Show & Tell.

We decided to be a bit stricter about the time people get in the spotlight this month. We've never worried about it before but thought it might be a useful thing to do; particularly to help when we have a larger group. Our very low tech solution was to use an [Automator script][automator] and the `say` command to alert people when they had 5 minutes left, 1 minute left and when their time was up. It seemed to work quite well!

Notable in his absence was [Tom S][tom-stuart]; meaning that we were deprived of our regular dose of Lambda Calculus and that we had to take our own photos!

[automator]: https://en.wikipedia.org/wiki/List_of_macOS_components#Automator
[ben-griffiths]: https://twitter.com/beng
[edward-betts]: http://edwardbetts.com/
[james-mead]: /james-mead
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://github.com/robd
[tom-stuart]: http://codon.com/

---

## Chris R - OTP

![Chris R at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-chris-r.jpg)

I presented my understanding of [one-time passwords][otp] (specifically the [HOTP][hotp] and [TOTP][totp] algorithms). I used a combination of a whiteboard and some Ruby code to demonstrate the simplicity of the algorithms and how they relate to each other. I'm hoping/planning to write about this in more detail soon.

[hotp]: https://en.wikipedia.org/wiki/HMAC-based_One-time_Password_Algorithm
[otp]: https://en.wikipedia.org/wiki/One-time_password
[totp]: https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm

---

## James M - Raspberry Pi monitoring

![James M at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-james-m.jpg)

James described the process of configuring and using a [Raspberry Pi][raspberry-pi], a camera and a [temperature/humidity sensor][dht22] to monitor a vacant property.

He started with a Raspberry Pi Zero before switching to a Raspberry Pi 2 in order to avoid having to solder the fiddly header pins. It sounds as though getting everything hooked up was relatively straight forward although he spent quite a long time trying to ensure that it'd all work correctly once he'd left it running.

He's using a [Three MiFi][three-mifi] device to provide the internet connection and `ddclient` in conjunction with [DynamicDNS][] to give it a memorable name that he can connect to. [A web interface][rpi-cam-web-interface] running on the Raspberry Pi provides access to the camera while the temperature and humidity data is being captured and recorded in a Google Spreadsheet by a [Python script][rpi-dht-sensor-logging].

James has run into a couple of problems since leaving it all set-up. The DNS address doesn't always resolve (possibly because of the frequency at which the MiFi device obtains a new IP address?) and the temperature/humidity logging stopped when James renamed the spreadsheet it was writing to! It turns out that the script he's using relies on finding the spreadsheet by name instead of key.

James has since been back to the property to restart the temperature/humidity logging and to open up a port for SSH so that he can remotely fix these sort of problems in future. He's also switched to a different dynamic DNS service, [ChangeIP][], which seems to provide a more reliable DNS lookup.

[dht22]: https://www.adafruit.com/product/385
[DynamicDNS]: https://www.dnsdynamic.org/
[rpi-cam-web-interface]: http://elinux.org/RPi-Cam-Web-Interface
[rpi-dht-sensor-logging]: https://learn.adafruit.com/dht-humidity-sensing-on-raspberry-pi-with-gdocs-logging
[raspberry-pi]: https://www.raspberrypi.org/
[three-mifi]: http://www.three.co.uk/Discover/Devices/Huawei/E5573_4G_Mobile_Wi-Fi
[ChangeIP]: http://changeip.com/

---

## James M - Chess board hacking

James went on to show us the progress he's making on hacking the computer chess board he's recently purchased. He's managed to desolder the existing ribbon cable and solder on a header in its place. Unfortunately, the small size of the board means that he's had to cut a hole for the header instead of having it all tucked away out of sight. The next step is to connect the chess board to a [Teensy][teensy] that he's got wired up in a [breadboard][breadboard].

[breadboard]: https://en.wikipedia.org/wiki/Breadboard
[teensy]: https://www.pjrc.com/teensy/

---

## Ben G - Chess

![Ben G talking about chess at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-chess.jpg)

Ben was going to talk about getting side-tracked while trying to write a blog post. But he got side-tracked and talked about chess instead. Well, at least for a minute anyway.

Ben continued the chess theme by showing us this [blog post about surprising moves in chess games][surprising-moves-in-chess-games] (this appears to be down at the moment but the [Google Cache version][surprising-moves-in-chess-game-cache] seems to work). The author used [Stockfish][stockfish] and [python-chess][python-chess] to highlight moves that might seem counterintuitive to a novice observer but turn out to be advantageous in the long term.

[python-chess]: https://github.com/niklasf/python-chess
[stockfish]: https://stockfishchess.org/
[surprising-moves-in-chess-games]: http://www.60wo.com/uncategorized/13/finding-surprising-moves-in-chess-games.html
[surprising-moves-in-chess-game-cache]: http://webcache.googleusercontent.com/search?q=cache:7Z_mVsRwYqkJ:www.60wo.com/uncategorized/13/finding-surprising-moves-in-chess-games.html+&cd=9&hl=en&ct=clnk&gl=uk

---

## Ben G - Blog posts and distractions

![Ben G talking about Viewpoints Research Initiative at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-nile.jpg)

Ben talked about a [blog post he wrote][hough-transform-beng] in order to help him understand the [Hough Transform][hough-transform]: the image recognition technique he's been using to try to recognise pieces on a chess board. He'd mostly finished writing the post when he started to investigate how to animate the illustrations he'd included to help explain the maths. This proved much harder than expected and resulted in a 6 week detour into the work of Alan Kay's [Viewpoints Research Institute][vpri].

Ben gave us a bit of an overview of STEPS (STEPS Toward Express Programming Systems) and the [Nile programming language][nile]. One of the goals of STEPS is for it to be written in a maximum of 20,000 lines of code:

> We set a limit of 20,000 lines of code to express all of the “runnable meaning” of personal computing (“from the end‐user down to the metal”) where “runnable meaning” means that the system will run with just this code (but could have added optimizations to make it run faster).

I've not been able to find a canonical set of information about the STEPS project. The information appears to be spread across [multiple reports on the VPRI site][vpri-writings] with the most up to date report being ["STEPS Toward he Reinvention of Programming, 2012 Final Report"][steps-2012].

[hough-transform-beng]: https://techbelly.github.io/writing/Hough-Transform/
[hough-transform]: https://en.wikipedia.org/wiki/Hough_transform
[nile]: https://github.com/damelang/nile
[steps-2012]: http://www.vpri.org/pdf/tr2012001_steps.pdf
[vpri]: http://www.vpri.org/
[vpri-writings]: http://www.vpri.org/html/writings.php

---

## Edward - Indexing books (+ chess)

![Edward at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-edward.jpg)

Edward showed us a recent project he's been working on to build a ["Google books for all the books I've read"][monograph].

A voracious reader; he's been manually recording anecdotes and the books they appear in for a while. He's interested in seeing the same anecdote repeated by different authors; possibly pointing at some relationship between those texts.

He's recently improved this manual process by indexing the content of all the books he's read in order to automatically track phrases he's interested in.  He's using [Solr][solr] to index the content and was pleasantly surprised by how little programming he had to do. It sounds as though most of the work is in configuring Solr by, for example, enabling the searching of [stop words][stop-words] as they often appear in the phrase he's interested.

He's currently indexing all the content of the book but can imagine a further improvement where he ignores things like the table of contents and notes.

Fortunately, Edward was able to appease our need for chess related things by showing us results for ["first square of the chessboard"][first-square-of-the-chessboard] and ["Freestyle chess"][freestyle-chess] (which is apparently combinations of humans and computers playing against each other!)

Edward includes his Amazon affiliate link on the links to the books that appear in his search results. I was interested to hear that Amazon don't attempt to redirect the visitor to the Amazon store for their country and always send them to amazon.com instead. Apparently there are third party libraries that offer this functionality but they do so at the cost of injecting their own affiliate links every so often.

[first-square-of-the-chessboard]: https://edwardbetts.com/monograph/first_square_of_the_chessboard
[freestyle-chess]: https://edwardbetts.com/monograph/Freestyle_chess
[monograph]: https://edwardbetts.com/monograph/
[solr]: http://lucene.apache.org/solr/
[stop-words]: https://en.wikipedia.org/wiki/Stop_words

---

## Rob C - Performance testing with mocks

![Rob C at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-rob-c.jpg)

Rob was interested in feedback on an idea he's been exploring about being able to test the performance of a system in a simulated environment.

He's wondering whether it'd be possible to capture the performance characteristics of various components in a system such that you could test the impact of any changes without having to deploy to a production-like environment and use production-like data.

Rob mentioned a paper titled ["Runtime metric meets developer: building better cloud applications using feedback"][runtime-metrics] that explores some similar ideas: specifically the idea of making runtime data (e.g. performance) available at development time.

If anyone has any thoughts about this I'm sure [Rob][rob-chatley] would appreciate you getting in touch.

[runtime-metrics]: https://scholar.google.co.uk/citations?view_op=view_citation&hl=en&user=fj5MiWsAAAAJ&citation_for_view=fj5MiWsAAAAJ:MXK_kJrjxJIC

---

## Show & Tell 28

Please [get in touch][contact] if you're interested in joining us for the next Show & Tell on Wednesday 11th January 2017!

[attending-io-show-and-tell-27]: https://attending.io/events/gfr-show-and-tell-27/
[contact]: /contact

:name: show-and-tell-27
:updated_at: 2016-11-25 17:53:15.402293000 +00:00
:created_at: 2016-11-25 17:53:15.402278000 +00:00
:render_as: blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 27
:extension: markdown
:layout: show-and-tell-layout
