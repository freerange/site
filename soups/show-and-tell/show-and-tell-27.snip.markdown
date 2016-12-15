Show and Tell 27
================

* When: Wed 14 Dec 2016
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-27]

Used a simple automator script to "police" the time each person was taking.

James M, Ben G, Edward, Rob C and Rob D.

No Tom S which meant we had to take our own photos!

## Chris R - OTP

![Chris R at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-chris-r.jpg)

TODO.

## James M - Raspberry Pi monitoring

![James M at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-james-m.jpg)

Wants to monitor a vacant property
DHT Humidity sensor + temp sensor
Rpi camera web interface
Dyndns - problems with mobile dongle changing ip fairly regularly
Showed us his Pi Zero - nifty looking little board
Didn't use Pi Zero in the end as it would've required him to solder some pins
Interesting problems having to try to think things through ahead of time - once it was in place he couldn't easily work on it
He tried hard to ensure there weren't any problems before he left it up and running.
The camera's still working OK but the temperature recording has now failed. It was finding the spreadsheet based on the name. James changed the name and the script failed. He hadn't configured SSH which means that he's now stuck until he can get back to the house.

## James M - Chess board hacking

James showed us pictures of the progress he's made with the chess computer he's been working on. He's managed to desolder the existing ribbon cable and solder on a header that currently pops sticks through the top of the chess board. The next step is to get it connected up to a Teensy that he's got connect to a breadboard.

## Ben G - Blog posts, Smalltalk (+ chess)

![Ben G talking about chess at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-chess.jpg)

Ben kicked off with a quick aside about surprising moves in chess. He found a blog post that described chess moves and how likely they were to be advantageous. Some of the results were surprising.

![Ben G talking about Viewpoints Research Initiative at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-ben-g-nile.jpg)

Wants to publish a blog post that he wrote 6 weeks ago. Got frustrated by how hard it was to animate some the visuals he'd included. Ended up exploring more of Alan Kay's work in Viewpoints research initiative.
  They've received lots of money to re-imagine programming "steps"
  They're interested in what they can build in 20,000 lines of code
    This is about the size of a book
    It'd be really interesting to sit down and read/understand a computer system in about a month.
    "Publish in a book and put on a shelf"
      Reminded me of Ben's idea of some kind of Ruby magazine that contains reference information that people would want to come back to in future.
  Interesting take on performance - imagine what we might be able to do in 20 years - work on what we might be able to do in 10 - we can then pay to get that performance now.
  NILE programming language - reimplemented Cairo + one other web rendering engine.
  Ben got some version of their text editor running in the Squeak VM.
  They talk about biological rather than mathematical systems.

## Edward - Indexing books (+ chess)

![Edward at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-edward.jpg)

"Google books for all the books I've read"
Used to manually mark anecdotes when he came across them - it's interesting to see the same anecdote being copied by multiple authors.
Decided to use a search engine to help him do this.
He's used solr to index all the ebooks he's read.
Demonstrated by searching for "first square of the chessboard". Had to enable searching of "stop words" (e.g. "of" and "the") as these are sometimes important (e.g. in the chessboard phrase in this sentence).
"Freestyle chess" - teams of humans and machines have proved to be the best combo - they can still beat machines in a way that humans no longer can.
Improvements
  He's currently indexing all the text but it'd be better if he could ignore things like the table of contents and possible any notes that appear in the book.
Edward uses Goodreads to log his reading and Amazon to review books. These both provide him with recommendations.
He made this public and now appears on the first page of google (although possibly only for his results) when searching for "everywhere but in the productivity stats".
He includes his amazon affiliate link in the links to books
  Amazon doesn't handle territories - it always sends you to .com (I think). There are libraries that handle redirection based on IP (presumably) but they'll then inject their affiliate code every x requests.
One of the good things about the system is that there's very little code - it mostly involves tweaking the search engine.
Edward worked at the Internet Archive working on similar book scanning problems so has some experience.

## Rob C - Performance testing with mocks

![Rob C at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-rob-c.jpg)

Rob talked about an idea he's had to be able to capture the performance characteristics of various components within a system. He'd like to be able to test changes to component A and get some idea of the performance impact given that we know the characteristics of B and C.

Ben mentioned something similar in that he's experienced abrupt changes to component F causing degradation to the rest of the system. Degradations that are very hard to track down.

Rob mentioned "Runtime metric meets developer: building better cloud applications using feedback" - https://scholar.google.co.uk/citations?view_op=view_citation&hl=en&user=fj5MiWsAAAAJ&citation_for_view=fj5MiWsAAAAJ:MXK_kJrjxJIC

## Rob D - Armando Iannucci

![Rob D at Show & Tell 26](/images/blog/2016-12-14-show-and-tell-27-rob-d.jpg)

https://www.youtube.com/watch?v=Sb1aQVpT-60

[attending-io-show-and-tell-27]: https://attending.io/events/gfr-show-and-tell-27/

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
