Show and Tell 18
================

There was a good turn out this month, with 8 of us gathering at GFRHQ on Wednesday, 11th November. Chris had done a great job of dismantling all but one of our desks, so there was plenty of room for everyone. And the ice bucket was well stocked with beverages.

## Network railcard

For the last couple of years [Network Railcards][] have been printed using a different ink/card combination and the ink rapidly become so faint that it's illegible. [Chris R][] decided to take a photo of his railcard every week to see how quickly it deteriorated. He showed us a natty time-lapse video of the fading of the text.

The best bit was the unexpected final frame which showed the sorry, burnt remains of his railcard. Apparently a "helpful" guard on a train held a lighter under to make the ink show up again, but he accidentally set fire to it!

## Blog makeover

Chris has been converting [his website][chrisroos.co.uk] from one static site generator to another. Currently it uses [Webby][] and he's converting it to use [Jekyll][]. One problem with Webby is that it doesn't seem to be maintained any more and only works on Ruby 1.8!

He's been using a combination of [HTML tidy][] and [colordiff][] to compare the old and new versions of the site to work out what he's got left to do. I'm looking forward to seeing how this works out, because my own website still uses Webby.

## Microservices in government

[Dave][] works at [MOJ Digital][] and chatted to us a bit about [microservices][]. He's not impressed that even now giant monolithic applications are being replaced across government by new giant monolithic applications. To the parties involved this often seems like the most obvious/least scary choice, but he's convinced that's not always the case. He wonders whether microservices might be a good way to gradually chip away at these giant monoliths.

He thinks that the Government-as-a-Platform idea is meant to tackle this kind of thing, but he suspects that the microservice concept might be easier to explain. He talked about the importance of [domain modeling][] and the idea that a microservice should [do one thing and do it well][unix-philosophy].

I warned against the danger of prematurely dividing things up into microservices before you understand the domain and processes involved. In response Dave rightly mentioned Martin Fowler's [Monolith First article][].

I think it was Ben who cautioned that as the number of microservices in your system grows, more and more of the "application" logic disappears into routing and orchestration logic, which can be harder to reason about.

We talked about quite a few things here and I hope I've done it justice and not mis-represented anyone. My memory isn't what it used to be!

## Age UK

[Chris L][] talked a bit about the voluntary work he's doing with [DataKind UK][] to help [Age UK Islington][] analyse the data they've collected over the last couple of years to improve the targeting of their resources. I certainly hadn't appreciated that Age UK operates a very devolved model and each branch is pretty independent.

Something else I took away was a reminder that it's all very well to write software for people, but you have to think about what will happen when you're gone i.e. who will maintain it. This is especially important when the people you are helping have in-house technical expertise nor the money to pay for help.

Anyway this sounded like an interesting and potentially rewarding project to work on.

## LIDAR map

[Paul][] was impressed by the resolution of the [LIDAR map data][] which was recently [published by the environment agency][lidar-open-data]. He asked whether anyone knew how he could use it to 3D-print a small area around someone's house as a present.

The main suggestion was to somehow transform (I forget how) the LIDAR data into an STL file and use a service like [Shapeways][] to get it prrinted. As an optional extra, some of the (impressive) detail could be conveyed using [texture mapping][], i.e. by printing a photo-like image of the map onto the 3D-printed surface.

## Ambient audio

[Ben][] has been on a long-term mission to make ambient information (e.g. how soon does the next bus leave) available in his home. He's tried a few things e.g. a pico-projector in the hallway, Kindle on the wall, and a receipt printer hooked up to a Slack channel, but he's not really been happy with any of them.

He's recently bought a [Sonos][] system and discovered that it can stream from any [RTMP][] source. He was wondering whether he could use something like [gstreamer][] to inject personalised information into a radio stream from time to time, along the lines of [RDS][] travel news updates. He thought he might be able to use [Google's Text-to-Speech][] to convert the data into audio.

There was a lot of other interesting chat which continued well into the evening over a few pints in the [Horse & Groom][].

Anyway, that's all for now. For those who attended, please feel free to improve [this write-up][] via a [pull request][]!

Until next time,

-- James.


[Chris R]: /chris-roos
[Network Railcards]: http://www.network-railcard.co.uk/
[chrisroos.co.uk]: http://chrisroos.co.uk
[Webby]: http://webby.rubyforge.org/
[Jekyll]: https://jekyllrb.com/
[HTML tidy]: http://www.html-tidy.org/
[colordiff]: http://www.colordiff.org/
[Dave]: http://www.daverog.org/
[MOJ Digital]: https://mojdigital.blog.gov.uk/
[microservices]: http://martinfowler.com/articles/microservices.html
[Chris L]: http://chrislowis.co.uk/
[DataKind UK]: http://www.datakind.org/chapters/datakind-uk
[Age UK Islington]: http://www.ageuk.org.uk/islington/
[Paul]: http://po-ru.com/
[lidar-open-data]: https://environmentagency.blog.gov.uk/2015/06/16/free-mapping-data-will-elevate-flood-risk-knowledge/
[Ben]: https://twitter.com/beng
[Sonos]: http://www.sonos.com/
[RTMP]: https://en.wikipedia.org/wiki/Real_Time_Messaging_Protocol
[gstreamer]: http://gstreamer.freedesktop.org/
[RDS]: https://en.wikipedia.org/wiki/Radio_Data_System
[Google Text-to-Speech]: http://translate.google.com/translate_tts?tl=en&q=Hello%2C+World!
[Horse & Groom]: http://thehorseandgroom.net/
[Shapeways]: http://www.shapeways.com/
[texture mapping]: https://en.wikipedia.org/wiki/Texture_mapping
[domain modeling]: https://domainlanguage.com/ddd/
[unix-philosophy]: https://en.wikipedia.org/wiki/Unix_philosophy
[Monolith First article]: http://martinfowler.com/bliki/MonolithFirst.html
[LIDAR map data]: https://houseprices.io/lab/lidar/
[pull request]: https://github.com/freerange/site/pulls
[this write-up]: https://github.com/freerange/site/blob/master/soups/blog/show-and-tell-18.snip.markdown


:render_as: draft
:kind: show-and-tell
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-11-20 11:28:00 +01:00
:updated_at: 2015-11-20 11:28:00 +01:00
:page_title: Show and Tell 18
