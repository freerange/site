Week 853 & 854
========

Two weeks beginning Monday, 19th May 2025 - a double-bill!

Last week was half-term week: [Chris L] was away all week and [Chris R] had some extra childcare responsibilities. And we had the Spring bank holiday on Monday.

## Experience CS

Development continues apace and the last couple of weeks are a bit of a blur. We've made some good progress on allowing student users to login to [the app][Experience CS] in preparation for integration with [Code Editor for Education]. The Learning Team are authoring more and more of the curriculum, so we've made it possible for them to create new [Scratch] starter projects (previously a very manualy process). They're planning to publish a bunch more content in time for a webinar this coming week and I think there's a plan to do some user testing soon. [Mariam] has created some more beautiful illustrations to bring the content to life.

## Mission Patch

Back in [week 818], we hired [Guy Moorhouse] to give [Mission Patch] a design refresh and in the following weeks Chris L & Chris R did a great job of implementing it all. However, by [week 826] we started work on a client project and fairly soon after that in [week 834] we started our current engagement with the [Raspberry Pi Foundation], so we never managed to find time to finish the implementation.

However, a couple of Fridays ago, Chris L did some work to make the other Mission Patch pages to more closely match the new home page design. That weekend I deleted the layout for the old design and its associated assets and made the layout for the new design the default. And, a week ago last Friday, I finally merged and deployed the all the changes. I also tweaked the configuration of Stripe and ConvertKit so the buttons match the new design. We're really pleased to have the new design live- you can see it in all its glory below!

<p>
  <a href="https://mission-patch.com/">
    <img style="border: 1px solid lightgray;" alt="A screenshot of the new Mission Patch home page design." src="<%= image_path('blog/2025-05-31-mission-patch-new-home-page-design.png') %>">
  </a>
</p>

## Miscellaneous

A week ago last Friday, Chris L watched Chris Parson's webinar about "vibe coding". Apparently he was using [Cursor] to add a feature to an app.

Chris R recently found out he's probably going to have to find a new place to rent an office, because his current place has been purchased from the council, although fortunately he's got until at least March next year.

I've spent some time sorting out my claim for the use of my home as an office which is currently blocking the completion of the company annual accounts. I still haven't finished it though!

## Interesting links

* [YunoHost], a Linux distribution focussed on self-hosting
* [redbean], a single-file distributable web server
* [The Next Abstraction] or, Why AI is not replacing us, by Sarah Mei
* [ActiveJob Continuations], a mechanism for interrupting and resuming jobs built in to Rails
* [Sendamatic], UK-based email service without a minimum monthly payment
* [GitHub MCP exploited] "This is the lethal trifecta for prompt injection: access to private data, exposure to malicious instructions and the ability to exfiltrate information" by Simon Willison

Anyway, that's all for now!

-- James

[Mariam]: https://www.mariambagersh.com/
[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Experience CS]: https://experience-cs.raspberrypi.org/
[Code Editor for Education]: https://editor.raspberrypi.org/en/education
[week 818]: /week-818
[Guy Moorhouse]: https://www.futurefabric.co/
[Mission Patch]: https://mission-patch.com/
[week 826]: /week-826
[week 834]: /week-834
[Raspberry Pi Foundation]: https://www.raspberrypi.org
[YunoHost]: https://yunohost.org/
[redbean]: https://redbean.dev/
[The Next Abstraction]: https://substack.com/home/post/p-164096497
[ActiveJob Continuations]: https://github.com/rails/rails/pull/55127
[Sendamatic]: https://www.sendamatic.net/
[GitHub MCP exploited]: https://simonwillison.net/2025/May/26/github-mcp-exploited/
[Scratch]: https://scratch.mit.edu/
[Cursor]: https://www.cursor.com/

:name: week-853-and-854
:updated_at: 2025-06-02 09:15:13.857413000 +01:00
:created_at: 2025-06-02 09:15:13.857413000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 853 & 854
:extension: markdown
:erb: true
