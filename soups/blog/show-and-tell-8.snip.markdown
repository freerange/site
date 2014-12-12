Show and Tell 8
---------------

This month's meeting was a bit quieter than usual, but Ben G, Chris R, James M, Tom H, Tom S and Tom W all came along.

### Cinema Ticketing System

[Ben G][] kicked off proceedings by showing us how he'd built a hi-tech cinema ticketing system for his son's sixth birthday. He printed tickets for all his friends with a unique barcode on each of them.

On the day of the party, he set up a laptop in the hallway with a barcode scanner plugged in. A simple Ruby (or possibly Python?) program running on the laptop captured standard input and sent it on to a [Raspberry Pi][] in the living room over the wifi network.

The Raspberry Pi was plugged into the TV and was running [Scratch][] with [remote sensor connections enabled][] listening for incoming messages from the laptop. Ben's son had written a special [Scratch sprite][] for each person and the relevant one of these was triggered when that person's ticket was scanned at the door displaying various animations and audio.

It sounded very inventive and a lot of fun!

### Ultra Marathon & Canonical URL

Next [Chris R][] showed us the GPS-logged route of the [Brecon Beacons Ultra Marathon][] he did in Wales a few weeks back. Very impressive!

He then showed us a Chrome extension (Canonical Inspector) which provided a way to access the canonical URL of a web page i.e. the URL supplied in the `<link rel="canonical" href="$canonical-url">` element. [Google recommend setting a canonical URL][] e.g. to consolidate link signals for duplicate or similar content.

The Chrome extension seemed as if it would be useful for generating sensible (generally shorter) URLs to share in emails or on social media. Unfortunately the extension kept crashing Chris' laptop, so not much of a recommendation!

Also it seems to have been removed from the Chrome Web Store, so perhaps this [other Chrome extension][] will do the trick...?

### Process Calculi

[Tom H][] showed us a talk he'd done about [process calculi][] and took us on a rapid tour through various approaches to modelling concurrency in his inimitably enthusiastic style.

A lot of it was quite mathematical and I found the various formal notations hard to get my head around in such a short space of time. However, it does seem like interesting stuff and it mainly reminded me that I _really_ should read Tom S's book, [Understanding Computation][].

### Smalltalk within Scratch

We finished up with Ben showing us how you can access the [Smalltalk environment underlying Scratch][] by clicking one of the letters in the logo. He proceeded to redefine `true` as `false` (or was it the other way around?) and immediately all the Scratch windows stopped re-painting. Fun times!

Anyway, that's your lot for this month. Our [Show & Tell event][] is taking a break in the New Year and so the next one will be in February. Let us know if you're interesting in coming along.

-- James.


[Brecon Beacons Ultra Marathon]: http://www.beaconsultra.com/
[Raspberry Pi]: http://www.raspberrypi.org/
[LRUG]: http://scratch.mit.edu/
[remote sensor connections enabled]: http://wiki.scratch.mit.edu/wiki/Remote_Sensor_Connections
[Scratch]: http://scratch.mit.edu/
[Scratch sprite]: http://wiki.scratch.mit.edu/wiki/Sprite
[Smalltalk environment underlying Scratch]: http://wiki.scratch.mit.edu/wiki/System_Browser
[process calculi]: http://en.wikipedia.org/wiki/Process_calculus
[Understanding Computation]: http://codon.com/computation-book
[Google recommend setting a canonical URL]: https://support.google.com/webmasters/answer/139066?hl=en
[other Chrome extension]: https://chrome.google.com/webstore/detail/canonical/dcckfeohihhlbeobohobibjbdobjbhbo?hl=en
[Tom H]: http://www.thattommyhall.com/
[Ben G]: https://twitter.com/beng
[Chris R]: /chris-roos
[Show & Tell event]: /show-and-tell-events


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-12-12 11:53:00 +01:00
:updated_at: 2014-12-12 11:53:00 +01:00
:page_title: Show and Tell 8
