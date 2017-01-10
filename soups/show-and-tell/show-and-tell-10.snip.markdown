Show and Tell 10
================

We had a pretty good turn out for Show and Tell 10 this week, with 9 of us in attendance at the [Star of Kings][].

I thought it was going to be a short one as no one really had much to show, but [Ben][], [Tom S][] and I managed to rustle up some "emergency" things to talk about. We probably spent a couple of hours chatting and I _think_ it went OK.

## Personal data collection

I kicked things off by explaining how I use [Google Forms][] and [Todoist][] to make it relatively easy for me to keep records of some personal data (e.g. weight) I want to collect. I was interested in whether anyone else collected this sort of information.

Tom S collects some health information but does so automatically using a [Fitbit][] and scales.

[Murray][] said that he records a few different things, always with the intention of doing something with the data. This resonated with me: I've become quite good at recording various things but haven't quite made the jump to start analysing/interpreting any of it. Murray talked about recording the books he's read, which is something I've also been doing over the last couple of years. Tom S mentioned [@revdancatt's "kindle book cataloging system"](https://twitter.com/revdancatt/status/572837279535915009/photo/1) which looks like a neat way of visualising my reading diary; particularly given that most of them are now ebooks.

Ben raised an interesting point about the collection of health data. Our understanding of health has been based on diagnosing symptoms rather than interpreting raw data. Presumably it'll be possible to have data that suggests one thing and the symptoms, or lack of, suggesting another.

[Chris L][] mentioned that he used to go through his receipts and bank statements making sure everything was in order. [Nicky][] and [Tom W][] chimed in by saying that they've both recently started using [You Need a Budget][] (YNAB) for this purpose. I'm interested in this area and have recently spent time rethinking how [Money Tracker][] might help me understand more about my spending habits.

## XSV

I finished up by giving a very quick demonstration of [xsv][] having included it in our week links from yesterday.

## Board games

Ben was up next and showed us pictures of some of the games and game accesories he's been making with his children. They've made a dice rolling tower to help avoid dice from going everywhere and some game trays to keep board game components neat and tidy in the box. It was fascinating to learn that custom game trays are quite a big thing with lots of people sharing their creations.

Ben also described a game that he and his son are making. They've created the board and are now testing the rules, using spreadsheets and some Ruby scripts, to ensure that the game is both fair and that it lasts a sensible amount of time.

## Syntax highlighting

Tom S talked us through the process of syntax highlighting the code snippets in the ebook he's writing ("[How to Write a Web Application in Ruby][]"). He's taken the [Ruby script][] that he used to syntax highlight the [Understanding Computation][] book and rewritten it in Python. This allows him to hook deeper into the [Pygments][] library rather than simply shelling out to it from Ruby. The result is DocBook XML that uses a custom Pygments namespace to markup the code snippets; giving Tom a great deal of control over the resulting format. Tom's currently producing a PDF from the DocBook but believes that the changes to the syntax highlighting will make it really easy to produce good looking HTML too.

Tom also briefly demonstrated [O'Reilly Atlas][], the new publishing tool from O'reilly that lets authors edit their books and build new versions. Tom's already made use of this to update the dead Rubyforge URLs in his Understanding Computation book.

Until next time.

-- Chris

[Ben]: https://twitter.com/beng
[Chris L]: http://blog.chrislowis.co.uk/
[Fitbit]: http://www.fitbit.com/
[Google Forms]: http://www.google.co.uk/forms/about/
[How to Write a Web Application in Ruby]: http://rubywebapp.com/
[Money Tracker]: https://github.com/chrisroos/money-tracker
[Murray]: https://twitter.com/hlame
[Nicky]: http://www.knotnicky.com/
[O'Reilly Atlas]: https://atlas.oreilly.com/
[Pygments]: http://pygments.org/
[Ruby script]: https://gist.github.com/tomstuart/4462577
[Star of Kings]: http://starofkings.co.uk/
[Todoist]: https://todoist.com/
[Tom S]: http://codon.com/
[Tom W]: https://tomafro.net/
[Understanding Computation]: http://computationbook.com/
[xsv]: https://github.com/BurntSushi/xsv
[You Need a Budget]: http://www.youneedabudget.com/

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-03-12 14:30:00 +00:00
:updated_at: 2015-03-13 13:00:00 +00:00
:page_title: Show and Tell 10
:layout: show-and-tell-layout
