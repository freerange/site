Week 319
========

At the beginning of the week we were both decompressing a bit and catching up with admin. We both had a few bits of work-in-progress left over from FutureLearn and so we spent an hour or two sculpting it all into pull requests, gists and emails.

I then made a start on writing up the [week notes][], but got side-tracked into moving one of our internal wiki pages [onto our public site][]. The CSS on our site is a bit unloved, so this took a bit longer than I intended. However, we are planning to publish as much of our internal wiki as we sensibly can - we'd like to be as open as possible about how our company works.

Meanwhile [Chris][] made a start on our weekly book-keeping task. This was trickier than usual, because we needed to explain the *partial* return of the deposit relating to our old Worship Street office, but I think we mostly understand what we need to do.

## Nand2Tetris

On Tuesday evening, I went to a [meeting of the London Computation Club][] in which we successfully implemented an assembler for the Hack assembly language. This generates machine code to run on the Hack hardware platform that we "wired up" in the previous meeting.

We've taken to working through the exercises as a group on the projector with one person driving. This seems to work much better when we use a test-driven approach, because it helps keep us all focussed on the same thing.

## Office Hunt

We were out and about for all of Wednesday, meeting potential clients and viewing possible desk/office space. After a meeting, we had a quick look around [The Office Group][] in Marylebone and then headed to the [café at the British Library][BL cafe] for lunch and a bit of a chat about our plans for the rest of the year.

We then dropped into the [Kings Cross Impact Hub][] and the [Islington Impact Hub][] as we made our way eastwards towards Shoreditch. We hadn't appreciated that both these places are run as franchises and so there's a really different feel to each one. Lee, the Community Host at the Islington one, was particularly welcoming, especially given we'd just turned up on spec.

[Techspace][] and [TechHub][] were right at the other end of the spectrum. Techspace doesn't have anyone on-site to chat to drop-ins (at least not in their Bath St office). And even though TechHub (Old St) has a staffed reception, you need to make an appointment to view the office and even then you have to prove you are a company developing a "product". It's probably silly of me, but the formality of both organisations really put me off.

We then ended up at Google's [Campus London][] for a well-earned cup of tea, although we had to slum it on one of the picnic tables in the courtyard which got a bit chilly after a while - apparently the desks here fill up soon after 9am when it opens. Chris booked us in for a few more viewings while I interjected with unhelpful comments from the sidelines.

## Beer

After an early & delicious dinner at the [Book Club][], we headed to the [Wenlock Arms][] for our monthly drinks. It was our first visit to this pub, but it turns out that it has a fine array of cask ales. [Dark Star][]'s Hophead and American Pale Ale were popular choices and [Camden Hells Lager][] kept Chris R happy. Anyway, a good time was had by all, although apparently there were a few sore heads the next morning.

## More Viewings

On Thursday morning, Chris and I were up relatively early to visit [Sidekick Studios][] where there were a couple of desks available to rent - they have a very nice space on City Road just north of the Old Street roundabout. We went straight on from there to a viewing at the smart-looking [Central Working][] offices next door to Campus London. They offer everything from co-working to serviced offices and it was good to get a feel for the prices of all these different options.

We poked our noses into Campus London & the [Dolcezza Café][], but they were both full, so we headed to [Lantana Café][] on City Road and discussed our options over a tasty brunch. After a brief pitstop in [The Hoxton][], we walked up to Hoxton Square for a speculative look at Shoreditch Works' [Shoreditch Village Hall][]. Unfortunately it turned out not to exist any more - it's a complete building site. We subsequently discovered that Aviva attended a hack day there and liked it so much they bought the building!

## Fun Times

### Money Tracker

At this point, we parted company and worked at home for the rest of the day. We decided to give ourselves the rest of the week to work on fun projects.

Chris got back his head back into [Money Tracker][] by upgrading to the latest versions of Ruby & of Rails and by merging a couple of my 10-month-old [pull][money-tracker-pull-request-9] [requests][money-tracker-pull-request-10]. Yay! His main motivation is that he wants to get a better understanding of where all his money goes. I'm looking forward to seeing where he goes with it.

### Software-defined Radio

A couple of months back, I mentioned that I'm interested in [building a cheap AIS receiver using a DVB-T TV tuner dongle][week-310-links-rtl-sdr]. Soon after that I managed to cobble together a flakey build of the [SDR#][] software on my Mac using [Mono][]! However, since then I've done a clean install of OS X Yosemite and lost track of what I'd done, so I decided to start afresh.

I discovered a [few more software options][rtl-sdr-software] and decided to give [GQRX][] a go. After a lot of faffing about, I managed to [build it successfully][gqrx-build]. In my previous experiments with SDR# I hadn't managed to receive anything that looked like an AIS signal. I'd put this down to a combination of not fully understanding all the SDR settings, not having a suitable aerial and not being in line-of-sight of any ships.

Chris sensibly suggested that I try to receive a more well-known/stronger signal to check the hardware & software was working. After a lot of fiddling with the receiver settings, I eventually managed to tune in to [BBC Radio 1][]...

<img src="/images/blog/2015-02-27-gqrx-bbc-radio-1.png" style="width: 100%" alt="Screenshot of GQRX tuned to BBC Radio 1" />

The audio quality was pretty decent, although the level on this recording is a bit on the low side...

<p>
  <audio src="/assets/blog/2015-02-27-gqrx-bbc-radio-1.m4a" controls>
    Your browser does not support audio.
  </audio>
</p>

Anyway, until next time.

-- James


[week notes]: /week-318
[onto our public site]: /checking-our-annual-accounts
[Chris]: /chris-roos
[meeting of the London Computation Club]: http://lanyrd.com/2015/london-computation-club-nand2tetris-meeting-6/
[The Office Group]: http://www.theofficegroup.co.uk/
[BL cafe]: http://www.bl.uk/aboutus/stpancras/#cafe
[Kings Cross Impact Hub]: http://kingscross.impacthub.net/
[Islington Impact Hub]: http://islington.impacthub.net/
[Techspace]: http://www.techspace.london/
[TechHub]: http://london.techhub.com/
[Campus London]: https://www.campuslondon.com/
[Book Club]: http://www.wearetbc.com/
[Wenlock Arms]: http://wenlockarms.com/
[Dark Star]: http://darkstarbrewing.co.uk/
[Camden Hells Lager]: http://www.camdentownbrewery.com/hells-lager/
[Sidekick Studios]: http://www.sidekickstudios.net/
[Central Working]: http://centralworking.com/
[Dolcezza Café]: http://www.dolcezza.co.uk/
[Lantana Café]: http://www.lantanacafe.co.uk/
[The Hoxton]: https://thehoxton.com/
[Shoreditch Village Hall]: https://www.kickstarter.com/projects/179276400/open-the-shoreditch-village-hall
[Money Tracker]: https://github.com/chrisroos/money-tracker
[money-tracker-pull-request-9]: https://github.com/chrisroos/money-tracker/pull/9
[money-tracker-pull-request-10]: https://github.com/chrisroos/money-tracker/pull/10
[week-310-links-rtl-sdr]: /week-310-links#rtl-sdrhttpwwwrtl-sdrcomabout-rtl-sdr
[SDR#]: http://sdrsharp.com/#download
[Mono]: http://www.mono-project.com/
[rtl-sdr-software]: http://www.rtl-sdr.com/big-list-rtl-sdr-supported-software/
[GQRX]: http://gqrx.dk/
[gqrx-build]: https://gist.github.com/floehopper/d5d4ee1d15fc0b7bb128
[BBC Radio 1]: http://www.bbc.co.uk/radio1

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-03-04 12:09:00 +01:00
:updated_at: 2015-03-04 12:09:00 +01:00
:page_title: Week 319
