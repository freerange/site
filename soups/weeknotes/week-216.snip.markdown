Week 216
========

This week's notes were delayed by illness. My apologies.

This week we've tried to make progress on a number of projects. Although this work was mainly aimed at our [products & services](/week-210#products-and-services) and [total revenue](/week-210#total-revenue-target) goals, for me it was also about rekindling a sense of fun and enjoyment in my work and rediscovering some of my lapsed electronics knowledge.

### Just boiled

As [James A](/james-adam) mentioned [last week](/week-215), I've been trying to make a device to remind me that my kettle had boiled. I wanted to keep the electronics as simple and safe as possible and so initially I tried a [split-core current transformer sensor](http://www.coolcomponents.co.uk/catalog/invasive-current-sensor-p-677.html), like the ones used in [home energy monitoring](http://openenergymonitor.org/). However, when I clamped the sensor around the mains cable, I didn't get any output, and it dawned on me that the magnetic fields induced by the live and neutral conductors were cancelling each other out. 

When I split the three conductors from the kettle cable and clamped the sensor around the live wire (don't try this at home!), I was able to get a reading. But the need to split the cable defeated the object of the exercise. I had a quick play with a [non-contact AC voltage detector stick](http://www.ebay.co.uk/itm/250747838342), but as I suspected, voltage is present in the kettle cable even when the kettle has switched itself off - it's actually the _current_ that I need to sense.

I've considered trying an [inline plug & socket energy monitor](http://www.amazon.co.uk/dp/B003WK62WK), but I'm wary that these involve closer proximity to mains voltages. I've also considered attaching a thermistor to the kettle itself, but this is once again more "invasive" than I would like and is likely to introduce other safety issues. Anyway, it was a fun diversion and allowed me to play with my soldering iron and fire up my [Arduino](http://www.arduino.cc/) for the first time.

### Share registry

I've also been exploring the possibility of building a web application to manage the shareholdings for a limited company - share issues, transfers & re-organisations, and submitting an annual return (and any other relevant forms) to [Companies House](http://www.companieshouse.gov.uk/).

Obviously this isn't too complex for a company like [GFR](/) in its current state and we currently manage our shareholdings internally using a Google spreadsheet. But I've been wondering for a while whether there might be a market for a product like this. So far I've just been researching the market, but I'd love to hear from you if you think it might be something you'd find useful; or even if you're already happy with an alternative solution.

### Roosmarks

[Chris](/chris-roos) continued work on [Roosmarks](https://github.com/chrisroos/roosmarks). Specifically he's been building a [Chrome extension](https://github.com/chrisroos/roosmarks-chrome-extension) to make it easier to add bookmarks. He ran into some difficulties with [CORS](http://www.w3.org/TR/cors/), XMLHttpRequest and HTTP Basic authentication, which he's [written up](http://chrisroos.co.uk/blog/2013-03-08-the-behaviour-of-xmlhttprequest-withcredentials-when-used-with-cors) in commendable detail. However, I think he now has the basics of his extension up and running.

### Time-lapse

Chris has also used an [app](https://play.google.com/store/apps/details?id=com.ui.LapseItPro&hl=en) on his Android phone to put together a [video](https://www.youtube.com/watch?feature=player_embedded&v=y2cfh0frmYk) of a view of the Thames and Canary Wharf. This is a worthy successor to his previous [Ramsgate harbour](http://chrisroos.co.uk/blog/2009-01-13-24-hours-of-ramsgate-outer-harbour) masterpiece.

### Photostream

James A has been busy. Along with continued work on [Harmonia](https://harmonia.io/), [Printer](http://gofreerange.com/printer) and [Ruby Manor](http://rubymanor.org/4/), he's found time to build a [tool](https://github.com/lazyatom/photostream) which makes it easier to access the photos in your [iCloud Photostream](http://www.apple.com/uk/icloud/features/photo-stream.html). Apparently the photos normally end up in a hard-to-navigate nested directory structure. James' tool detects the arrival of new photos and creates [hard links](http://en.wikipedia.org/wiki/Hard_link) to them in a single flat directory.

### Teasmade

James also came up with an iOS app that allows him to very easily start a simple countdown timer when he puts tea on to brew. The idea is that the app will then remind him to go back and take the tea bags out and avoid him [feeling stupid](https://twitter.com/lazyatom/status/295895415813988353). Interestingly, James seemed quite impressed with the latest incarnation of Xcode which he's found more intuitive for wiring up user interface components.

### Fair Harmonia

[Tom](/tom-ward) has developed an improved algorithm for assigning tasks in Harmonia. There's a tricky balance to be struck between complete randomness and the perception of fairness. Although it's perfectly possible with a completely random algorithm, people don't like it when they're picked several times in a row to perform a certain task. Similarly, people don't like it when they're picked for several different tasks in a short period.

We already had some protection against these scenarios, but Tom has come up with a much more sophisticated solution which we hope will improve matters. These changes are already live, so [register now](https://harmonia.io/register) if you want to try it out!

### Back to the future

Tom's also been experimenting with something akin to the Internet Archive's [Wayback Machine](http://web.archive.org). He hasn't published any of his work yet, but I reckon he might well be on to something.

## Introspection

There's been some more team introspection this week. I don't think we've come to too many conclusions, but we have at least identified some important questions:

* How much do each of us want GFR to become a product company? Does it matter that some of us want to put more emphasis on this than others? How are we going to get there?

* What makes a project a GFR project? Do all of us have to think it's a good idea? Do all of us have to work on it? Is it fair that a project mainly developed by one person is "owned" by GFR?

* Are we too often under-thinking things and going with our "gut feeling"? Are there dangers in this? Do we sometimes over-think things and would we be better off not worrying so much and just trying stuff?

Answers on a postcard!

-- James.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2013-03-12 10:32:00 +00:00
:updated_at: 2013-03-12 10:32:00 +00:00
:page_title: Week 216
