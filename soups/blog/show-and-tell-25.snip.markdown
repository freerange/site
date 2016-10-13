Show and Tell 25
================

[James][james-mead] and I were joined by [Ben G][ben-griffiths], [Tom S][tom-stuart], [Pablo][pablo-manrubia] and [Edward Betts][edward-betts] for our 25th Show & Tell.

We hired the same meeting room at [Forge & Co][forge-and-co] given that it seemed to work well last month.

[ben-griffiths]: https://twitter.com/beng
[edward-betts]: http://edwardbetts.com/
[forge-and-co]: http://forgeandco.co.uk/
[james-mead]: /james-mead
[pablo-manrubia]: http://pmanrubia.info/
[tom-stuart]: http://codon.com/

---

## Disney Infinity

Ben G kicked off by talking about reverse engineering the Disney Infinity portal. It's recently been discontinued so he thought it be interesting to see whether he could use it for anything else.

It all started when he was off work and high on painkillers because of a bad back. He didn't have a USB sniffer but did have 4 text files containing dumps of traffic sent to/from the portal. He'd previously downloaded these from a now-deleted forum post.

Each file contained lines of data that started with AA, FF and in a a couple of cases AB.

Through trial and error he slowly built up an understanding of how the messages worked to control the portal. The AA lines represented messages sent to the base and the FF lines represented the responses. He found the handshake message required to communicate with the portal, the message length part of the message, the checksum part of the message and the message identifier that allowed him to tie the input and output messages together.

He eventually realised that AB messages were messages triggered by a change on the base, e.g. a "tag" (e.g. character, i think) was added or removed.

The portal is a pretty good RFID reader. It can read multiple tags places on top of each other. It thinks an Oyster card is some kind of Disneyland entry band as it pops up in the game to say that you've been to disneyland.

After struggling to get some Ruby USB code working, Ben switched to Python and created a script that would light up the portal depending on which characters you'd placed on the base. This currently works by identifying the specific characters that he has but he thinks it should be possible to identify any "iron man" character, for example - there must be a character code somewhere in a message that he doesn't yet know about.

Apparently you can pick these bases up for about £5 on ebay so he's half wondering about building a game by piecing multiple bases together.

Ben was interested in what he could do next.

The code is on GitHub - TODO:INSERT_LINK.

---

## Show-stopper bug in Ruby

James M explained how releasing Mocha 1.2 lead him to discover a "show-stopper" bug in Ruby.

Mocha 1.2 was the first release in 18 months. We switched to using Prepended modules wherever possible for a cleaner implementation of stubbing methods. This has an unfortunate side effect of causing the Ruby interpreter to enter an infinite loop in certain circumstances.

TODO: Link to Mocha release
TODO: Link to Ruby bug

---

## Houseboat renovation

I spoke about some of the houseboat renovations I've been doing. We bought it about 8 weeks ago and we're slowly realising quite how much work we have to do. It's all I've really been thinking about for at least the last three weeks so I thought I'd explain a bit about what I've been up to.

---

## Improving wikipedia

Edward described the tool he's built to help identify text in Wikipedia articles that should be linked.

http://edwardbetts.com/find_link

This has helped him appear just outside the top 500 Wikipedia contributors!

Interesting to hear about the rules around linking. "Electricity" shouldn't be linked. It doesn't sound as though the rules are formalised.

List of authors by number of contributions: https://en.wikipedia.org/wiki/Wikipedia:List_of_Wikipedians_by_number_of_edits#1.E2.80.931000

---

## Improving OpenStreetMap

Edward went on to talk about using wikidata to help improve open street map.

I guess he wants to add place data to OSM? Or at least link from OSM "places" to wikidata/wikipedia articles.

Wikidata is similar to Freebase and dbpeadia. It's supposed to be a structured data version of wikipedia pages. It'll eventually become the source of some things that appear on wikipedia pages, e.g. translations into other languages, lat/long.

Interesting politics. Wikidata uses the US definition of copyright when it comes to databases - there is no copyright of database. OSM uses EU definition of copyright which is that data cannot be but databases can be. This leads to conflicts when trying to join these two data sets. He had discussions on the mailing lists but couldn't get any real answers. Instead, he just started editing the data. But was then blocked. He now needs to think of a way to crowd source the editing of data so that it comes from multiple people.

He tried importing the entire OSM planet file but gave up after 5 days and no end in sight.


http://edwardbetts.com/osm-wikidata/

Original thread on mailing list in 2014 - https://lists.openstreetmap.org/pipermail/talk/2014-August/070617.html

Example: Link from Wilton's Music Hall on OSM - https://www.openstreetmap.org/way/264532955

To: Wilton's music hall on wikidata - https://www.wikidata.org/wiki/Q8023341

---

## Managing dotfiles

Pablo wanted to minimise the pain of reinstalling OS X on his laptop and went in search of solutions. He came across [Thoughtbot's rcm][rcm]: a "management suite for dotfiles".

He used this to get all of his dotfiles in version control before formatting and reinstalling his machine.

He also came across the Brewfile which is a way of listing all the Homebrew packages you want to install. Similar to a Gemfile for Bundler. I hadn't come across this before.

I use a similar(ish) manual method of copying my dotfiles but it might make sense to move to something that appears to be better supported.

rcm: https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos
brewfile: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
mas: https://github.com/mas-cli/mas


---

## Show and Tell 26

[Get in touch][contact] if you're interested in joining us for the next Show and Tell on Wednesday 9th November.

-- Chris

[contact]: /contact

:render_as: draft
:kind: show-and-tell
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2016-10-13 10:30:00 +01:00
:updated_at: 2016-10-13 10:30:00 +01:00
:page_title: Show and Tell 25
