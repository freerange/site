Week 173
=======

It's been a shorter-than-normal week thanks to the May Day bank holiday. Once again, your fix of weeknotes isn't coming from London, but from somewhere on the A92. In the cold. In the rain. Welcome to Scotland!


Back Inside Government
----------------------

As you may know, we were heavily involved in delivering {l inside-government,Inside Government} as part of the {l government-single-domain,Single Domain project} for the UK Government. You may even have seen [Pete Herlihy's post on the GDS blog about how the project was run][pete-post], which was even [cited on Pivotal Tracker's own blog][pivotal-post].

I'm pleased to say that we've agreed to help out a bit more on that project over the next few months. We're looking forward to getting the platform up and running properly, with ongoing usage from government departments. There's a lot of work yet to do, but it will be very satisfying to take the software that we grew from nothing to the point where it forms a significant part of the single [GOV.UK](http://www.gov.uk) domain.

During our last engagement with our friends at [GDS][] we threw ourselves completely into the project and gave it our total focus, but this time we're going to do a better job at balancing our client work with our own internal projects. We've outlined a few concrete goals for [GFR](/) this year, and they're going to be hard to achieve if we aren't mindful about how we distribute our time and focus.


Sauron
------

We hit a bit of a rough patch with [Sauron][] at the end of last week, with a refactoring that {l chris-roos,Chris} and {l james-adam,I} made clashing with some feature work that {l tom-ward,Tom} and {l james-mead, James M} had started. After some conversations about it, we realised that we hadn't been communicating enough about architecture of the application, and the intentions of some of the objects and classes we were creating. A few minutes on Tuesday morning with a whiteboard helped us all get a better shared understanding of where the problem lay, and helped us get going again.

### Building better software

Without the rungs of a corporate ladder to climb, we've got to figure out what lies ahead for us in our careers, and that's one of the reasons we're working on Sauron -- to practice building software for ourselves, rather than for clients. And, for various reasons (that I think we also need to understand better), it's not been easy. The past few weeks in particular, I don't think we've really managed to get much momentum behind the project, and development has been quite slow.

We're making a very conscious effort with Sauron to avoid using some questionable software patterns, such as ActiveRecord's blending of persistence and domain logic. I wondered, in the latter part of this week: to what extent has leaving those patterns behind contributed to the perceived slowdown of development of Sauron?

Whether or not ActiveRecord is a good pattern, it's at least a pattern that we know and understand. Therefore, we need to work a lot harder on clarifying and understanding the patterns that we're going to replace our old ones with.

{l james-mead, James M} has been preparing summary extracts from [The GOOS book][goos] and hopefully that will help illuminate the path we want to follow.


### Product ownership

In order to more realistically work with stories in the development of Sauron, and since it was a project that I originated, I agreed to act as 'product owner' for [Sauron][]'s development.

However, I've noticed this week that it's actually quite difficult to be both a product owner and a developer on a project, *and* simultaneously be trying to explore and introspect our story process, *and* keep a hand on the rudder of the company as a whole.

I've noticed myself fraying a bit, and becoming more easily stressed, and being less constructive in my interactions. I think I might be wearing too many hats. Or maybe they are tabards.


Focus and Freedom
-------

One thing we've tried to do over {l week-171,the past} {l week-172,few weeks} is explicitly pick a focus for the week to answer the question "what should I be doing today". I realised this week that this mirrors something that GFR alumnus {l jason-cale,Jason Cale} [wrote a few years back](http://jasoncale.com/articles/7-building-a-company-starting-with-our-personal-goals):

> I've realised that my original idea of allowing ideas to evolve, and prefer an organic approach is actually aversion and delusion of what I perceived to be freedom.
>
> I now know that discipline and defined action, which followed through daily is the best way I have found to cultivate freedom and happiness.

While it might superficially feel constrictive and stifling to remove the ability to choose what you might work on at any given moment, I believe, as Jason says above, that these choices are frequently just the illusion of choice, and in reality a source of distraction. Picking a goal and then working towards it at the expense of {l printer,playing with printers} (for example) is actually a better way to get satisfaction about what you do.

Having fewer choices leaves more energy for focussing at the task at hand. [Constraints are liberating](http://gettingreal.37signals.com/ch03_Embrace_Constraints.php). And you see this focussed approach in lots of other mechanisms for achieving, from the agile story process ("pick the next most important thing, do some work towards that, and repeat") to the personal [getting things done](http://www.davidco.com/) system, to our own [Harmonia][]; they are all about removing the illusion of freedom in the moment, and so enabling us to steer ourselves more reliably towards our goals in the medium and long term.

The key is to make your actions explicit and measurable. And for us at the moment, I think that means making an _explicit choice as a team_ about what our focus is going to be on any given week (or even day), and then sticking to it like our livelihoods depended on it.

My sense is that we're all reasonably bought into the general principle of focussing in this way, but I'd like to see us get much better at the explicitness. I realised a few weeks ago that while it might not be initially obvious, everything that I've suggested we build -- [Sauron][], [Harmonia][], even  _Project Codename: Pisswhistle_, which may yet see the light of day -- have all ultimately been trying to make it easier to answer the question "_what is everyone doing and what should I do next?_" in a way that frees up more of our energy for the truly creative problems we want to engage with.


Remote Working
----

We've done a tiny bit more thinking about {l working-remotely,remote working}; a few days back we had {l james-mead,James M} connected to the office via a day-long [Facetime][] session, which I felt was useful from the perspective of those in the office, because if nothing else it gave us a very ambient measure of his presence and generally how he was feeling. We found that Facetime had less ambient noise issues than Skype, although given it was just running on a laptop in the corner of the room, it's not surprising that the quality wasn't perfect.

Hopefully James will comment here about some of his perspective on it; there's still much to be refined, and in my summer month in Texas, I'm going to be very much focussed on how to improve the ephemeral link between the office and those who are remote.

### The Silo Temptation

It's so easy (and sometimes tempting) to become disconnected and isolated when you're not physically in the same space as your colleagues. There's no doubt that it can sometimes be easier to focus on a chunk of work when you are by yourself, but I've been wondering more and more about whether that's actually a net gain.

Here's my theory: while you might get a nice, satisfying chunk of refactoring done, you're less likely to be discussing your approach with other people, potentially leading to schisms in understanding and a general reduction of cohesion. You can perhaps think of being in the same office as a form of 'ambient pairing', in this respect.


Miscellany
-----

[Ben Griffiths][], who was keeping us company at GFR HQ, has now found a more permanent home for the [Weathermob][] development team, around the corner on Scrutton Street. He left us with the now-traditional gift of a plant ("_Chris 3_") which we will do our best not to kill. I have suggested we ask [Harmonia][] to delegate weekly watering duty.

Speaking of {l chris-roos,Chris}, after having a lot of fun trying to get software to work on FreeBSD last week, he's now trying to set up his [Chromebook][] as a machine he can develop on. Perhaps if you all ask nicely enough he'll explain why ;-)


Fin
---


Right, this is already way too long. I'm off to chill out by [gob-slamming a violent recursion of Alan Kay-inspired turtle soup](https://twitter.com/MadMockneyCook). Or something.

-- James A.




[Facetime]: http://www.apple.com/mac/facetime/
[Ben Griffiths]: http://techbelly.com
[Weathermob]: http://weathermob.me
[Chromebook]: http://www.google.co.uk/intl/en_uk/chrome/devices/
[pete-post]: http://digital.cabinetoffice.gov.uk/2012/04/30/delivering-inside-government/
[pivotal-post]: http://pivotallabs.com/users/rdunlop/blog/articles/2103-how-gov-uk-keeps-calm-and-carries-on-with-tracker
[GDS]: http://digital.cabinetoffice.gov.uk/
[Sauron]: http://github.com/freerange/sauron
[goos]: http://www.growing-object-oriented-software.com/
[Harmonia]: http://github.com/freerange/harmonia

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-05-12 22:49:00 +01:00
:updated_at: 2012-05-12 22:49:00 +01:00
:page_title: Week 173