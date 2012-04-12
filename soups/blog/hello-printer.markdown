Hello, Printer
==============

For over a year, I have been playing around with printing things out on a receipt printer. Recently, a few accidents of implementation gave more life to my tinkerings than I had originally intended.

![Printer](/images/printer/14-breadboard.JPG)

**TL;DR**: In a nutshell, I've accidentally built a software system that makes it easy for **YOU** to:

* [build your own small internet-connected printers](https://github.com/freerange/printer/wiki/Making-your-own-printer),
* [produce customised content](https://github.com/freerange/printer/wiki/Building-content-services) for them, and
* [share that content](https://github.com/freerange/printer/wiki/Architecture) with other people who also have small internet-connected printers.

I'm ready to share, and I'd like you to get involved, and I will explain how [at the bottom of this post](#skip-to-the-end). But before that -- if you can stand to wait -- indulge me in some introspection.

I am often asked *"why are you doing this printing stuff?"* or *"what is this all for?"*. These are good questions. I struggle to answer them. The truth is: **I don't really know why**. I wish I could tell you. I can't even really justify it. There may be no practical purpose for this.

But: I have a hunch that there's something interesting to be explored.

If you're really impatient, you can [skip to the end](#skip-to-the-end) to find out what I've done, but first I wanted to explain how I got here from essentially _no-clue-what-I-was-trying-to-do_.

It's important to me that you understand that **there was no grand plan**. I didn't have any sort of vision. The solution to each problem pointed in a fairly straightforward way to the solution of the next problem, and so the evolution of my original goal into the idea I'll describe at the end is just one simple step after another.

But the best way to understand is to simply _start from the start_. Really, I just wanted to _finish_ something.

## Finishing Timmy

A year ago, we used a receipt printer to print SMS messages using the [hashblue API](https://api.hashblue.com) that we built for O2.

I called it [Timmy Printface][timmy]:

![Timmy](/images/blog/timmy-behind-the-scenes.jpg)

When I made [Timmy Printface][timmy], it was designed in large part to market something a client asked us to build back at the client -- to help them understand the value of what we had done.

![Timmy printing a text message](/images/printer/0-timmy.jpg)

But in terms of software, it was a [hack][hack].

Later, [I was asked to enhance Timmy][hackcircus] to do more -- to print instagrams, and conduct a pseudo-dialogue via tweets. I dusted off the hack, bodged some more bits on, and nursed Timmy's laptop brain for a day as it crashed and misbehaved and generally ran with all the reliability and ease that you might expect from a hacky, flaky piece of software.

![Timmy printing instagrams](/images/printer/2-timmy-instagram.JPG)

As someone in [the business of producing software](/), I don't get a lot of satisfaction out of long-lived hacks. Our clients tend to prefer software that runs reliably, and so it's not surprising that we tend to enjoy creating software that is robust and well-designed.

Timmy was not robust. Or well designed.

![Timmy breaking](/images/printer/1-timmy-error.JPG)

Rather than letting the hack fester in the back of my mind, I decided to try and polish it into a simple, reliable tool that I could pick up and use later, should the occasion arise.

There's only one thing I wanted to *achieve*, and that was to "finish it", whatever that actually meant. In doing so, by accident, I think I've stumbled upon something that's interesting enough to share.

## Beyond Timmy

Since Timmy, I decided it would be good to have my own printer to play with, rather than relying too much on the original (which was on loan from [RIG](http://www.riglondon.com)-and-[Newspaper Club](http://www.newspaperclub.com/)'s [Tom Taylor](http://tomtaylor.co.uk/)).

So I bought a couple on eBay.

I didn't want to spend too much money (not having that much of an idea of why I was doing this made me reluctant to throw much money at it), but it turns out that you get what you pay for.

### I'm not great with electronics

The first didn't come with a power supply, or paper, or the extremely proprietary cables required to communicate with it. I managed to hack a connection for a power supply on it, but my soldering skills were no match for the surface-mounted custom serial interface.

The second had a much more amenable communication port, but also came without a power supply, and asked for 20 volts at 2 amps to be delivered to it via yet another impossible-to-source DIN plug. I made less progress with it than I did with the first printer; I came close to splicing an old laptop power supply directly onto its PCB, but I am at best an electronics amateur and I know that 20 volts and 2 amps is not a trivial amount of electricity.

This wasn't doing much to support my desire to "finish it", and so I put it all in a cupboard for a few months.

## A simple, usable thermal printer

But then I stumbled onto this little device, which seemed easy to power (5V) and communicate with (three wires you can plug into any breadboard). Better still, a good chunk of the work to drive it from an [Arduino](http://arduino.cc) had [already been done](https://github.com/adafruit/Adafruit-Thermal-Printer-Library).

Within a few minutes of plugging everything together, I could get the printer to spit out characters with ease, and without a tangle of wires ultimately leading to a kludge-filled script on a computer.

![The simple Adafruit printer demo](/images/printer/3-adafruit-sample-printout.JPG)

### An aside on thermal printing

Receipt printers tend to have one very simple mode of printing, which is just text-based. That's what you'll see on most shop receipts, and that's what [Timmy][] used. You can make the characters more bold, or inverse, or larger, but basically you're telling the printer "print an 'a' on the paper" and it will do just that.
  
Some printers will also let you print barcodes, which is obviously useful if you're printing an actual receipt.

Finally, printers often need to produce a logo of some kind, and so they offer a bitmap mode, where you can specify the exact image to be reproduced in glorious low-fidelity monochrome.

## Bringing graphics to the printer

I had already explored text-based printing with [Timmy][], but to produce something that actually looks nice, you need to use bitmap output. The first thing I needed to do was extend the existing library to better support graphics printing.

![Some simple graphics](/images/printer/4-simple-graphics.jpg)

The printer expected the dots for printing to be encoded directly as an array of bits in memory, and so I wrote some tools to generate the corresponding C arrays [from ASCII files](https://github.com/lazyatom/Thermal-Printer-Library/commit/d5fdbf276cd1d67973231364a9d7704120bd36c9), and then [from images directly](https://github.com/lazyatom/Thermal-Printer-Library/commit/346206de3d1c86a833a59462146090976f4b2a05).

![Some slightly more advanced graphics](/images/printer/5-slightly-more-advanced-graphics.JPG)

The specific printer would only print up to 255 rows of dots, and so I needed to figure out how to [split larger graphics up into chunks which could be sent to the printer sequentially](https://github.com/lazyatom/Thermal-Printer-Library/commit/6010b56a01015d1674b8b12969a08f0b4706ee0c). Eventually, I was able to print graphics that were longer than 255 rows:

![Graphics that were longer than 255 rows](/images/printer/6-longer-graphics.jpg)

### Out of memory

However, the Arduino only has a limited amount of flash memory (normally around 32k), which meant that the largest full-width image that could be compiled into the program was around 450 rows high. (That's why the above image looks like it's missing one half - I cropped it to fit in the Arduino's memory.)

That was a limitation that I wasn't happy with. Obviously some external storage for the data would be required, and thankfully the [Ardunio Ethernet shield](http://arduino.cc/en/Main/ArduinoEthernetShield) comes with a MicroSD reader built in. I added the ability to convert images into files containing the right bits for the printer, and wrote an Arduino library to print bitmaps using those files (and subsequently [from any Stream object](https://github.com/lazyatom/Thermal-Printer-Library/commit/82dacbdd6c3ea6a32fe123cb1ff17b6810a4c330)).

![Full-width graphics of more than 255 pixel rows](/images/printer/7-full-graphics.JPG)

With this in place, I could now print any image that I generated on my computer, saved onto the SD card and put into the Arduino. Here's the long test image I cobbled together in Fireworks to explore different font sizes and line weights:

![Full-width graphics. I drew this in Fireworks to get a feel for different line weights and font sizes](/images/printer/8-graphics-test.jpg)

## Moving data more easily

But that's not really ideal for a simple, reusable tool -- having to handle an SD card every time you want to print something is cumbersome at best. The fact that I'm already using the *Ethernet* shield clearly pointed towards the obvious thing to do: send the data over the network to the SD card, before printing the data from it as before.

I spent most of February [wrangling with the Arduino ethernet library and networks](http://arduino.cc/forum/index.php/topic,95531.0.html). When I was tinkering at the office, the connection would often seem flaky and unreliable. Larger downloads (50-100k, or about 15cm of printing) would stall, or fail inexplicably.

I became familiar with [Wireshark](http://www.wireshark.org), watching the low-level networking traffic between my computer and the hardware, and went through every permutation of network cable and socket it could be plugged into, every network device in the office (hub, switch, directly into the router), and every connection protocol possible (direct sockets, HTTP server on the Arduino, HTTP client on the Arduino).

Eventually, after a lot of amateur effort and stubbornness, I managed to put a simple HTTP client on the Ardunio that would reliably download the data from my computer, save it onto the SD card, and then start printing.

If the size of the data downloaded didn't match the size indicated by the HTTP headers, then I would be alerted by a red LED that there was still something unreliable in the stack. Thankfully, I haven't seen the red LED for some time now.

### Translating the problem

Slowly but surely I was translating my goal towards the domain I knew best. From sending serial commands to the printer board, to programming bitmap arrays onto an Arduino via C++, I was now dealing with something far closer to my daily work: an HTTP interface.

[Sinatra](http://sinatrarb.com) makes it simple to [write a server](https://gist.github.com/2291071#file_1_hardcoded_simple_printer_server.rb) for the Arduino's client to poll against. If the server sent an empty response, the printer would do nothing; in effect, it would "wait" for data to become available, and then print it without caring much about why.

Now I just needed a nicer way to generate bitmaps for printing than my clumsy Fireworks efforts.

## Generating images

I was already using [ImageMagick](http://www.imagemagick.org/) to translate images into the bitmap format for the printer, so I started to investigate using [RVG](http://www.imagemagick.org/RMagick/doc/rvgtut.html) (which [RMagick](http://rmagick.rubyforge.org/) provides) to generate graphics for printing.

![Go Free Range](/images/printer/9-rvg-logo-tests.jpg)

After a bit of trial and error, I had produced our company logo as a generated image; this could then be fed through the existing routines to convert it into bits, which the printer would then download as it was polling the server.

![Go Free Range](/images/printer/10-rvg-logo.JPG)

Next, I "drew" a sudoku grid and printed that:

![Sudoku](/images/printer/11-sudoku.jpg)

To make it all dynamic, I generated the RVG from within the 'backend server' that the printer was polling. However, if I wanted to change the image for printing, I would have to restart the server, so I [extracted that code](https://gist.github.com/2291071#file_3_rvg_image_generator.rb), and made the server [check on a "data queue" each time it was polled](https://gist.github.com/2291071#file_2_simple_queue_printer_server.rb) by the printer. The script which generated the graphic then simply had to "push" its data onto the queue, after which it would be "popped" from the queue the next time the printer made a request.

![Endless sudoku](/images/printer/12-sudoku.jpg)

This was great, but RVG isn't exactly easy to generate, or fun to write. Complex shapes had to be laid out in a painstakingly-precise way.

But more importantly, it wasn't very useful for printing text.

## Dynamic content

If I ever wanted to print something dynamic like, say, the day of the week, then there was no way to know if the changing length of that string would be too long for the printout. RVG didn't know anything about 'flowing text', which is what causes long sentences to wrap to the next line when you're typing a sentence in any text editor.

What I needed was some way of producing an image that I knew could be constrained at the maximum width of the printer (384 dots or pixels), and would intelligently format the content within those constraints.

### Designing in the browser

After a bit of pondering, the solution to both problems became obvious. I use some software every day that expects to take content and reformat it at whatever width I specify: [the web browser](http://www.webkit.org/). When you adjust the width of your browser window, unless the document has specifically directed otherwise the text will reflow and wrap so that it fits perfectly within the visible window.

![The first web-based printout](/images/printer/13-web-based-design.JPG)

Even better, it's *far* simpler to design content in HTML, CSS and Javascript than it is in RVG, and these were tools I was already familiar with. All I needed was a way to turn a webpage into an image, which I could then pop into the existing stack.

### Teaching the computer to surf the web

When doing client work that involves javascript, we often test it using a "headless browser", which is roughly speaking a web browser that doesn't actually display its windows on your computer. We've had a lot of success with [PhantomJS](http://phantomjs.org), and as it happens it is quite easy for it to load a webpage and [save what would be displayed as an image](http://code.google.com/p/phantomjs/wiki/QuickStart#Rendering).

With a little bit of tweaking to fix the browser width at 384 pixels, and some [helpful stylesheets to make prototyping content for printing at that size easier](http://printer.gofreerange.com/sample.html), it all worked. All that was required to print something was an HTTP page which could be dispatched through the existing software and finally be printed.

(At each step, the boundary of the system moved closer to something that I felt I could pick up later without having to hack it all together again. This was progress.)

![Weather icons via Javascript and Canvas](/images/printer/15-canvas-icons.JPG)

I added a simple HTML page to the backend server with some fake weather output using HTML5 canvas icons, and some twitter mentions marked up with HTML and CSS, and printed that about thirty times.

![A simple 'publication'](/images/printer/17-simple-publication.jpg)

## Extracting content generation

I started to make the weather data "live" using the [Wunderground API](http://www.wunderground.com/weather/api/), but I was getting back into the [hackish](http://en.wikipedia.org/wiki/Kludge) territory that I started this whole endeavour to avoid. Parsing JSON weather data wasn't directly helping me to _finish_ the printer.

I realised that I could remove all of the "content" logic from the code, because the HTML I was turning into an image didn't necessarily have to be served by the same software that was doing the printer processing.

But this made me pause for thought. So... if there was another HTTP server that made a printer-suitable HTML page of weather data available at URL "_http://some-service_", then I could post the URL of that page to the backend server, and as long as PhantomJS could load the content at "_http://some-service_" then it would happily process the page into an image and the data would end up at the printer exactly as before.

_Oh my_.

## Printers and content: [distributed and federated](https://github.com/freerange/printer/wiki/Architecture)

I drew this on the whiteboard:

![Distributed, federated architecture for printers](/images/printer/20-architecture.JPG)

(You can see a [much tidier and hopefully clearer architecture explanation on the wiki](https://github.com/freerange/printer/wiki/Architecture).)

In the last couple of weeks, it was reasonably easy to implement all of this:

* Allow the posting of a URL to the 'backend server', which would trigger the conversion of the page at that URL
* Allow posting of HTML content itself to the 'backend server', which would be rendered directly
* Separating each of the parts of the rendering into its their own queues - turning the page into an image, turning the image into bits
* Allowing some way to *preview* how some content might appear on the printer, by generating the page image and serving that from the 'backend server'.
* Extract the printer logic out of the Arduino, and back into the server, making it easier to support other printers (maybe you have one of [those CBM 231s](http://microprinter.pbworks.com/)?)

I also realised some of the implications of the architectural choices I'd made:

* It would be possible to support _multiple printers_ in the same backend server, by sending URLs for printing to a printer-specific endpoint (i.e. posting the URL to /printer/123)
* Responsibility for content was completely delegated to service software that simply had to provide URLs
* Data for printing could therefore come from multiple, completely independent services that didn't need to know anything about each other, only the URLs to which they should post content.

And then, most interestingly to me:

* Because the content service might be responsible for posting their URLs to the backend print server, there's no reason why there needs to be a single print server either. _You could all run your own_.

If you and I both want weather forecasts to appear on our printers, but my printer was polling the backend at _http://server1_, and your printer was polling _http://server2_, then we just need the weather service to know that it should post the weather data for me to my server, and the weather data for you to your server. **There's no need for a central backend server if everything is dealing with URLs.**

If you'd like to learn more about the architecture, [take a look at the wiki](https://github.com/freerange/printer/wiki/Architecture).

And so that's where we are now.

## What it is ## {#skip-to-the-end}

As I mentioned at the top of this meandering prose, it's a software system that makes it easy for **YOU** to:

* [build your own small internet-connected printers](https://github.com/freerange/printer/wiki/Making-your-own-printer),
* [produce customised content](https://github.com/freerange/printer/wiki/Building-content-services) for them, and
* [share that content](https://github.com/freerange/printer/wiki/Architecture) with other people who also have small internet-connected printers.

The [main project page is here](/printer).

We are running [a backend server](http://printer.gofreerange.com), which our office printer is connected to. If you do make a printer ([see below](#getting-a-printer)), you're more than welcome to use it rather than running your own.

![Simple messages send using a distributed architecure](/images/printer/21-simple-messages.jpg)


### The software

[Here's the code](http://github.com/freerange/printer); it's open source and you can do what you like with it.

You can run your own copies of [the software](http://github.com/freerange/printer) if you wish; doing so will not isolate you from the "cloud" of software build by other people. As long as [backend servers and content services have publicly-accessible URLs](https://github.com/freerange/printer/wiki/Architecture), there's nothing preventing other people using any available service to generate content for their own printers.

I've written some extremely trivial (both in scope and implementation) content services for [sending messages](http://printer-mail.herokuapp.com) ([source code](http://github.com/freerange/printer-mail), see picture above) and [sending drawings](http://printer-paint.herokuapp.com) ([source code](http://github.com/freerange/printer-paint), see picture below).

I've also written a very simple example of an automated content publisher, which "delivers" [a weather forecast](http://printer-weather.herokuapp.com) to a printer at a fixed time.

(None of these applications are really more than demonstrations to clarify how I imagine things could fit together.)

If you take a quick look at their source, and the [Printer API](https://github.com/freerange/printer/wiki/API), then it should be quite clear how you can add your own printer (see below) to those services, or run your own copies of them, and -- **most importantly** -- write your [own content services for the stuff *you* would like to print](https://github.com/freerange/printer/wiki/Building-content-services). If it isn't clear, [please let me know](mailto:printer@gofreerange.com)!

![Simple pictures send using a distributed architecure](/images/printer/24-simple-drawings.JPG)

### Next steps

The backend software is still evolving; I have some pretty clear ideas about [what needs to be improved and what I'd like to do next](https://github.com/freerange/printer/issues), but I think it's ready for other people to play with too.

## Getting a printer ## {#getting-a-printer}

If you want to make a printer, I've written a reasonably detailed and picture-ful [step by step guide to building one and setting it up](https://github.com/freerange/printer/wiki/Making-your-own-printer).

We are going to make a [small number of printers available to loan](/printer#borrow) to people who have an idea they'd like to explore. We'd love to help, and everyone will benefit from the services and content you make.

If you're interested in buying [all the bits you need, pre-configured and ready to go](/printer#kit), you can [let us know here](/printer#kit) (we don't know if we will do that, but if there's enough interest then we'll investigate how).

Either way, the design is all open source so you are always free to build your own.

![Maps](/images/printer/18-maps.JPG)

## Why?

As I said above, this is *all open source*; we're not selling this as a commercial venture because we're more interested in how a distributed, federated network of producers and consumers might work and evolve. It's an experiment.

This isn't going to be interesting to most people, because they (quite rightly) value a polished and supported product, rather than a DIY exploratory tool.

But if you _are_ interested in collaboratively exploring what might be possible with "internet-of-things printing", then I think this is a reasonable place for us to start together. I'm looking forward to what we might discover.


## Other printers

The thermal printer that I've used is the exact same one that Adafruit provide as part of their "[IoT Printer Kit](http://wiki.ladyada.net/tutorials/products/iotp)", which prints out tweets matching a given keyword as they are encountered.

If you were willing to sacrifice the LEDs and print button, there's no reason why you couldn't use that kit with the printer backend software presented here.

News International's research lab have produced some alternative software for the Adafruit kit called the [IoT assistant](http://newsinternational.github.com/iot-assistant), which is slightly more advanced in that it can print information from your google calendar and gmail accounts too. I believe they have plans to expand their software to support more than one printer per instance, but their architecture is more centralised (the content is generated by a single server) than that presented here.

It's also worth mentioning some "historical" printers of note. The printer that ran [Timmy Printface][Timmy] a year ago was used by [Tom Taylor](http://tomtaylor.co.uk) in 2009 to [print out daily memos](http://tomtaylor.co.uk/projects/microprinter). His software is perhaps closer in architecture to what I've built (a printer polling from a queue). [Chris Wood](http://flipbit.co.uk/) extended the software to [print tube information](http://flipbit.co.uk/microprinting.html).

There's even a [wiki](http://microprinter.pbworks.com/) that has sprung up around the CBM 231 printers that people commonly used.

What most clearly distinguishes this project from all of the printers above -- [Timmy][] included -- is the ease with which independent people can create *great-looking content* for these printers, and *share* that content with other interested people.

Rather than being limited to text-based output, far richer designs can be easily constructed using standard web tools like HTML, CSS and Javascript. *And* you don't need to care about the printing infrastructure -- you can just focus on making the content as useful and interesting as possible.

### Little Printer

And, of course, there is the upcoming [Little Printer](http://bergcloud.com/littleprinter) from [BERG](http://berglondon.com), available later this year.

For what it's worth, *I believe the two projects complement each other perfectly*. Little Printer is a commercial, polished and supported product, with a huge amount of attention to detail going in to both the hardware and the content that it produces.

[This project](/printer) is open source, and well suited to collaboratively explore what might be interesting to print in a more undirected and open-ended way.

## Let's explore

If internet printing is an island, then Little Printer is like a lighthouse, signaling its presence.

With the open source software and hardware outlined above, we now have some tools to collaboratively explore the many other coastlines and inland jungles of this new territory.

I am _sure_ you have better ideas for how to use an internet-enabled small printer than I do. I'm looking forward to exploring together.

## More information

* [More details](/printer)
* [The wiki](http://github.com/freerange/printer/wiki)
* [Our backend server](http://printer.gofreerange.com)
* [Send a message to our printer](http://printer-mail.herokuapp.com/send/freerange)
* [Source code](http://github.com/freerange/printer)


[Timmy]: /timmy
[hack]: http://en.wikipedia.org/wiki/Kludge
[hackcircus]: http://enemyofchaos.wordpress.com/2011/06/21/hack-circus-for-interesting-11-thank-you/


:render_as: Blog
:written_with: Kramdown
:author: james-adam
:created_at: 2012-04-09 13:55:00 +01:00
:updated_at: 2012-04-09 13:55:00 +01:00
:page_title: Hello, Printer