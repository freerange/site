Week 278
========

Afternoon everybody peeps. I trust you're all well.

GFR's week 278 was mainly spent on [FutureLearn][]. We're going to be taking a break for a few weeks to do some work with [MakieLab][] and wanted to make sure we were leaving everything in as good a state as possible.

We started the week by analysing the data we'd collected over the weekend from the small number of learners that were trialling the new video player. The results gave us enough confidence to extend the trial to a larger number of learners. We did this and ran the trial for a few days until we had enough data to allow us to draw a conclusion about whether to continue working on the new player or not. Although I don't fully understand the statistics involved, I'm confident in the ability of [Chris Lowis][] who helped us both design the experiment and interpret the results.

Unable to change anything video related while the experiment was running, we spent some time investigating some bugs that had been raised, and getting [Pivotal Tracker][] into a good state with stories that we might want to consider should we decide to continue working on the [video.js][] player. One of the slightly frustrating bugs I investigated was with the poster frame not always appearing on iPads. There are other reports of this around the web but no one appears to have got to the bottom of it. We think we can solve the problem by enabling the video.js custom controls on iPads, but we're nervous to roll these out to everyone because the video.js team aren't confident that they won't make the experience worse on some devices.

It wasn't _all_ FutureLearn, though. We did manage to squeeze a few other things in too.

Both James and I headed to [RubyBiz][] on Wednesday morning. Although we were denied access to the usual haunt, I'd say it ended up for the best as we found an outdoor space in the sun at a cafe (which may or may not have been the Riverside Terrace Cafe) on the Southbank.

We ended Wednesday chatting over a couple of beers about some company things that we don't often find the time to discuss in our normal daily routine. This was good and reminded me that we should try to find more time for that outside of the usual office environment.

[James][] investigated why our RSS feed had stopped working (I think it was 404'ing). As best we can tell, we'd somehow lost our Feedburner account but James managed to reclaim and reconfigure it. The fact that our RSS feed had silently stopped working reminded me of some of the [criticism about feeds on the indieweb wiki][IWC feed criticism].

I managed to do a little more work on the [Free Agent Transaction Explainer utility][FA trans explainer], so that it can help us explain our Google Apps for Business invoices. This was after James and I spent some time trying to understand the reverse VAT charge requirements of these invoices. While I still find this utility useful, I am starting to get a bit wary of the amount of information we have in it. One particular area of concern is that there's no visible difference between it not being able to find a matching rule, and it simply not working.

James managed to get a pull request merged into [Mocha][] and tidied up a few things ready for a 1.1.0 release.

Finally, both [Tom W][] and [Chris L][] were in the office on Friday so a few of us finished the week having a few beers in the sun outside the Old King's Head. Which is always a good way to end the week.

-- Chris.

[Chris Lowis]: http://blog.chrislowis.co.uk/
[Chris L]: http://blog.chrislowis.co.uk/
[FA trans explainer]: https://github.com/freerange/free_agent_transaction_explainer
[FutureLearn]: https://www.futurelearn.com/
[IWC feed criticism]: http://indiewebcamp.com/feed#Criticism
[James]: /james-mead
[MakieLab]: http://www.makieworld.com/
[Mocha]: https://github.com/freerange/mocha
[Pivotal Tracker]: http://www.pivotaltracker.com/
[Rubybiz]: http://rubybizuk.com/
[Tom W]: http://tomafro.net/
[video.js]: http://www.videojs.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2014-05-21 18:30:00 +01:00
:updated_at: 2014-05-21 18:30:00 +01:00
:page_title: Week 278
