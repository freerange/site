Week 478
========

We've spent the week working from [Space4][space4], [TOG][the-office-group] Bloomsbury and home.

We [paired][pair-programming] more this week than we have for a while. It's reminded me how much I enjoy it, and how effective it can be. Although we communicate regularly throughout the day, that's still not quite the same as having two people working through a single problem.

## Asset Manager

We're continuing to focus on the GDS [Asset Manager][asset-manager] work. It feels as though we're really not too far from being able to serve the [Whitehall][whitehall] attachments from Asset Manager (although it's felt like that for a while).

We've been improving the Whitehall code by pulling apart some unwieldy logic into more expressive methods. This makes the code easier to understand and helps give us confidence that we're correctly updating the assets in Asset Manager.

We've also been improving the Whitehall [Sidekiq][sidekiq] workers that communicate with Asset Manager. They'd grown somewhat organically and we'd ended up storing a fair amount of state on the queue. Not only can this state be out of date by the time the job is processed, but storing lots of data on the queue can eat into the memory available to [Redis][redis] (as we discovered in [week 473][week-473-gds]!) The workers now take a single database ID which minimises the memory use and allows us to retrieve the state at job process time.

We've added code and a Rake task in preparation for updating the metadata of all Whitehall attachments in Asset Manager. This is the final step before we can switch serving these assets from Asset Manager!

## GFR

We received some more detailed feedback about why we were rejected for the coaching opportunity we mentioned in [week 475][week-475]. I've not read through it in detail yet but hopefully it'll help us understand what we can do to improve.

Cat and Annie of [The Dot Project][the-dot-project] continue to do a great job of working with a subset of [CoTech][co-tech] members to produce something that can be used to sell CoTech services to larger organisations.

[James][james-mead] has archived some of our older repositories after we received vulnerability warnings from [GitHub][github], including the [fondly remembered Freerange Beards][freerange-beards-tweet].

We've accepted the [GDPR][gdpr] variations to the [Digital Outcomes and Specialists Framework][digital-outcomes-and-specialists]. The more I read about GDPR the more impressed I am by its intent. I look forward to seeing the back of some of the more underhand practices that certain services employ.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[co-tech]: https://www.coops.tech/
[digital-outcomes-and-specialists]: https://digitalmarketplace.blog.gov.uk/2015/12/07/digital-outcomes-and-specialists-is-open-for-applications/
[freerange-beards-tweet]: https://twitter.com/freerange/status/974023264682078208
[gdpr]: https://en.wikipedia.org/wiki/General_Data_Protection_Regulation
[github]: https://www.github.com/
[james-mead]: /james-mead
[pair-programming]: http://en.wikipedia.org/wiki/Pair_programming
[redis]: https://redis.io/
[sidekiq]: http://sidekiq.org/
[space4]: http://space4.tech
[the-dot-project]: http://www.thedotproject.co/
[the-office-group]: http://www.theofficegroup.co.uk/
[week-473-gds]: /week-473#gds
[week-475]: /week-475
[whitehall]: http://github.com/alphagov/whitehall

:name: week-478
:updated_at: 2018-03-16 12:23:42.686121000 +00:00
:created_at: 2018-03-16 12:23:42.686103000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 478
:extension: markdown
