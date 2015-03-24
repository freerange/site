Week 322
========

On Monday we moved into [our new office on Scrutton Street][GFRHQ 3.0] within [Shoreditch Works][]. Yay! Although it's quite a bit smaller than our office on Worship Street, it's really good to have a space of our own again.

Seizing the day on Monday, we hired a [Zipcar van][] and spent the afternoon moving a bunch of stuff from our [Urban Locker][] into the new space. In next to no time we'd set up four desks, our big sofa and a big bookcase. And it wasn't long before we had our printer and stereo hooked up to the wireless network.

Anyway, if you're in the neighbourhood, please pop in for a cuppa!

## Admin

I spent quite a bit of time updating the company address held by various organisations, including three (!) places on the HMRC website. Dull, dull, dull...

On a similar note, we're gradually plodding our way through the procurement process for a large organisation that shall remain nameless.

### Annual Accounts

Chris spent quite a bit of the week continuing to fight his way valiantly through our annual accounts and corporation tax return. We find it very frustrating that none of the accountants we've used seem to be able to _clearly_ explain how they get from the data in our [FreeAgent book-keeping software][FreeAgent] to the annual accounts that they generate for Companies House and HMRC.

I'm not sure whether it's because they're using some other software and they don't understand themselves or whether it's an intentional attempt to obfuscate the process so we keep needing to use them year-on-year. Either way it seems very short-sighted; we'd be more than happy to pay an accountant who could explain everything clearly.

The whole process has been complicated by the fact that we're about to try to do without an accountant. This has meant that we've been trying to understand some of the annual accounts and corporation tax returns for previous years in order that we're really on top of things. In doing so we've come across a bunch of things we don't understand.

### Loans to Directors

One of the most annoying complications is around loans to directors. Over the lifetime of our company we've had a number of share issues and transfers as people have joined and left. Some of these events have inadvertently led to small director loans appearing in the annual accounts, presumably because the company should have received some money from the individual shareholders at various points.

Since these loans were all for small amounts, we didn't pay them much attention and some of them were not paid off for a couple of years. However more recently we've [become aware][Director's Loans] that they complicate our annual accounts considerably, because you are required to pay interest on loans and longer-lived loans attract corporation tax at 25%.

The frustrating aspect of all this is that if we'd been fully aware of the existence of these loans and the consequences for the annual accounts, I'm sure we would've paid them off immediately, thus making our accounts that much simpler.

## Projects

Later in the week, Chris [did some more work][Money Tracker changes] on his [Money Tracker][] project. Most notably he upgraded from [twitter-bootstrap-rails][] to [bootstrap-sass][] which means the project no longer needs a LESS pre-processor or a CoffeeScript converter.

I tried to get back into my [AIS on SDR project][], but it was a bit of a struggle to work out where I'd got to. In the end I decided to start again installing stuff from scratch on my shiny new [Raspberry Pi 2 Model B][] using the first half of [this GNU Radio tutorial][]. I managed to get as far receiving BBC Radio 4 using the `rtl_fm` command line tool like I had on my Mac laptop [back in week 319][AIS on SDR project].

I did also manage to install and configure [GQRX][], the GUI app which I'd installed on my Mac, but I found that reception of Radio 4 was very "choppy" - I assume this is due to the fact that it's maxing out all four of the CPU cores!

## Social

On Thursday, we had a post-work pint with our new ground-floor neighbours, [Tom T][] and [Tom S][], at the Old Kings Head. Tom T told us a bit about what he's been up to at [Offset][], Moo's new digital studio, and the launch of their first product, [Stacks][].

My back was playing up on Friday so I had to retire hurt at lunchtime. Unfortunately that meant that I missed our first Shoreditch Works "Mixer". However, Chris stayed for a few drinks and met some of our new office mates, including a couple of people from [Weaveworks][] (doing Docker-related stuff) and Lee Bofkin from [Global Street Art][].

That's all for this week. Until next time!

-- James

[GFRHQ 3.0]: https://foursquare.com/v/go-free-range-hq/4ea6be695c5c6cec791b9148
[Shoreditch Works]: http://shoreditchworks.com/
[Zipcar van]: http://www.zipcar.co.uk/zipvan
[Urban Locker]: http://www.urbanlocker.co.uk/
[FreeAgent]: http://www.freeagent.com/
[Director's Loans]: https://www.gov.uk/directors-loans
[Money Tracker changes]: https://github.com/chrisroos/money-tracker/compare/9a5bcf0826c86946bd586b0433046e26c8634527...32a3773f5bff9bc887a6c7eebd6918c0ab532529
[Money Tracker]: https://github.com/chrisroos/money-tracker
[twitter-bootstrap-rails]: https://github.com/seyhunak/twitter-bootstrap-rails
[bootstrap-sass]: https://github.com/twbs/bootstrap-sass
[AIS on SDR project]: /week-319#software-defined-radio
[Raspberry Pi 2 Model B]: http://www.raspberrypi.org/products/raspberry-pi-2-model-b/
[this GNU Radio tutorial]: http://www.rs-online.com/designspark/electronics/eng/blog/taking-the-raspberry-pi-2-for-a-test-drive-with-gnu-radio-2
[GQRX]: http://gqrx.dk/
[Tom T]: http://tomtaylor.co.uk/
[Tom S]: http://codon.com/
[Offset]: http://www.offsethq.com/
[Stacks]: https://www.stackshq.com/
[Weaveworks]: http://weave.works/
[Global Street Art]: http://globalstreetart.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-03-24 16:59:00 +00:00
:updated_at: 2015-03-24 16:59:00 +00:00
:page_title: Week 322
