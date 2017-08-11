Week 193
==========

Once again I am writing to you, dear Reader, from across the Atlantic.

I'm in Austin again, and while the denizens of my native [BST](http://en.wikipedia.org/wiki/British_Summer_Time) lock their doors as they enter the [witching hour](http://en.wikipedia.org/wiki/Witching_hour), I am stoically forging these here weeknotes for your delictation and brain-joyment.

Actually, here in Texas we are enjoying the "second summer"[^1]. At the moment the temperatures are around 30&deg;C, and the coverage in iOS 6 mapping here is just fine. I hear some of you had to put on waterproof trousers this week, your weather was so bad. Awww. And your iPhone's turn-by-turn directions landed you into a soggy ditch? _Awwwwwww_.

Right, that's enough faux smugness. It's not all sunglasses and rodeos and brisket here in Texas, and as always the time difference and geographic distances have proved a worth adversary to my productivity. That said, we're getting pretty good at it, and our _GFR Tuesdays_ (see [Week 184](/week-184)) have definitely helped, giving us a good opportunity to use Skype to catch up.


Inside Government home stretch
-----------------

The deadline when [GOV.UK](http://www.gov.uk) officially replaces [DirectGov](http://direct.gov.uk) and [BusinessLink](http://businesslink.gov.uk) is rapidly approaching, and so most of the development on Inside Government has been focussed on taking care of features and changes that are required before we can hit that milestone.

This has mostly involved integrating "specialist" guides with the categorisations from the "mainstream" (i.e. citizen-focussed) part of the site, and moving the search infrastructure over to an ElasticSearch-based implementation. For my own part, I took care of fixing some of the nomenclature in the site -- the target audience of our "specialist" guidance content don't consider themselves to be "specialists", so it has become _detailed_ guidance instead.

It's always hard to reconcile a "hard" deadline with genuine iterative development. In this case it's unavoidable due to the nature of replacing existing services with their own deadlines for support contract renewal and so on, but regardless, whenever a deadline looms it always encourages a somewhat-uncomfortable sense of urgency. Once the storm passes I am sure that a nice rhythm of steady-paced development will fall back into place soon enough.


GFR
----

We've spent a bit of time talking about how our involvement in GDS will play out for the rest of the year and into the future. It's great to be involved in a project which should help so many people, but it was never our goal to become a de-facto part of the GDS development team for an extended period of time.

I've found that the longer we work with a client, the easier it is for the boundary between _us_ and _them_ to dissolve. This is great in terms of effective communication and really understanding their needs, but can also make it harder for us to make "strategic" decisions as a company. We pride ourselves in getting deeply involved with our clients and their projects, but that can sometimes make it harder for us to balance their needs with our own priorities.

As an example, in this second phase of work on Inside Government, we build in a four-week notice window, where at the start of each block of four weeks, we'd agree whether or not to continue for another block beyond the one about to start. The aim here was to build in a buffer of time that was independent from the client's own deadlines (which inevitably shift around), so that if our priorities drove us to stop working on the project, we would always have an agreed window in which to ensure that the client could prepare for our abscence. In practice, there is still pressure exherted by those deadlines which is very hard to resist; it's hard to tell someone "actually, we have to stop soon" when you know it will be harder, to whatever extent, for them to achieve their goals without you.

So, in the not too distant future we'll take a break from GDS again, partly to focus on our own internal goals (see below), but also, I hope, to think about how better to manage these situations.


Harmonia
--------

Work continues from [Chris](/chris-roos), [James M](/james-mead) and [I](/james-adam) on [Harmonia](http://harmonia.io), the tool that keeps our anarchic business ticking over.

Don't forget that you can [sign up for early access](http://harmonia.io), and get updates about progress via our Marketing division! (i.e. [@harmonia](http://twitter.com/harmonia) and [@freerange](http://twitter.com/freerange)) Please do sign up if you're interested; it helps keep us motivated.

[Tom](/tom-ward) is working on an alternative approach (which he has codenamed 'Discordia'). I have given Tom the new job title _Director of Shadow Development_. Tom likes to play his cards, and his code, close to his chest, but he always delivers great stuff so we hope that he'll reveal it to us very soon.

### Doctor Cron and The Authentication Blues

This week we replaced a simple `cron` job with a more sophisticated "ticker" which should keep task assignment working even if the server goes down for a period of time. When determining what we *must* have in place before we let other people using Harmonia, a key aspect was reliability and this small peripheral change is an important part of ensuring that we achieve that.

We've also been looking at that most thrilling of development chores: _authentication_. While in the past we've used tools like [Devise](https://github.com/plataformatec/devise), those experiences have not exactly been painless, so I took the opportunity to try out a few different approaches -- [Devise](https://github.com/plataformatec/devise), [Sorcery](https://github.com/NoamB/sorcery/wiki), [Rails' `has_secure_password`](http://railscasts.com/episodes/270-authentication-in-rails-3-1) and the new [Mozilla Persona](http://identity.mozilla.com/post/32395255498/announcing-the-first-beta-release-of-persona) -- in parallel branches, to get a more objective comparison[^2].

![Complexity vs time in Rails authentication](/images/blog/devise-vs-custom.jpg)

It turns out that it's *still* really hard to make an objective comparison about which approach is best for the application. In generally, **the more "sophisticated" the framework you use, the harder the _initial_ integration is**, but the question is this:

* At what point (if any) does the later ease of adding more sophisticated features like password resetting or token-based authentication reduce the _total_ effort required, compared to the more linear amount of effort required to incrementally add those features yourself?

The answer is, alas: _I don't know_.

I also got the distinct feeling that, whatever these tools might want to you believe, they really want to be present at the very start of your application's development. It feels much harder to have developed the domain concept of a 'User' or 'Person' in your application, and then later try and get it to play nice with an authentication framework. It left me feeling like I wanted a '[gem this](http://rubymanor.org/harder/videos/gem_that/)' for authentication; something that's designed to be extremely sympathetic to existing code, rather than presenting a set of initial constraints that you then weaver your domain into.

### Persona

Speaking of authentication that keeps our of the way of your domain code, it's worth noting that we really liked the [Persona](https://login.persona.org/about) approach; it's very easy to implement and allows the application to focus entirely on the domain-specific aspects of a 'user' without blending in any authentication at all. Unfortunately, it's still a bit buggy (I couldn't get it to work in Chrome at all, and saw strange behaviour in Safari), but it's definitely worth keeping an eye on, particularly if native support starts appearing in browsers. It's certainly already influenced how I'm going to structure authentication in our own code.

In the end, the approach I'm trying to take right now is to think about how signing up and authentication should work in terms of the user experience and different flows that we know will exist -- signing up and creating a new 'team', inviting a new user to join your 'team', inviting an existing user to join your team and so on -- and then writing some good, high-level acceptance tests for those, and then just building out the implementation by hand rather than using any of the existing authentication frameworks.

### Other stuff!

There's some other stuff that I'd like to talk about, particularly in terms of how Harmonia performs task assignment _fairly_, and how to ensure that its users feel confident that it _is_ fair, but I think I'll save that for either another time, or possibly when [Harmonia](http://harmonia.io) gets its own blog. Perhaps then we can also present our counter-argument to Chris Parsons' "[task assignment is an anti-pattern](http://chrismdp.com/2012/09/task-assignment-is-a-team-anti-pattern/)" too...


Fin
---

OK, that's enough until next week, when ([as mentioned by Chris last week](/week-192)) [Harmonia](http://harmonia.io) once again blesses a member of our quorum with stewardship of weeknotes. By then I'll be back in the UK, jetlagged and sodden with rain, looking lost and wondering why my phone's mapping has suddenly gone crap.

Adiós y buena suerte, amigos!

-- James A.


[^1]: Texas has four seasons, but they're not the ones you might think. In the UK we have Winter, Spring, Summer, and Autumn; here in Texas you get Extremely Mild Winter, Summer, So Hot You Might Die, and then Summer again.

[^2]: There are obviously a whole bunch of other options we could try, but you can't try everything, right? We also want to consider what the users of Harmonia might expect in terms of authentication; us developer-folk might be perfectly happy authenticating against something like Twitter or Github, but we suspect that most people will actually anticipate a more traditional email-and-password mechanism. Even so, within that more limited paradigm there are definitely ways we can streamline the experience.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-09-28 17:00:00 +01:00
:updated_at: 2012-09-28 17:00:00 +01:00
:page_title: Week 193
