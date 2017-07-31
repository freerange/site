Week 172
========

Our new-found focus on, well, _focusing_, continued in Week 172, but we have very temporarily parked [Sauron][] in order to get [Recap][] to 1.0.0. We'll explain more about Recap in another blog post today, as soon as [Tom](/tom-ward) emerges from his documentation fugue state, but if you can't wait then feel free to [check out the code][Recap] in the meantime.


Mocha
-----

During moments of respite from chasing the chaotic agencies required to arrange a mortgage, [James M](/james-mead) has been doing more sterling work on [Mocha][], solving the issues that people encounter when they try to do crazy stuff with stubs and mocks.

This week someone has been attempting to serialise a stub within an ActiveRecord object. James has a [quick fix](https://github.com/floehopper/mocha/commit/d0569869da15fa9d3d86b18047630452a21906df), but there's more thinking to be done about whether or not Mocha should actually prevent you from trying to serialise stubs in the first place.


What does GFR do?
-----------------

[Chris](/chris-roos) and [I](/james-adam) took a step back from [Recap][] on Thursday morning to roughly map out *what GFR has done*. Like, ever. We roughly categorised the fruit of our labours into five categories: products, apps, libraries, client work, and philosophy.

![What does GFR do?](/images/blog/what-does-gfr-do.jpg)

We weren't entirely sure that this would be interesting while we were actually doing it, but looking afterwards has definitely given us a sense of what things -- like the mechanics we use to run the company -- we might polish and make more available to the world.


Printer
-------

At the weekend [I](/james-adam) went up to Sheffield to visit [Leila](http://finalbullet.com) and [Tom](http://experthuman.com), and also to check on the first two [Printers][Printer] to live outside of our office.

[![Leila's printer](http://distilleryimage2.s3.amazonaws.com/d8cf1be8908011e1abb01231381b65e3_7.jpg)](http://instagr.am/p/J7cOtEGjKO/)

It sounds like they've taken on some identities from Wuthering Heights - you can follow them on Twitter at [@HeathcliffPrint](https://twitter.com/HeathcliffPrint) and [@CathyPrint](https://twitter.com/CathyPrint). I'm looking forward to [seeing what they print](http://www.flickr.com/photos/lovemaus/6995417290/in/photostream)!

I also dropped of another couple of printers for [James Weiner](https://twitter.com/jamesweiner) and [Russell Davies](http://twitter.com/undermanager) on Friday. Exciting times in Printerland; I'm hoping we will learn a lot from them about what aspects of the overall system are confusing or unintuitive.

[![James Weiner's printer](http://distilleryimage10.instagram.com/c3d47690953311e1abb01231381b65e3_7.jpg)](http://instagr.am/p/KK1qQNDo6y/)


Businessing & RFPs
-----------

We're lucky enough to have a reasonably steady stream of interest from potential clients, and we make a conscious effort to try and speak to everyone at least once. Even if it's unlikely that we'll actually develop software for someone, we hope that at the very least we can help them think through the problem they are trying to solve.

One potential client approached us this week to ask if we'd be interested in participating in an _RFP_ (that's 'request for proposals') process.

**We are suspicious of RFPs, because they tend to involve a lot of up-front design and decision-making**.

We are really uncomfortable with the idea of selling clients on any vision of a 'finished' solution. We know that it's more effective to explore problems by building working software, since doing so will often lead us in a  direction different to the one we imagined at the outset.

When a client engages our services, they aren't buying the guarantee of some finished product at some point in the future; they are buying our skills and expertise to get to the root of the problems the are trying to solve, and explore how we can use software to address to those problems.


Jupiter mission
---------------

Now that the European Space Agency has committed to [sending probes to the moons of Jupiter](http://www.guardian.co.uk/science/2012/may/02/esa-mission-jupiters-moons-europa), we've ramped up our Space Research Division to get ready for our pitch to build the probes themselves.

Obviously our software [ethos](/ethos) would guide our approach to building the probes; we're going to recommend that rather than spending millions of Euros upfront on planning and design, we start launching probes as soon as possible, and then use feedback from each one to iterate towards the ideal probe. It takes about six years to get to Jupiter, so once we can retrieve the probe, and obviously building in time for a [retrospective](http://en.wikipedia.org/wiki/Retrospective), we're looking at a 12-year iteration length. Seems fine to us.

(Our other idea was to build a probe that was capable of iterating *itself* via some onboard system of self-programming and 3D printing, but we decided that the chances of it returning as a malevolent artificial intelligence were too great to risk it.)

Next week?
----------

I'm hoping that we'll continue pre-emptively answering the question _what should I be doing today?_, but as yet we haven't decided what that will be. Will it be more [Sauron][]? Perhaps some work on [Printer][]? Who knows!

The only way to find out will be watch out for issue 173 of the [GFR](/) weeknotes!

Adios compadre,

-- James A

[Sauron]: https://github.com/freerange/sauron
[Recap]: https://github.com/freerange/recap
[Mocha]: http://gofreerange.com/mocha/docs/
[Printer]: /printer


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-05-03 10:49:00 +01:00
:updated_at: 2012-05-03 10:49:00 +01:00
:page_title: Week 172
