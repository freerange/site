Week 167
--------

Woohoo.  It's me, [Chris], back in the typing seat.  And what a beautiful day to be sat inside reading the Internet in an attempt to postpone writing these notes.  But no longer shall I read the Internet.  I shall go full screen and write with all my might.  Oh yes.

## PAYE end of year shenanigans

Being the last month of the financial year we had the pleasure of submitting our P35 and P14s to Her Majesty.  Well, not quite to Her Majesty, but to one of her beloved children: Revenue and Customs.  I dutifully filled in all the information and sent the reports into the ether using the Basic PAYE Tools.  Only after making sure they'd definitely been sent did I ask our accountant whether we'd filled them in correctly.  It turns out that due to my laziness *we'd* neglected to submit P11Ds.  The effect was that [James A] and I had to <del>waste</del> spend a good couple of hours trying to work out what goes on the form.  James wanted to ignore the Turkey we bought him last week but I told him that the rules were very clear about such things[^seasonal-turkey].

## People leaving and joining (was LLP vs LTD)

We've pretty much decided not to continue with the LLP investigation.  We're now fairly confident that we can get the flexibility we're after, particularly when it comes to people joining and leaving, with an LTD so we're going to stick with that for the forseeable future.

As for people leaving and joining, James mentioned [last week] that one of the problems is the relatively large sum of money we've got in the bank.  It's very tempting to think of a quarter of the distributable cash (i.e. the money left after covering all our liabilities) as mine, a line of thinking we've encouraged with the amount we paid [Kalv] and [Jase] on their departure (a 6th and 5th of the distributable cash respectively).  However, that line of thinking makes it difficult to bring new people on because all of a sudden the share for which I qualify has decreased.  [Tom]'s come up with what sounds like a pretty good way to get around this, although it's still to be decided whether we go ahead with it or not.  In Tom's world we'd continue to pay ourselves monthly (we all agree that this is important, especially when we're not working on a client project, to keep a sense of identity to GFR) but we'd also take additional larger payments when there was money in the bank to do so.  The aim is to leave enough cash in the bank to sustain ourselves for a given length of time (3 months, say) but to extract everything else.  As mentioned, we need to discuss it further but it does feel as though it'd make it easier to see what new joiners would be entitled to, and how much one might receive when they leave.

Oh, and in discussing how public we make these sort of details earlier today, Tom suggested that I want to run the company in the vein of a <del>exhibitionist</del> naturist[^naturist]: dangling those things that're normally hidden away right there in your face.  A nice image, I think you'll agree.

## Ikeakakakakakakaka

The Swedish Santa came to visit us on Monday, unloading a sackful of self-assembly goodness all over our office.  Tom challenged James A to a chair making race, which he promptly lost.  Better luck next time, eh Tom.

## Sauron

Progress on [Sauron] has been fairly slow this week.  Tom has been the main contributor with a slew of commits resulting in [pull request 14].  After talking through the commits on Wednesday afternoon we promptly merged them down to master.  Thanks, Tom!

James A has also been exploring the idea of using [explicit requires] in the app.  The main motivation is to speed up the execution of tests: We're often running a single test during development and it's much, much quicker to do that when you don't have to load the entire Rails environment each time.  An observed side-effect of this change is that it makes it easier to see when a given object relies on too many other objects to get its work done.

As well as this development effort, we spent some time discussing how we felt the project was going in general.  As has been mentioned before, we're trying to use it to explore how we work together across all aspects of the project.  Some points out of that discussion:

* We didn't find stories to be very useful at the very start of the project.  It's much easier to write stories based on something concrete (our walking skeleton, for example) than to discuss them in the abstract.
* The introduction of the fake Imap server was really useful for our integration tests.  It meant that we didn't have to stub or mock in our integration tests.
* Object injection is useful for testing.  This is pretty obvious but it's not always the way you end up doing things when you follow the Rails Way.
* A single person driving, with others watching/questioning works really well. Certainly when compared to all four of us discussing an approach in the abstract.
* Placing some of the high level goals in the README was a really useful exercise and helps remind us of some of the overall aims of the project.

## Converting Mocha's documentation

[James M] has spent the latter part of the week wishing he'd never started converting [Mocha's documentation][mocha-documentation] from [rdoc] to [yard].  All while trying to juggle GFR duties, house viewings and dealing with mortgage advisers.  A splendid effort, James :-)

## Timmy printface's protégé

James continued to work on Timmy's descendent, dropping a [couple](http://twitter.com/#!/lazyatom/status/185118227729358848) of [hints](http://twitter.com/#!/lazyatom/status/185118227729358848) along the way as to what's in store.  Watch this space, as they say.

## Some more GDS work?

[James Stewart], Etienne and David from [GDS] came to see us on Wednesday.  They've got a couple of projects that we might possibly be able to help them out with.  We spent some time discussing the projects internally and have agreed that we'd be interested in at least one of them.  Nothing's set in stone so we'll have to wait to see what happens.

## The Agile Delivery Network

Tom, James M and I met [Chris Parsons] for lunch today, to talk about the [ADN] and how GFR might fit in with that.  The primary focus of the ADN is to make it easier for SMEs to engage with government.  Although we've already worked for GDS, I'm not sure there's any guarantee that we'd be able to do so again quite so easily, which is something that joining the ADN might help with.  Ignoring that for a second, I think our main motivation to join, should we decide to do so, would be to promote the work they're doing in trying to improve the procurement process within government.

## Roosmarks and Rabbit holes

I've started playing around with some software that's essentially a delicious or pinboard clone (aka Roosmarks, see what I've done there?  Pretty clever huh).  I have some ideas about how a simple bookmarking service might be a little more useful when I'm in a kinda research mode online.  I've got the project in git but have decided against pushing it up to github for now: Not for any desire for privacy but because there's every chance I'm going to throw it away if my playing doesn't yield anything useful.

I did manage to find myself in a bit of a rabbit hole when working on the project.  I was getting a warning from Nokogiri about the version of libxml it was using.  I did some digging and found the 'problem' to be caused by the combination of the pg gem and nokogiri.  I submitted [ticket 122] to the pg project and received a pretty rapid response explaining that it wasn't a pg issue along with a bit of a pointer to explore some more.

And with that, I am very definitely spent.  Have good weekends y'all.  Chris.

[ADN]: http://www.agiledelivery.net/
[Chris]: /chris-roos
[Chris Parsons]: http://twitter.com/#!/chrismdp
[GDS]: http://digital.cabinetoffice.gov.uk/
[James A]: /james-adam
[James M]: /james-mead
[James Stewart]: http://twitter.com/#!/jystewart
[Jase]: /jason-cale
[Kalv]: /kalvir-sandhu
[Tom]: /tom-ward
[explicit requires]: https://github.com/freerange/sauron/commits/avoid-autoload
[last week]: /week-166
[mocha-documentation]: http://floehopper.github.com/mocha/
[pull request 14]: https://github.com/freerange/sauron/pull/14
[rdoc]: http://rdoc.sourceforge.net/
[sauron]: https://github.com/freerange/sauron/
[ticket 122]: https://bitbucket.org/ged/ruby-pg/issue/122/warning-nokogiri-was-built-against-libxml
[yard]: http://yardoc.org/

[^naturist]: My bad. Tom actually said naturist but I managed to think 'exhibitionist' when recalling the conversation. Read into that what you will.
[^seasonal-turkey]: See "Seasonal gifts" of [EIM21863](http://www.hmrc.gov.uk/manuals/eimanual/eim21863.htm).

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2012-03-30 16:24:00 +01:00
:updated_at: 2012-03-30 16:24:00 +01:00
:page_title: Week 167