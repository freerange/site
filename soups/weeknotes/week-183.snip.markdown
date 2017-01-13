Week 183
========

Hello folks,

I'm writing the notes this week from near [Tighnabruaich](http://upload.wikimedia.org/wikipedia/commons/4/4a/Tighnabruaich.ogg), on the west coast of Scotland. Signposts everywhere tell me that I'm in "[Argyll's Secret Coast](http://www.argyllsecretcoast.co.uk/)", and it's certainly a secret well kept from mobile phone reception. It is, that said, [incredibly beautiful](http://www.panoramio.com/photo/38419874).

Strictly speaking I'm on holiday[^holiday], so I can't tell you what has been happening on [GOV.UK](/government-single-domain), but you can always follow the project [on GitHub](https://github.com/alphagov/whitehall) and [Pivotal Tracker](https://www.pivotaltracker.com/projects/367813) to see what the team have been up to.

In other news, {l james-mead, James M} has been putting more polish on [another Mocha release](https://rubygems.org/gems/mocha/versions/0.12.1), with the focus still on working out a better way to integrate with the diverse diaspora of Ruby test libraries. In particular, he's been looking at code in the latest version of MiniTest, and at the suggestion of {l chris-roos, Chris}, how other mocking libraries integrate with it.

Speaking of {l chris-roos, Chris}, as well as providing a second pair of eyes on Mocha work, he's been looking at [Printer][gfr-printer], and in particular to see if he could do something about a couple of small issues he had when going through the demo printer apps when setting up a printer with [AND publishing](http://www.andpublishing.org/) last week. One of the (inevitable) side-tracks he was drawn down is the temperamentality of Arduino networking, particularly with the network in our office. We are driven to explore and resolve every piece of weird behaviour we see, but some mysteries weren't meant to be solved -- particularly those involving hardware.

As Tom mentioned {l week-182,last week}, we've been [gathering feedback](https://docs.google.com/a/gofreerange.com/spreadsheet/viewform?formkey=dEl5emNJUGlOWVNEaENuWFZsTHJMdXc6MQ#gid=0) about {l heylist}. It would've been great to have more people using it during our test, but even the small amount of feedback that we've got has been strongly positive. Some excerpts:

> "The #scotruby hashtag was mostly uninteresting backchannel nonsense about talks being "awesome" etc, whereas the list had all the juicy information about who was stuck halfway to Scotland because of delayed trains, who was meeting whom for drinks/meals etc, which was exactly the sort of thing I wanted to know."

> "Very useful/interesting! caught lots of summaries/links for talks i wasn't at."

I hope that we'll develop the idea more.

Whilst avoiding insect bites and heartburn {l james-adam,I} made a couple of small fixes to Sauron to [capture some known, intermittent errors](https://github.com/freerange/sauron/compare/31aafd77ab6e6223da2965b6e789bf10d061ba8f...f676126250c6c0fc5f260990f43dde948a056ab4) and reduce the amount of email we get about failed imports. I also [fixed the atom feed](https://github.com/freerange/site/commit/4be0aa2d6b0217982f156d2aba2673e6557839dc) for [this blog](/blog) (you did notice, didn't you?). I've also, as ever, been thinking about longer-term plans for [GFR](/) and how we balance client work with other goals, and how we manage exploring that balance, and how I manage my approach to exploring that balance... it's turtles all the way down.


That's all for Week 183. Have a good weekend!

-- James

[^holiday]: In so far as I'm *ever* on holiday :-/

[gfr-printer]: https://exciting.io/printer/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-07-20 10:30:00 +01:00
:updated_at: 2012-07-20 15:32:00 +01:00
:page_title: Week 183
