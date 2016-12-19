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

I presented my understanding of [one-time passwords][otp] (specifically the [HOTP][hotp] and [TOTP][totp] algorithms). I used a combination of a whiteboard and some Ruby code to demonstrate the simplicity of the algorithms and how they relate to each other. I'm hoping/planning to write about this in more detail soon so I'll leave this here for now.

[hotp]: https://en.wikipedia.org/wiki/HMAC-based_One-time_Password_Algorithm
[otp]: https://en.wikipedia.org/wiki/One-time_password
[totp]: https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm

---

## James M - Raspberry Pi monitoring

![James M at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-james-m.jpg)

James described the process of configuring and using a [Raspberry Pi][raspberry-pi], camera and a [temperature/humidity sensor][dht22] to monitor a vacant property.

He started with a Raspberry Pi Zero before switching to a Raspberry Pi in order to avoid soldering. It sounds as though getting everything hooked up was relatively straight forward although he spent quite a long time trying to ensure that it'd all work correctly once it was left.

He's using a [Three MiFi][three-mifi] device to provide the Internet connection and [DynDNS][dyndns] to give it a memorable name that he can connect to. A web interface running on the Raspberry Pi provides access to the camera while the temperature and humidity data is being recorded in a Google Spreadsheet.

James has run into a couple of problems since leaving it all set-up. The DynDNS address doesn't always resolve (possibly because of the frequency at which the MiFi device obtains a new IP address?) and the temperature/humidity logging stopped when James renamed the spreadsheet it was writing to! It turns out that the script he's using relies on finding the spreadsheet by name instead of key.

James has since been back to the property to restart the temperature/humidity logging and to enable SSH so that he can remotely fix these sort of problems in future.

[dht22]: https://www.adafruit.com/product/385
[dyndns]: http://dyn.com/dns/
[raspberry-pi]: https://www.raspberrypi.org/
[three-mifi]: http://www.three.co.uk/Store/Mobile_Broadband

---

## James M - Chess board hacking

James went on to show us the progress he's making on hacking the computer chess board he's recently purchased. He's managed to desolder the existing ribbon cable and solder on a header in its place. Unfortunately, the small size of the board means that he's had to cut a hole for the header instead of having it all tucked away out of sight. The next step is to connect the chess board to a [Teensy][teensy] that he's got wired up in a [breadboard][breadboard].

[breadboard]: https://en.wikipedia.org/wiki/Breadboard
[teensy]: https://www.pjrc.com/teensy/

---

## Ben G - Blog posts, Smalltalk (+ chess)

![Ben G talking about chess at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-chess.jpg)

Ben was going to talk about getting side-tracked while trying to write a blog post. But he got side-tracked and talked about chess instead. Well, at least for a minute anyway :-)

Ben continued the chess theme by showing us this [blog post about surprising moves in chess games][surprising-moves-in-chess-games] (this appears to be down at the moment but the [Google Cache version][surprising-moves-in-chess-game-cache] seems to work). The author used [Stockfish][stockfish] and [python-chess][python-chess] to highlight moves that might seem completely bizarre to a novice observer but turn out to be advantageous in the long term.

[python-chess]: https://github.com/niklasf/python-chess
[stockfish]: https://stockfishchess.org/
[surprising-moves-in-chess-games]: http://www.60wo.com/uncategorized/13/finding-surprising-moves-in-chess-games.html
[surprising-moves-in-chess-game-cache]: http://webcache.googleusercontent.com/search?q=cache:7Z_mVsRwYqkJ:www.60wo.com/uncategorized/13/finding-surprising-moves-in-chess-games.html+&cd=9&hl=en&ct=clnk&gl=uk

![Ben G talking about Viewpoints Research Initiative at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-nile.jpg)

Continuing with the chess theme; Ben talked about a blog post he wrote in order to help learn about and understand the [Hough Transform][hough-transform]. He'd mostly finished writing when he became frustrated by the difficulty of trying to animate the illustrations he'd included to help explain the maths. This frustration led him to re-explore the work of Alan Kay's Viewpoints Research Initiative.


[hough-transform]: https://en.wikipedia.org/wiki/Hough_transform

Wants to publish a blog post that he wrote 6 weeks ago. Got frustrated by how hard it was to animate some the visuals he'd included. Ended up exploring more of Alan Kay's work in Viewpoints research initiative.
  They've received lots of money to re-imagine programming "steps"
  They're interested in what they can build in 20,000 lines of code
    This is about the size of a book
    It'd be really interesting to sit down and read/understand a computer system in about a month.
    "Publish in a book and put on a shelf"
      Reminded me of Ben's idea of some kind of Ruby magazine that contains reference information that people would want to come back to in future.
  Interesting take on performance - imagine what we might be able to do in 20 years - work on what we might be able to do in 10 - we can then pay to get that performance now.
  NILE programming language - reimplemented Cairo + Skia web rendering engine.
  Ben got some version of their text editor running in the Squeak VM.
  They talk about biological rather than mathematical systems.

https://github.com/damelang/nile
https://techbelly.github.io/writing/Hough-Transform/#asterisk-1

---

## Edward - Indexing books (+ chess)

![Edward at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-edward.jpg)

Edward talked about a project he's been working on recently to build a ["Google books for all the books I've read"][monograph].

A voracious reader; he's been manually recording anecdotes and the books they appear in for a while. He's interested in how the same anecdotes are used by different authors, possibly pointing at some relationship between those texts.

He's recently improved this manual process by indexing the content of all the books he's read in order to automatically track phrases he's interested in.  He's using [Solr][solr] to index the content and was pleasantly surprised by the ease at which he could build the functionality. It sounds as though most of the work is in configuring Solr by, for example, enabling the searching of [stop words][stop-words] as they often appear in the phrase he's interested.

He's currently indexing all the content of the book but can imagine a further improvement where he ignores things like the table of contents and notes.

Fortunately, Edward was able to appease our need for chess related things by showing us results for ["first square of the chessboard"][first-square-of-the-chessboard] and ["Freestyle chess"][freestyle-chess]. Freestyle chess sounds like an evolution of chess that pits teams of humans and computers against each other.

[first-square-of-the-chessboard]: https://edwardbetts.com/monograph/first_square_of_the_chessboard
[freestyle-chess]: https://edwardbetts.com/monograph/Freestyle_chess
[monograph]: https://edwardbetts.com/monograph/




"Freestyle chess" - teams of humans and machines have proved to be the best combo - they can still beat machines in a way that humans no longer can.
Edward uses Goodreads to log his reading and Amazon to review books. These both provide him with recommendations.
He made this public and now appears on the first page of google (although possibly only for his results) when searching for "everywhere but in the productivity stats".
He includes his amazon affiliate link in the links to books
  Amazon doesn't handle territories - it always sends you to .com (I think). There are libraries that handle redirection based on IP (presumably) but they'll then inject their affiliate code every x requests.
One of the good things about the system is that there's very little code - it mostly involves tweaking the search engine.
Edward worked at the Internet Archive working on similar book scanning problems so has some experience.

---

## Rob C - Performance testing with mocks

![Rob C at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-rob-c.jpg)

Rob talked about an idea he's had to be able to capture the performance characteristics of various components within a system. He'd like to be able to test changes to component A and get some idea of the performance impact given that we know the characteristics of B and C.

Ben mentioned something similar in that he's experienced abrupt changes to component F causing degradation to the rest of the system. Degradations that are very hard to track down.

Rob mentioned "Runtime metric meets developer: building better cloud applications using feedback" - https://scholar.google.co.uk/citations?view_op=view_citation&hl=en&user=fj5MiWsAAAAJ&citation_for_view=fj5MiWsAAAAJ:MXK_kJrjxJIC

---

## Rob D - Armando Iannucci

![Rob D at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-rob-d.jpg)

https://www.youtube.com/watch?v=Sb1aQVpT-60

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
