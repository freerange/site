Week 175
=========

Again! [Harmonia][] clearly has a plan for me, and I gladly obey.

This was the week that Summer hit London, and by Friday we were all in shorts and t-shirts, the standard [GFR](/) uniform for the months of May to September (and October to April if you're [James M](/james-mead)).

But *you* don't care about our fashion. All *you* care about is the weeknotes! And here they are! **Weeknotes. IN. YOUR. FACE.[^boom]**

Inside Government
------

This week we've rejoined our friends in Holborn to continue work on [Inside Government][] for [GDS][]. Much of our initial work has been fixing issues that existed before the beta launched, but that we didn't have the opportunity to fix.

### Housekeeping

During the final-hour redesign effort that preceded our launch, an amount of front-end technical debt was taken on to reach our deadline. Our new front-end friends [Mark](http://mhurrell.co.uk/) and [Russell](https://twitter.com/russellthorn) are busy tearing apart stylesheets and HTML so that it can be rebuilt into a better, more maintainable set of markup and styles, this time [with an untwistable stomach](http://www.snpp.com/episodes/8F17.html).

[James M](/james-mead) has picked up [a branch of work](https://github.com/alphagov/whitehall/compare/89bb4a959dfa2c9567c48b33f01384878e17d4b1...0b0734285f6b9bd0350a46d2de978dd59db97440) that he started during our first tenure, and has been stalwartly refactoring the names of some of the principle objects in the system to better match their intention. It's been an impressively tenacious chunk of development, and something that we put off for too long earlier in the year, and he deserves a refreshing, frosty beverage in recognition of the effort he's put in to resolve it this week.

[Tom](/tom-ward) has been focussing on removing some performance issues on larger listings, and gave us [a handy test helper](https://github.com/alphagov/whitehall/commit/1d393945af0525c92d25b75b9e1b614b9f78596f#L5R18) for guarding against future N+1 issues.

[Chris](/chris-roos) and [I](/james-adam) did some work fixing smaller bugs and pulling some of the logic out of controllers into [simple objects](https://github.com/alphagov/whitehall/commit/e9f82fae580e379c3c18f2605dfd38dfb1f530ef), which should allow us to reduce the number of parameter combinations in functional tests, and ultimately make the test suite faster.

### Publishing tools

We've also started discussing how we might bring the "Citizen" and "Whitehall" publishing tools into closer alignment. There's quite a bit more to say about this effort, but I'll wait until [Harmonia][] assigns me the weeknotes next week before I go into it.

Given two very significant codebases for two potentially quite different sets of content-producing users, it's not trivial to get confidence that one tool can adequately serve both groups. However, it's also not ideal for [GDS][] to have two tools to maintain.

We are by no means precious about the software we've written, but we are wary of investing a large amount of time re-tooling both applications without really understanding the goals and the impact on the users of both systems. We'll be working closely with everyone over the next few weeks to figure out how best to proceed.

So, yeah: basically we've been fixing things up before we get stuck into delivering the rest of the features that departments will need to fully migrate to the GOV.UK platform.


Any other business
----

As is the case when client work starts up again, other GFR antics tend to take a back seat while we rediscover our balance. For this week and the next, we've doubled up our team on [Inside Government][] to give the project the best restart possible, but as of the week of [the Jubilee](http://www.direct.gov.uk/en/Nl1/Newsroom/Features/DG_WP200687) we'll be splitting our focus more evenly between client and internal projects.

[I](/james-adam) got a phone call on Wednesday that will hopefully lead to some interesting news about [Printer][] that we can mention soon. Also, Wednesday was my birthday; feel free to send tributes and gifts to the usual address, as always.

[Tom Stuart](http://experthuman.com) joined [Chris](/chris-roos) and I in the park on Thursday for a few beers and another solid-gold effort at setting the world to rights[^topics]. Tom is pushing valiantly ever-onwards with [his book](http://experthuman.com/computation-book), but he also graciously acts as a sounding board for some of the ideas and concerns that we have about how GFR is going, what we're aiming for and so on. Perhaps he should be invoicing us for organisational therapy.

One thing I do recall talking about is the struggle to write, whether that is the weeknotes, or a blog post, or even a book. I'm [definitely familiar](http://scholar.google.co.uk/scholar?cluster=13419125528182239712&hl=en&as_sdt=0,5&sciodt=0,5) with the feeling of being unable to express an idea when I'm sat in front of a blank page.

For what it's worth: what I've learned is, I think, to basically just write whatever comes into your head. Chances are that it's perfectly flibblewizard.

-- James A.

[^boom]: **BOOM!**
[^topics]: test-driven comprehension and writing; reconciling the unavoidability of brands and marketing with our distrust of brands and marketing; doing a GFR podcast; the tension between equality and individual strengths; examining the mind of a Christian (in a podcast); my fear of leadership; with a topping of [Bertrand Russell][], naturally.

[Harmonia]: http://github.com/freerange/harmonia
[Inside Government]: /inside-government
[GDS]: http://digital.cabinetoffice.gov.uk
[Bertrand Russell]: https://gist.github.com/2759123
[Printer]: /printer

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-05-25 18:49:00 +01:00
:updated_at: 2012-05-25 18:49:00 +01:00
:page_title: Week 175