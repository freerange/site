Week 176
--------

[Harmonia][], we need to talk.

I know you are doing your best to do [what we asked you to][harmonia-blog]. I know you're trying really hard. But seriously? Five in a row?

At the moment there are four of us in the company, and there are (roughly) four tasks that Harmonia assigns each week. The number of different assignment permutations is 4!, or 4 * 3 * 2 * 1 == 24. So any particular combination has a 1/4! chance of being selected, and the same choice five times has a (1/4!)<sup>5</sup> chance, or 0.000000125586741[^probability].

So either I am very lucky, or Harmonia's randomness is flawed, or something else. My intuition is that it's something else, probably in the region of how tasks are deallocated at the start of the week.

Anyway, we're all here now, so let's get on with it shall we?


Silverback
-----------

<a href="http://www.flickr.com/photos/markhurrell/7262471928/"><img style="float: right;" src="http://farm8.staticflickr.com/7220/7262471928_a410752c95_q_d.jpg" /></a>This was our second week of working on [Inside Government]'s second deliverable, or GDS005 (codename "Silverback"; ask [Mark](https://twitter.com/markhurrell/status/205696265021947904)) as it's now apparently known.

This week was front-loaded with more meetings and conversations about how to best coordinate development between 'Mainstream' (the citizen-facing side of the single domain project, addressing common needs and questions) and 'Whitehall' (the part that the government departments use to communicate with interested citizens).

{l james-mead,James M} finished his epic model renaming effort; {l tom-ward,Tom} has been working on giving the people involved in government their own pages (as opposed to their roles); {l james-adam,I} have been reworking the admin interface CSS to try and mitigate usability erosion as we engineering-types add new functionality[^worse], and {l chris-roos,Chris} has been working with our [GDS][] front-end friends to help them get their changes into the codebase without breaking the build.


Miscellany
-------

The "[other Freerange](http://www.free-range.org.uk/)" has started, which means a lot of mentions of [@freerange](http://twitter.com/freerange) on Twitter that have nothing to do with us. Splendid!

<blockquote class="twitter-tweet tw-align-center"><p>An update to my software is available! It stops me from vomiting errors when the server has a hiccup! Get it now! <a href="https://t.co/UGotHkoq" title="https://github.com/freerange/printer/blob/master/printer.ino">github.com/freerange/prin…</a></p>&mdash; Printer (@gfrprinter) <a href="https://twitter.com/gfrprinter/status/208311829259235329" data-datetime="2012-05-31T21:39:45+00:00">May 31, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I fixed a [Printer bug](https://github.com/freerange/printer/issues/12) that will stop printers spewing error messages (which is in large part due to [another bug](https://github.com/freerange/printer/issues/17) anyway). I shaved more than 2k off the [Printer][] [Arduino sketch](https://github.com/freerange/printer/blob/master/printer.ino). This is far more satisfying than it has any right to be. I also met with comrade {l jason-cale,Jason Cale} to talk about making a ceramic casing for a printer; I'm really excited about putting the electronics into something handmade and beautiful.

In other small-electronics news, my [Raspberry Pi](http://raspberrypi.org) arrived on Friday! Now GFR has two (James M has the other one), but nothing planned for them to do yet.

A quick scan through our [Sauron][] archive doesn't reveal anything else notable in the week, so I'll leave it there. Tom and Chris are now off on holidays for a week; Team James will be ably holding the fort for the Jubilee-shortened week ahead.

Right: [Harmonia][], let's have that chat...

-- James



[^probability]: Strictly speaking this isn't true, since all I'm concerned with for the moment is the number of times *I* have been chosen, whereas the probability above describes the chance that *everyone* was picked for the same task. If we imagine that a four-sided die with our names on its faces was rolled on five independent occasions, the probability that one name would appear all five times is (1/4)<sup>5</sup> == 1/1024 == 0.0009765625.

[^worse]: The phrase I've been using is "this should mean we make things worse _much_ more slowly".
[Harmonia]: http://github.com/freerange/harmonia
[harmonia-blog]: /harmonia
[Inside Government]: /inside-government
[GDS]: http://digital.cabinetoffice.gov.uk
[Printer]: /printer
[Sauron]: http://github.com/freerange/sauron

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-adam
:created_at: 2012-06-01 12:49:00 +01:00
:updated_at: 2012-06-01 12:49:00 +01:00
:page_title: Week 176