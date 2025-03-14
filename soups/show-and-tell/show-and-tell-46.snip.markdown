Show and Tell 46
================

## MIDI MIDI MIDI 

[Rob McKinnon][] has been on a musical adventure and he brought a bagful of devices, cables and instruments to share with us. 
   
<%= image_tag('blog/2018-07-25-show-and-tell-1.jpg', alt: 'Rob and Chris algoraving') %>

Rob doesn't have any formal musical training, but seeing a demo of [Sonic PI][] running on a raspberry pi and being controlled by a PS4 controller excited him. Sonic PI started as a way to teach kids to code using music. Rob wanted to use it the other way around, he knows how to code, but can he learn how to music?

I liked the way that Rob talked about his kids and technology - he wants them to see technology as something that you can play about with, that you can take control of, modify and use to be creative. Inspiring.

Rob talked us through some of the music theory he'd picked up, using a snazzy retro-reproductive [Yamaha reface keyboard][]. Gave us a brief intro to [MIDI][] and its successor/complement [Open Sound Control][], both of which are supported by Sonic PI. We reminisced about the times when all cables ended in [DIN][] plugs. 

We made some terrifying urban loops with a PS4 controller and a looper/sequencer Sonic PI program that Rob had written. It's very satisfying to get immediate audio feedback from running code: "I'll just change this from false to true... Woaaahhh.", "let me just uncomment the drums bit". 

I'm not sure we'll be hosting a GFR [algorave][] any time soon, but this was a terrific demo, Rob, thanks! 

## Web scraping using Common Crawl 

My turn next and I talked about some work we'd done recently that required some web-scraping and how we made that really easy using [Common Crawl][].

CommonCrawl is an enormous dataset of pre-crawled, gzipped webpages, stored on S3 and updated monthly. 

There's a (much smaller) and more manageable index into the dataset that you can use to look up the position (offset and length) of any page you want in the crawl datafiles. Since S3 supports [Range][] queries, knowing the offset and length is enough to directly grab the gzipped html of the page you want. 

For our purposes, I had a list of several thousand domains and I wantd to be able to run queries against all the links on each of their home-pages. I wrote a script that retreived the gzipped content of the home-page for each domain from Common Crawl, parsed the HTML and uploaded a gzipped CSV of all the links on that domain into S3, ready to be queried by [Amazon's Athena][] service. I launched an EC2 instance to run the script on and watched as the data piled up.

I've done lots of web-scraping in the past and getting the content from Common Crawl rather than making requests to a website directly is much easier and more reliable. 

## Show & Tell 47

We'll be hosting our 47th Show & Tell in August. [Join our mailing list][contact] for updates.

[contact]: /contact
[Rob Mckinnon]: https://twitter.com/delineator
[Sonic PI]: https://sonic-pi.net/
[Yamaha reface keyboard]: https://uk.yamaha.com/en/products/music_production/synthesizers/reface/index.html
[MIDI]: https://en.wikipedia.org/wiki/MIDI
[Open Sound Control]: http://opensoundcontrol.org/osc
[DIN]: https://en.wikipedia.org/wiki/DIN_connector
[Common Crawl]: http://commoncrawl.org/
[Amazon's Athena]: https://aws.amazon.com/athena/
[Range]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Range_requests 
[algorave]: https://en.wikipedia.org/wiki/Algorave

:name: show-and-tell-46
:updated_at: 2018-08-08 11:32:05.237082000 +01:00
:created_at: 2018-08-08 11:32:05.237076000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: ben-griffiths 
:page_title: Show and Tell 46
:layout: show-and-tell-layout
:extension: markdown
:erb: true
