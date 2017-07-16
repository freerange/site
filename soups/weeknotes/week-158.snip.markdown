Week 158
========

I've already written this week about my experiences <%= l('working-remotely', 'remote working') %>, but it's weeknotes time and I know you won't be happy without them, so, well, here they are.

Happy now?

Rundown
----------

This was the second of two flat-out weeks for [Free Range](/). It's fair to say that *everyone* is looking forward to a bit more free time in February.

### Whitehall

Progress continues apace with the [development of the "corporate" slice][whitehall-github] of the <%= l('government-single-domain', 'single domain project') %>, and it was the second week of working with [Tom Stuart][], who has taken almost no time to get up to speed and is steadily delivering new features.

It's been particularly interesting to get the perspective of another developer on a project you've been building for a while; [Tom][Tom Stuart] has definitely been shining light into some of the less desirable nooks and crannies of the software and helping us clean them up. He's also been asking great questions about which of a set of implementation options is the "[Free Range](/) preferred way", which has given a few of us pause for thought about how we might improve and clarify our shared approach to software architecture.

### Responsive Design

<img class="left" src="http://alphagov.files.wordpress.com/2012/01/in_phone-1.png?w=159&h=300">One aspect of single domain development we're proud to have been a part of is the introduction of [responsive design][] (which you may also have heard of under the guise of [progressive enhancement][] or [mobile-first][]). In a nutshell, rather than providing separate implementations for devices with different capabilities (such as the small screens on mobile phones), one design can adapt as the capabilities of the display device change. You can read more about this on the [GDS blog][].

<%= l('jason-cale', 'Jase') %> introduced responsive design to the [Whitehall][whitehall-github] templates very early on, and next week he'll be helping bring other parts of the shared template into line. He'll also be posting on the GDS blog himself in the near future.


### Hashblue

Meanwhile at [GFR HQ](/contact), <%= l('tom-ward', 'Tom') %> and <%= l('chris-roos', 'Chris') %> finished the second of two weeks working with [O2][] to improve the performance of some of the <%= l('hashblue', 'Hashblue') %> infrastructure to support more concurrent users. It's been an intense two weeks for them, although it's still a project that is close to our hearts. One of the project goals was to build iteratively using real customer feedback, and so it's always good to do whatever gets it into the hands of as many real customers as possible.


The Queen Bee Is Dead
---

Jase went to Bristol on Wednesday to talk again about [working without leaders][] with the [Bristol Usability Group][BUG]. This is the second time Jason has presented about some of the alternative choices we've made about how our company works, and it was extremely well received:

<blockquote class="twitter-tweet tw-align-center"><p>It's a shame that I didn't get a chance to talk to @<a href="https://twitter.com/jasoncale">jasoncale</a> after his inspirational talk last night at BUG.</p>&mdash; Chui Chui Tan (@ChuiSquared) <a href="https://twitter.com/ChuiSquared/status/162478019737427969" data-datetime="2012-01-26T10:12:33+00:00">January 26, 2012</a></blockquote>

<blockquote class="twitter-tweet tw-align-center"><p>Love that @<a href="https://twitter.com/freerange">freerange</a>'s chaos administrator software (to randomly assign tedious tasks) has a female identity. <a href="http://t.co/iv2YdrYG" title="http://github.com/freerange/harmonia">github.com/freerange/harm…</a></p>&mdash; Basheera Khan (@Bash) <a href="https://twitter.com/Bash/status/162249523605946368" data-datetime="2012-01-25T19:04:35+00:00">January 25, 2012</a></blockquote>

Here are Jase's beautiful slides, although they only give a flavour of his talk on their own.

<script src="http://speakerdeck.com/embed/4f21419afdd3b70022003bef.js"></script>

Jase was even approached by other people asking how they might transform their own loose networks of colleagues into [Free Range](/)-like groups, which is both very flattering and quite frightening at the same time, since we still feel a bit like explorers mapping uncharted organisational territory[^charted] ourselves.

We have had some thoughts about recording a version of Jason's talk suitable for sharing on the web, but additionally attemping an internal project where <%= l('people', 'we all') %> give presentations on this theme to each other. This is one of the many things that we might pick up during our "Spring Break".

Miscellany
---------

<%= l('james-adam', 'I') %> have been thinking about [motivation][][^motivation], [Harmonia][], and how the dynamics in our company might be scarily close to those in a flat-share. Applying Harmonia to tasks which require creativity might require a different approach to tasks that are simply rote work. I'll keep thinking about it.

Finally, it was great to see this tweet from [Gabe][], the lead developer for <%= l('mubi', 'MUBI') %>:

<blockquote class="twitter-tweet tw-align-center"><p>Appreciating some code we hired @<a href="https://twitter.com/tomafro">tomafro</a> and @<a href="https://twitter.com/freerange">freerange</a> to write months ago.Still paying dividends!</p>&mdash; Gabe da Silveira (@dasil003) <a href="https://twitter.com/dasil003/status/161734723025117185" data-datetime="2012-01-24T08:58:57+00:00">January 24, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


That's all, folks.

&mdash; James


[^charted]: Of course, we're not, but we often feel like we are.
[^motivation]: Some of this talk isn't directly relevant since Harmonia doesn't incentivise financially, but much of the presentation is still interesting and very relevant: Autonomy, Mastery and Purpose.


[whitehall-github]: https://github.com/alphagov/whitehall
[Tom Stuart]: http://experthuman.com
[GDS blog]: http://digital.cabinetoffice.gov.uk/2012/01/26/mobile-and-gov-uk/
[progressive enhancement]: http://en.wikipedia.org/wiki/Progressive_enhancement
[mobile-first]: http://www.abookapart.com/products/mobile-first
[responsive design]: http://www.alistapart.com/articles/responsive-web-design/
[working without leaders]: http://bristolusability.ning.com/events/leaders-change
[BUG]: http://bristolusability.ning.com
[motivation]: http://www.ted.com/talks/lang/en/dan_pink_on_motivation.html
[Gabe]: http://darwinweb.net/
[O2]: http://www.o2.co.uk
[Harmonia]: http://exciting.io/harmonia

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-01-28 13:37:00 +00:00
:updated_at: 2012-01-28 13:37:00 +00:00
:page_title: Week 158
