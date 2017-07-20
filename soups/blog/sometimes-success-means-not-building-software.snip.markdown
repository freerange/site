Sometimes success means not building software
=============================================

We build software because we enjoy doing it, but that's _not_ the most important thing when you're in a software business.

It's easy to forget this simple truth: clients don't pay us because they want software; they are hoping that software can help them become more effective as a business. Any software we produce is just a tool, an artefact that we hope will make it easier for their business to operate.

Their goal isn't to "have" some software, it's to get the most __value__ out of their budget. And sometimes building new software isn't the best way to help them do that.


A prospective project
------------------

We had an __excellent__ meeting this week with a potential new client with an existing software system. Let's call him Dave.[^dave]

Dave had some concerns about their existing software, written in [Java][], and wanted to discuss rebuilding it. He felt that things took too long to build in Java, and had heard good things about rapid development with [Ruby on Rails][].

Dave's principle investor, who had tagged along for the meeting, described the software as "a soldier, covered in plasters and patches". You get the idea - it works, but it's not pretty and there's some concern about how long it might survive.

Once the business domain was stripped away, the system wasn't particularly complicated and the work wouldn't be particularly hard.

__The bottom line__: undertaking this project could represent a fairly easy source of income for _our_ company. We could easily start pitching Rails and our team, win the project, and keep our cash-flow nice and rosy. That's the best thing for _our_ business, right?

Thankfully, that is not how we work at <%= include_snip 'gfr' %>.


What is the actual problem?
---

After discussing the business and software for some time with Dave and his investor, we discovered that the issues they were feeling had little to do with the existing system, or any of the apparent benefits they might get if it were built in a different language.

Instead, their real pain was with their existing developer, who was a lone contractor with less-than-ideal responsiveness and some development practices that could be improved. He was hard to reach and unpredictable; features that they thought would take weeks sometimes only took days, whereas others that seemed simple took weeks.

Even when software was delivered, they felt it was the "beginning of the end", rather than the "end of the end", as they laboured to manually test the change and its interaction with the existing functionality.[^reasonable]

Pace was just too slow. The developer had quoted six months of work for some changes they wanted to make, and when this combined with their existing frustration, their confidence had dropped sufficiently that they came to us.


How can we help?
---

We helped Dave and his partner understand that the programming language used has far less influence on delivery of value than how the development is actually performed. A good set of developers will be able to deliver features at a reasonable pace regardless of the underlying technology choices.[^good-teams]

We believe that, as appealing as [The Great Rewrite][] often is, it's very rarely the right thing to do. It's almost _never_ the right thing to do when you need to pay for it.

We outlined some iterative development strategies that would allow us to improve their software without a big bang replacement, but the truth is that they already have a working system in Java that, despite its problems, helps them operate their business today.

So, instead of discussing the specifics of the project further, we helped them get in touch with reputable Java shops that might be able to take the existing codebase and heal its wounds. They'll be able to get second opinions about how difficult it might be "heal the soldier" properly and get them back on track.

If, for whatever reason, the consensus of those opinions is that a rewrite is unavoidable, then we'd be delighted to continue exploring specifics with them.


Success!
-------

Despite having no project at the end of the meeting, Dave and his investor left happy and more confident. We received an email later in the day:

> Thank you very much for the help!
>
> I wish I was in a situation that would allow me to work with you guys. Your honest and knowledgeable advice was very helpful. Should it transpire that things are so bad that a rebuild would be the right direction to go in I'll be sure to drop you a line.

For us, this represents a tangible success. And if anyone asks Dave where to take a project that might involve software, we think he'll remember us. And in our business, word of mouth and reputation are just as valuable as invoices.


[^dave]: Of course, his name wasn't Dave, but talking about "The client" for the rest of this post gets boring real fast.

[^reasonable]: Of course, there are often quite legitimate reasons for the unpredictability of pace in software development, but the key to managing this is frequent, high-quality communication followed by the ability to re-scope work. If your developer disappears for a week, this is impossible.

[^good-teams]: Chances are that a good set of developers will have actually made technology choices that _help_ them deliver features at a reasonable pace.

[The Great Rewrite]: http://www.magpiebrain.com/2010/01/10/the-great-rewrite/
[Java]: http://java.oracle.com
[Ruby on Rails]: http://rubyonrails.org

:kind: blog
:is_page: true
:render_as: Blog
:written_with: markdown
:author: james-adam
:created_at: 2010-11-18 15:34:00 +00:00
:updated_at: 2010-11-18 15:34:00 +00:00
:page_title: Sometimes success means not building software
