Show and Tell 25
================

[James][james-mead] and I were joined by [Ben G][ben-griffiths], [Tom S][tom-stuart], [Pablo][pablo-manrubia] and [Edward Betts][edward-betts] for our 25th Show & Tell.

We hired the same meeting room at [Forge & Co][forge-and-co] given that it seemed to work well last month.

![Show & Tell 25 at Forge & Co](/images/blog/2016-10-12-show-and-tell-25-group.jpg)

Credit goes to Tom S for taking some photos during the evening. Thanks, Tom!

[ben-griffiths]: https://twitter.com/beng
[edward-betts]: http://edwardbetts.com/
[forge-and-co]: http://forgeandco.co.uk/
[james-mead]: /james-mead
[pablo-manrubia]: http://pmanrubia.info/
[tom-stuart]: http://codon.com/

---

## Disney Infinity

![Ben at Show & Tell 25](/images/blog/2016-10-12-show-and-tell-25-ben.jpg)

Ben G started the evening by talking about reverse engineering the [Disney Infinity portal][disney-infinity]. Having been recently discontinued Ben wondered whether he could repurpose it for other things. Being off work with a bad back (and while high on painkillers) gave him the perfect opportunity to start exploring the device.

He didn't have a USB sniffer to intercept traffic in real time but he did have 4 files containing traffic dumps that he'd managed to download from a now-deleted forum post.

Sadly, despite his altered state of mind, he wasn't able to gain much insight by simply reading the hex dumps; aside from noticing that the messages all started with AA or FF, with the exception of a small number of ABs.

Ben used Python (having failed to get a Ruby USB library to work) to start sending the messages to the base. Through trial and error he slowly built up an understanding of how the messages worked to control the portal. The AA lines represented messages sent to the base and the FF lines represented the responses. He found the handshake message required to start communicating with the portal, the length part of the message, the checksum part of the message and the identifier that allowed him to tie the input and output messages together. He eventually realised that AB messages were messages triggered by a change on the base, e.g. adding/removing a character.

Ben was able to use all this understanding to create a script that changes the colours on the base depending on the characters that are present. This is all codified in the [Disney Infinity USB Base library][di-usb-library] if you want to play along at home.

Ben's now wondering what else he can do to build on these foundations. Any ideas?

[disney-infinity]: https://en.wikipedia.org/wiki/Disney_Infinity
[di-usb-library]: https://github.com/techbelly/di-usb-library

---

## Mocha and the showstopper Ruby bug

![James at Show & Tell 25](/images/blog/2016-10-12-show-and-tell-25-james.jpg)

James M used the whiteboard to explain how a change in the recent [1.2 release of Mocha][mocha-1-2] led to the discovery of a "showstopper" bug in Ruby.

The latest version of [Mocha][mocha] uses prepended modules to insert the stubbed implementation of a method wherever possible. Unfortunately, it turns out that a [combination of prepended modules, setting method visibility and then getting the method object can cause the Ruby interpreter to enter into an infinite loop][ruby-bug-12832]!

In potentially positive news; while discussing the problem we realised that it might be possible to work around this Ruby bug in Mocha.

[mocha]: https://github.com/freerange/mocha
[mocha-1-2]: https://github.com/freerange/mocha/commit/fdbbc058eb15f11681208dccf86510e8d920982e
[ruby-bug-12832]: https://bugs.ruby-lang.org/issues/12832

---

## Houseboat renovation

![Chris at Show & Tell 25](/images/blog/2016-10-12-show-and-tell-25-chris.jpg)

I spoke about some of the houseboat renovations I've been doing. We bought a houseboat about 8 weeks ago and have slowly been learning about all the work it needs. It's become somewhat all consuming so I figured I'd share a bit about what I've been up to and what I've learnt along the way.

---

## Improving wikipedia

![Edward at Show & Tell 25](/images/blog/2016-10-12-show-and-tell-25-edward.jpg)

Edward started by demonstrating [Find link][find-link]: a tool he's built to help identify text in Wikipedia articles that should be linked.

Using this tool to improve Wikipedia means that he's currently hovering just outside the [top 500 in the league table of Wikipedians by number of edits][wikipedia-edit-league-table]!

I was interested to learn that the rules around whether something should be linked appear to be fairly subjective. Apparently it's common knowledge in the community that "electricity" shouldn't be linked but it doesn't sound as though there are a formal set of rules that help you decide in each case.

[find-link]: http://edwardbetts.com/find_link
[wikipedia-edit-league-table]: https://en.wikipedia.org/wiki/Wikipedia:List_of_Wikipedians_by_number_of_edits#1.E2.80.931000

---

## Improving OpenStreetMap

Edward went on to talk about his effort to use [Wikidata][wikidata] to help improve [OpenStreetMap][osm].

Wikidata is a Wikimedia project containing structured data (i.e. machine readable). For example, it contains a link to the various translations of a Wikipedia article: data that was (and maybe still is) stored as text in Wikipedia itself.

Every entity in Wikidata has a unique identifier that Edward's proposing to add to OSM where appropriate. This would allow you to link from OSM to Wikidata to find further information about a location. For example, a link from [Wilton's Music Hall on OSM][wiltons-osm] to [Wilton's Music Hall on Wikidata][wiltons-wikidata] would allow you to further navigate to the [entry on the Historic England website][wiltons-historic-england].

Edward has written software that allows him to find matches between OSM places and the corresponding entries in Wikidata ([see the matched data on Edward's website][edward-betts-osm-wikidata]). He first [posted to the OSM list about this in August 2014][osm-mailing-list-post] but has experienced some resistance to the idea. As well as some general scepticism about its utility, it sounds as though part of the problem is related to the difference between the US/European definition of copyright and specifically about whether a database is subject to copyright. Having got fed up with the continued discussions he decided to start submitting the changes to OSM. Unfortunately he's been blocked which means that he now needs to find an alternative approach.

[edward-betts-osm-wikidata]: http://edwardbetts.com/osm-wikidata/
[osm]: https://www.openstreetmap.org/
[osm-mailing-list-post]: https://lists.openstreetmap.org/pipermail/talk/2014-August/070617.html
[wikidata]: https://www.wikidata.org/
[wiltons-historic-england]: https://www.historicengland.org.uk/listing/the-list/list-entry/1065173
[wiltons-osm]: https://www.openstreetmap.org/way/264532955
[wiltons-wikidata]: https://www.wikidata.org/wiki/Q8023341

---

## Managing dotfiles

![Pablo at Show & Tell 25](/images/blog/2016-10-12-show-and-tell-25-pablo.jpg)

Pablo wanted to do a clean install of OS X on his laptop but didn't want to have to spend ages trying to remember/learn what he needed to install to get it all back up and running.

He did some research and came across [Thoughtbot's rcm][rcm]: a "management suite for dotfiles". He used this to get his existing dotfiles in order so that he could be confident he wouldn't lose anything after the reinstall.

He also came across [Homebrew Bundle][homebrew-bundle]: "Bundler for non-Ruby dependencies from Homebrew" (see the [brewfile blog post][brewfile-blog-post] for more info). This allows you to list the Homebrew packages you want installed and store them alongside your dotfiles. It turns out that you can additionally use the [mas-cli][mas-cli] command line interface to the Mac App Store so that you can also list/install your App Store apps from the Brewfile.

I can imagine adding the Brewfile to my dotfiles repo and potentially switching to rcm instead of my current home grown solution.

[homebrew-bundle]: https://github.com/Homebrew/homebrew-bundle
[rcm]: https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos
[brewfile-blog-post]: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
[mas-cli]: https://github.com/mas-cli/mas

---

## Show and Tell 26

[Get in touch][contact] if you're interested in joining us for the next Show and Tell on Wednesday 9th November.

-- Chris

[contact]: /contact

:render_as: blog
:kind: draft
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-10-13 10:30:00 +01:00
:updated_at: 2016-10-13 10:30:00 +01:00
:page_title: Show and Tell 25
