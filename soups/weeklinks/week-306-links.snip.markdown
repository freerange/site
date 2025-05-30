Week 306 - Interesting links
============================

### [Transistor Fabrication: So simple a child can do it](http://hackaday.com/2010/05/13/transistor-fabrication-so-simple-a-child-can-do-it/)

Having had a go at building a NAND gate out of a couple of transistors at the [first NAND2Tetris meeting of the LCC](https://groups.google.com/forum/#!msg/london-computation-club/oiTVvGynzYs/sHX7SRVXy3IJ), I was interested in this demo of someone making a transistor. Someone also asked about vacuum tubes at the meeting - it turns out you can [make those too](http://hackaday.com/2014/11/21/artisanal-vacuum-tubes-hackaday-shows-you-how/)! <%= by('james-mead') %>


### [Cache is the new RAM](http://blog.memsql.com/cache-is-the-new-ram/)

This is a nice recap of how web application architecture has evolved to work around various bottlenecks and a look forward at where the next ones are likely to be. <%= by('james-mead') %>


### [OpenWorm](http://www.openworm.org/)

An open-source project to build the first "digital life form", a virtual _C. elegans nematode_ in a computer. <%= by('james-mead') %>


### [Array#to_proc for Hash access](http://thepugautomatic.com/2014/11/array-to-proc-for-hash-access/)

A simple "hack" which allows you to do things like:

    [ { x: 1 }, { x: 2 } ].map(&[:x]) # => [ 1, 2 ]

Via [Tom Stuart](http://codon.com). <%= by('james-mead') %>


### [Should I use a carousel?](http://shouldiuseacarousel.com/)

A carousel full of good advice. <%= by('james-mead') %>


### [Speed Up JavaScript Capybara Specs by Blacklisting URLs](http://robots.thoughtbot.com/speed-up-javascript-capybara-specs-by-blacklisting-urls)

Useful advice for tracking down slow external network requests in Capybara JavaScript tests (by using the `:webkit_debug` driver) and then using `#url_blacklist` to avoid them.

I hadn't come across either of these things before but will certainly bear them in mind should I come across slow running tests in future. <%= by('chris-roos') %>


### [Taking the Ps](http://deserter.co.uk/2014/11/taking-the-ps/)

> ‘30 quid each? Fuck that. It's not even got a roof,' said Half-life, recounting how he had refused his own mother her life-long dream of a ride on an open-top London sightseeing bus.

The [Deserter][] has recently become one of my favourite blogs (thanks, [Paul B][]!). Definitely my kind of humour. <%= by('chris-roos') %>

[Deserter]: http://deserter.co.uk/
[Paul B]: http://po-ru.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-11-25 15:25:00 +00:00
:updated_at: 2014-11-25 15:25:00 +00:00
:page_title: Week 306 - Interesting links
:erb: true
