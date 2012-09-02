Week 185
--------

Alohahaha everybody peeps.

[James M][] has spent a well deserved week resting (I hope) in Normandy, leaving [James A][], [Tommo][] and I to hold the fort.  I think we've done a pretty good job of piling up all the [Raspberry Pi][] related kit that James M has been buying.  He promises us that he'll soon have enough to make it impossible for him to ignore; at which point we expect great things :-)

As mentioned by Tommo in last weeks notes (weird, it feels like hardly 3 days have passed) we've had a meeting and decided some _things_.  The main _thing_ is that we're going to make a more concerted effort to explore the possibility of shifting our source of income from purely client work to something else.  We like to think that we're quite good at computers so it seems obvious that we'd try to build a product that people can pay for in some way.  In the interests of starting small we've agreed that we'll try to build something that has a modest number of regular users by the end of the year (and ideally sooner).  In this initial phase, we're not so interested in actually charging people for whatever it might be, as we're more interested in using the opportunity to learn how to build something that people want to use.

As a somewhat relevant aside, we actually agreed to go for this product-with-regular-number-of-users idea back around [week 174][] but I certainly haven't been doing as much as I could to meet this target.  Last week's meeting really helped me to solidify my understanding of the motivation for the target.  We still don't really know how we're going to get to a polished product that people want to use but our plan is to continue sharing our product ideas internally (we're using Google Docs for this), work on whatever we're interested in and regularly share our progress and thoughts about how what we're doing fits in with The Goal.  We're aware that one danger of going down this route is that we create a product that gains traction and compels us to maintain it even after it's served its purpose for us, but should that happen we'll treat it as one of those "nice problems to have".

It was around the time of The Meeting that I came across [Thoughtbot's Playbook: Video Edition][playbook-video].  I bought a licence and have watched the first three videos so far.  I'm not sure we're exactly the target audience of the content but one thing I've definitely taken away is the idea of sketching ideas more.  This is something that I would've naturally done in the past but have fallen out of the habit of doing.  I guess it's just more natural to dive into coding because that's what feels comfortable, even though that's not necessarily the best place to start.

On the GFR development front this week, we've spent some more time on [Printer][], [Mocha][] and Harmonia NG (which is still at the super secret research stage).  It's becoming clear with Printer that the majority of people just want to start printing things, while one of James A's motivations for building the platform was to see what sort of content services people would build.  We've got a couple of ideas about how we might address this, including possibly adding some content generation instructions to something like [instructables.com][].  However, it's now getting to a stage where it's slightly more difficult to justify spending time on Printer when we're thinking in terms of The Goal.

We've had a couple of issues reported to Mocha this week.  The project is of such a size, and used widely enough, that irrespective of the number of tests in place, or how careful we are, there's always a possibility of our changes breaking it for someone.  All we can do is continue to ensure any disruption is kept to a minimum.

I came across the term [Indie Web][] for the first time this week, even though the ideas that the term encompasses are close to my heart.  I got there after watching [this interview][brett-slatkin-interview] with [Brett Slatkin][], which I'd suggest investing 7 minutes in.  Part of my motivation for [Roosmarks][] was to create something useful that people could host on their *own servers*.  I haven't done any development on the project for a while but definitely felt motivated to do so after watching the video.  For now, I'm going to resume using Roosmarks so that I can feel the pain and focus my efforts in those areas.

I'm going to finish by mentioning a little problem we had on [Whitehall][] this week.  I'm not mentioning it to cause any embarrassment or to blame anyone, but rather because I think there are useful things to take away from the experience.  The GDS platform had stated an intention to migrate from [Passenger][] to [Unicorn][].  Thinking that it'd be a relatively easy switch, we decided to make the move last Friday and everything seemed to go OK.  Unfortunately, we started encountering problems on Monday and only really got everything back to a "normal service resumed" status yesterday.  It's easy to say in hindsight, but we clearly weren't ready to migrate to Unicorn and we should've switched back to Passenger at the beginning of the week, thereby giving us time to ensure we were ready for Unicorn.  Instead, we found ourselves in a state where we couldn't deploy our application[^1], which is somewhere we never want to be.  The idea of containing the problem first (i.e. switching back to Passenger and stability in this case) is one that I learnt from [Ben Griffiths][] while working together at [Reevoo][].  I didn't do a very good job of following that advice this time round and hope that I'll do a much better job next time.

Anyways, that'll do us for now.  Have a great weekend y'all.

[^1]: I should emphasise that we could technically deploy but doing so would result in downtime while Unicorn restarted.  While this wouldn't have affected many end users whose content would've been served from the cache, it would've resulted in our [Smoke tests] failing on each deploy, and we decided that that wasn't acceptable.

[ben griffiths]: http://twitter.com/beng
[brett-slatkin-interview]: http://www.youtube.com/watch?v=1f5RJ8daolg
[brett slatkin]: http://www.onebigfluke.com/
[indie web]: http://indiewebcamp.com/Main_Page
[instructables.com]: http://www.instructables.com/
[james a]: /james-adam
[james m]: /james-mead
[mocha]: /mocha
[passenger]: https://www.phusionpassenger.com/
[playbook-video]: https://workshops.thoughtbot.com/products/7-the-playbook-video-edition
[printer]: /printer
[raspberry pi]: http://www.raspberrypi.org/
[reevoo]: http://www.reevoo.com
[roosmarks]: https://github.com/chrisroos/roosmarks
[smoke tests]: https://github.com/alphagov/smokey
[tommo]: /tom-ward
[unicorn]: http://unicorn.bogomips.org/
[week 174]: /week-174
[whitehall]: https://github.com/alphagov/whitehall/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2012-08-03 19:00:00 +01:00
:updated_at: 2012-08-03 19:00:00 +01:00
:page_title: "Week 185"