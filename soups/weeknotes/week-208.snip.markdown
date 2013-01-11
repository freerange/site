Week 208
========

Welcome to week 208[^208], and to 2013!

Once again I'm writing from the other side of the pond, in Austin, Texas. The weather here is surprisingly changeable right now; it's lovely and sunny today, but a couple of days ago it was cold and wet and miserable. Keeps things interesting I suppose?

Other than some [lovely coverage of the Artisanal Algorithm Snowflakes from Wired Design][wired], it was pretty quiet for GFR over the festive period. I expect that all of the leftover mince pies and other treats have long-since been put to maximum use by those folk still in the office.

Writing about it has me pining for more delicious pastry goods, and mulled wine... delicious, warming nectar, the sweet, happy tears of Old Saint Nick himself, made rouge as they passed his rosy cheeks before falling through spice and fruit into our undeserving bellies OH! The wine, the wine...

...it really was good though.

If you haven't already, you should also read {l tom-ward,"Tom's"} post about [infinite sequences in Ruby](http://tomafro.net/2012/12/infinite-sequences-in-ruby), which contains some technical insights into how [Harmonia](https://harmonia.io) handles recurring events behind the scenes.

So, enough with 2012. *Onwards to 2013*!


New year, new focus
-------

Since early January, however, we've regrouped and are tightly focussed on getting all our ships in line for the new year. There are some fairly intense conversations taking place in the comment threads of a small collection of Google Documents, as various ideas, questions and concerns are refined and explored.

It's basically a shared "*Future of GFR*" vision quest, wherein our embodied doubts and fears can be vanquished. We have yet to find our spirit guide; I'm just hoping it's not the [honey badger](http://www.youtube.com/watch?v=4r7wHMg5Yjg).

It's all feeling quite constructive right now, but I have a sense that we'll quickly need to start distilling, and then perhaps all get the final set of bullet points roughly hewn in local stone, and placed not only in our office but also in the little patch of garden that's visible when glancing outside the living room window. In order words: this stuff is important.


Clearing the decks
--------

As well as all of this introspection, not to mention talking to some new clients about how we might help them, we have also been taking the opportunity to clear off some of the other development concerns that we've got. Such as:


## Mocha

{l james-mead,James M} has been powering through various {l mocha} issues; we are eagerly awaiting the day when [his patches to finally resolve the monkey-patch-pocalpyse within ActiveSupport::Test][mocha-rails-patch] get released and pave the way to a brighter, simpler test tool integration future.

It's not been an easy quest, and I truly admire the patience and tenacity that James has shown in order to get this far, particularly helping people out as they report issues. I personally consider Mocha to be basically part of the unofficial standard libraries of Ruby, and I really appreciate the time and effort he puts into it.


## Code Reviews

Meanwhile, {l chris-roos,Chris} and {l tom-ward,Tom} have been keeping the office running, handling the ins-and-outs of various leads, and most recently undertaking a small code review for a new client. Code reviews are always an interesting challenge, because we have to spend the time quite carefully so that the right balance between breadth (of the codebase and the context) and depth (of specific concerns or implementation recommendations) is achieved.

{l james-adam,I} haven't been directly involved in this work, but I can't think of better people to tackle this than Chris[^toc] and Tom, both extremely seasoned developers but also both sharing a great capacity for *software empathy*; that is, the ability to try and understand the intention behind a piece of problematic or confusing code, rather than insisting that it be completely rewritten to match some platonic ideal.

If you'd like us to help review any of your code, <a href="/#contact">get in touch</a>!


## Interblah, Kintama, and Inventing on Principle

As well as spending a good chunk of my time having "strategic thoughts", I've also seized upon the new year to clear some cobwebs from within the various directories under `~/Code` on my laptop.

I took a few long, rambly blog posts and [broke them up](http://interblah.net/blog-posts-i-will-never-finish) to just be "published" on [my personal site](http://interblah.net). Many aren't finished, but it was particularly nice to get a few words about [Inventing on Principle](http://interblah.net/inventing-on-principle) out into the open. I find that whole presentation really inspiring, and that feeling of inspiration is something we want more of in 2013.

I'm also taking the time to work another of my personal crosses to bear, the experimental [Kintama](http://interblah.net/kintama) test framework. I'm hoping to at least finish some of the thoughts currently postfixed with "Next Steps", so that I can actually start to articulate what might be interesting about it, as opposed to other test frameworks. And the answer could absolutely be "*nothing whatsoever*", but I've got a bit more work before I get there.


Anyway, that's what we're up to, and what we've been thinking about.

How about you?

-- James


[^208]: We slipped a bit around Christmas, and then took a couple of weeks off while we rolled around eating turkey and so on.
[wired]: http://www.wired.com/design/2012/12/algorithmic-snowflakes/
[^toc]: Chris has also started inserting linked *Table of Contents* pages into his Google Docs. I don't know whether or not I should be concerned.
[mocha-rails-patch]: https://github.com/rails/rails/pull/8200

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-adam
:created_at: 2013-01-11 15:21:00 -06:00
:updated_at: 2013-01-11 15:21:00 -06:00
:page_title: Week 208
