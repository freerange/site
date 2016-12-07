Week 407
========

This week we met up on Monday, Wednesday & Friday to work together. We worked at the [Benugo Bar & Kitchen at the BFI on the Southbank][bfi-benugo] on Monday & Friday, and at [The Office Group (TOG) in Bloomsbury][tog-bloomsbury] on Wednesday.

### Business development

We continued our discussions with [GDS][] about working on a number of possible projects. In the meantime we also tried to find out more about the implementation of the [Competition & Markets Authority][]'s investigation into the Retail Banking Market ([PDF][retail-banking-market-investigation]) which seems to relate to some of the motivations behind our [Credit Union project][].

As far as we can tell, it appears that [Payments UK][] have helped establish the [Implementation Entity Steering Group][] which is supposed to be driving the project forward. We'd love to know more about this project and so if anyone knows anything, please get in touch!

Last week we heard from Jack, a recent graduate from UCL, who's started a [worker cooperative][worth-cooperating] in West Yorkshire and is developing [Fairmondo UK][], an ethical and cooperatively-owned online marketplace. They're currently using a [Sharetribe][] implementation as an MVP, but plan to run a crowd-funding campaign in the New Year in order to make the platform more sophisticated, perhaps by building on the [Rails app][fairmondo-repo] which [Fairmondo DE][] have built.

Jack was wondering how sensible it would be to do the latter. Chris had a quick look through the codebase and reassuringly didn't see anything too scary. Jack's got a place at the [Digital Co-ops Retreat][], so we hope to catch up with him there.

### Website

Our company website has been much neglected, but we are slowly bringing it up to date. This week we made a few improvements to the list of projects:

* Only display a curated list of [three projects](/#work) on the home page.
* Link to the full list on a [separate page](/projects).
* Added Smart Answers project.
* Added FutureLearn Video project.

### Operations

When backing up our DNS settings recently, I noticed that our SPF DNS record mentions Amazon SES. We were both a bit unsure why this was so. After a bit of investigation, I realised we had set it up for the [GFR Video][] project. The project is still technically "alive" and so I've left this in place for now, but added a comment to explain this in our DNS zone file.

A while ago [James A][] made [an improvement][recap-issue-115-comment] to [a fix][recap-issue-115] I'd previously made to the [recap][] project which we use for deployment of our own apps (including this website). It turned out that the fix was only relevant to the GFR Video app, because it's the only app which has a background worker process in its `Procfile`.

### Open source

[Charles Nutter][] merged a [JRuby bug fix][jruby-pull-4250] last week and so I tried to verify that the [Mocha][] build passed with the HEAD version of JRuby. Initially I tried using `rvm` with `jruby-head`, but this didn't appear to include the fix, so I ended up building the `master` branch of JRuby which did and the Mocha build passed - yay!

Also prompted by [a comment by Charles Nutter][mocha-issue-274-comment], I released new versions of the long-neglected [introspection][] & [instantiator][] gems.

On Wednesday, [Chris](/chris-roos) very patiently paired with me while we tried to work out what should happen if someone tries to [serialize a Mocha mock object or a partial mock][mocha-pull-81]. I'm really torn between failing fast or trying to do something vaguely sensible. I think we made some progress, but didn't manage to bring things to a conclusion.

Having reported a couple of Ruby bugs recently which both resulted in infinite loops, I was interested to understand why in one case it was possible to interrupt the loop, but in the other it was not. [According to George Koehler][ruby-bug-12832-comment] this is to do with the fact that, [like Perl][perl-deferred-signals], Ruby defers signals.

Last week we responded to an email from Anna Shipman about requests from people in other countries wanting to re-use the [Smart Answers][] code. I followed up this week with a more detailed explanation of where we'd got to in our giant refactoring mission and re-iterating our offer of support. It turned into quite a long email, so I hope it was genuinely useful -- if nothing else I found it helpful to reflect on where we got to on the project.

### Company admin

We did our usual Trello prioritisation session on Monday, but this time followed it up by going through the long-neglected "Later" list. Next we had a go at reviewing our goals from last week and coming up with some new ones, although I can't find any record of what we agreed, so I'm not sure it was very successful!

On Wednesday we picked up our TOG Lounge Membership cards which will make it easier to access their offices, especially the Bloomsbury one which has separate building-level security.

### Music Library

The [Papertrail Heroku add-on][papertrail] started generating lots of annoying email notifications at the end of last week as the app kept exceeding the logging limit for the free plan. I addressed this by [filtering out][papertrail-filter] a bunch of the DelayedJob-related log messages which seemed to form the bulk of the log files. This seemed to mostly do the trick.

Later in the week [Rachel][] passed on some positive feedback about the app from a client which was nice to hear.

### Fun times

On Friday we met up with [Ben G][] at the BFI with the vague idea of building something fun using software. Ben has been suffering from horrible headaches recently and this has meant he struggled to play computer games with his kids, but he discovered that he was OK playing card games. Apparently he often plays appropriate music in the background when they're playing these games and even changing the music to something more dramatic at significant points in the game.

Ben wondered whether we could somehow automate the generation of a soundtrack matching the state of the game. We decided that it would probably be too hard to try to work out the state of a card game, but that it might be easier to do with a board game and we ended up choosing chess.

Initially we split our efforts: I was to investigate capturing the state of the game; Chris was to find a way to convert the state of the game into a score indicating who is winning and by how much; and Ben was to look at generating a soundtrack based on this score.

I started off by looking at some image recognition options. We found a paper, [CVChess: Computer Vision Chess Analytics][cvchess-paper], which claimed to capture the state of a chess game in real-time based on the images from a laptop web-cam with a side-on view of the board and [the video][cvchess-video] certainly looked very promising. However, when I came to look at the [source code][cvchess-repo], it quickly became obvious that the code wasn't in a usable state.

I then explored the possibility of alternative ways of sensing the positions of the pieces. Unfortunately ready-made sensory boards generating a useable output turned out to be [prohibitively expensive][dgt-sensory-chessboard], so I looked into whether we could build our own. It sounded as if positioning the magnetic sensors would be tricky if we did it from scratch, so thought that building this [SolusChess][] project using a modified [Mephisto Modular chessboard][] would be a good half-way house. Unfortunately it took me a long time to source one of these boards on eBay and I didn't notice the one I purchased was being shipped from Germany - so we weren't going to get it any time soon.

In the meantime, Ben hacked together a web page which used the [Web Audio API][] to play a looping background soundtrack with the _intensity_ of the sound dependent on the position of a slider control. I'm pretty sure he based this on [the background music example in this tutorial][html5rocks-background-music-example]. The idea was for Chris to supply a score to replace the value taken from the slider control.

Chris found the open-source [Stockfish chess engine][stockfish] which looked as if it could analyse the state of a game and give an indication of who was winning. Fortuitously someone has ported this engine to JavaScript using [Emscripten][] and Chris managed to create a web page to interact with it via a "console". He discovered that the engine provides a score in [centi-pawns][] which he thought we could use, albeit that the score has a [non-linear relationship][stockfish-centipawn-vs-probability] with the probability of a win. Ben worked around this non-linearity by capping the absolute value of the centi-pawn score as he integrated the [JavaScript Stockfish engine][stockfish-js] into his web page.

Towards the end of the day, based on [this example][chessboard-js-random-vs-random-example], I managed to wire up a user interface into the web page to provide input into the Stockfish engine. This user interface makes use of [chessboard.js][] for the visual component and [chess.js][] to work out legal moves. This meant that we could manually play a game of chess and have the background soundtrack change depending on the state of the game. Yay! A very satisfying end to the day.

We planned to continue work on the project the following week.

Until next time.

-- James

[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[Competition & Markets Authority]: https://www.gov.uk/government/organisations/competition-and-markets-authority
[retail-banking-market-investigation]: https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/523755/retail_banking_market_pdr.pdf
[Credit Union project]: /credit-union
[Payments UK]: http://www.paymentsuk.org.uk/
[Implementation Entity Steering Group]: http://www.paymentsuk.org.uk/policy/payments-CMA-remedy-phase1/temporary
[Ben G]: https://twitter.com/beng
[bfi-benugo]: http://www.benugo.com/restaurants/bfi-bar-kitchen
[tog-bloomsbury]: http://www.theofficegroup.co.uk/office/the-bloomsbury-building/
[Fairmondo UK]: http://www.fairmondo.uk/
[Sharetribe]: http://www.sharetribe.com/
[Fairmondo DE]: http://www.fairmondo.de/
[fairmondo-repo]: https://github.com/fairmondo/fairmondo
[Digital Co-ops Retreat]: https://wiki.coops.tech/wiki/Main_Page#Wortley_Hall_2016
[worth-cooperating]: https://beta.companieshouse.gov.uk/company/09259314
[GFR Video]: /gfr-video
[James A]: http://lazyatom.com/
[recap-issue-115-comment]: https://github.com/tomafro/recap/issues/115#issuecomment-255058393
[recap-issue-115]: https://github.com/tomafro/recap/issues/115
[recap]: https://github.com/tomafro/recap
[jruby-pull-4250]: https://github.com/jruby/jruby/pull/4250
[Charles Nutter]: http://www.headius.com/
[Mocha]: /mocha
[mocha-pull-81]: https://github.com/freerange/mocha/pull/81
[mocha-issue-274-comment]: https://github.com/freerange/mocha/issues/274#issuecomment-256157095
[introspection]: https://rubygems.org/gems/introspection/versions/0.0.4
[instantiator]: https://rubygems.org/gems/instantiator/versions/0.0.7
[deferred-signals]: http://perldoc.perl.org/perlipc.html#Deferred-Signals-(Safe-Signals)
[ruby-bug-12832-comment]: https://bugs.ruby-lang.org/issues/12832#note-9
[Smart Answers]: https://github.com/alphagov/smart-answers
[Rachel]: https://twitter.com/rachmenzies
[papertrail]: https://elements.heroku.com/addons/papertrail
[papertrail-filter]: http://help.papertrailapp.com/kb/how-it-works/log-filtering/
[cvchess-paper]: http://web.stanford.edu/class/cs231a/prev_projects/chess.pdf
[cvchess-video]: https://www.youtube.com/watch?v=iZOA1ew-zYc
[cvchess-repo]: https://github.com/jayhack/CVChess
[dgt-sensory-chessboard]: http://shop.chess.co.uk/DGT-Sensory-Chess-Board-USB-Walnut-with-Timeless-p/cb01839.htm
[SolusChess]: https://sites.google.com/site/bergersprojects/reedcb
[Mephisto Modular chessboard]: https://sites.google.com/site/bergersprojects/reedcb/alternatives
[Web Audio API]: https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API
[html5rocks-background-music-example]: https://www.html5rocks.com/en/tutorials/webaudio/games/#toc-bg
[stockfish]: https://stockfishchess.org/
[Emscripten]: http://kripken.github.io/emscripten-site
[stockfish-js]: https://github.com/exoticorn/stockfish-js
[chessboard-js-random-vs-random-example]: http://chessboardjs.com/examples#5002
[centi-pawns]: http://chess.wikia.com/wiki/Centipawn
[stockfish-centipawn-vs-probability]: http://chesscomputer.tumblr.com/post/98632536555/using-the-stockfish-position-evaluation-score-to
[chessboard.js]: http://chessboardjs.com/
[chess.js]: https://github.com/jhlywa/chess.js

:name: week-407
:updated_at: 2016-11-28 15:44:09.909500000 +00:00
:created_at: 2016-11-28 15:44:09.909489000 +00:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 407
:extension: markdown
