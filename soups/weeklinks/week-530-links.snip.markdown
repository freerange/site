Week 530 - Interesting links
============================

### [Rails Trace](https://rails-trace.chriszetter.com/)

[Chris Zetter](https://chriszetter.com/) built this site to help people visualise how Rails responds to HTTP requests. The trace of the execution path of a single HTTP request through all the various libraries is fascinating. Chris has also written [an excellent blog post](https://chriszetter.com/blog/2019/03/06/visualising-how-rails-responds-to-http-requests/) on how he built the visualisation including the discovery of an interesting bug in Ruby. <%= by('james-mead') %>


### [DoubleAgent](https://doubleagent.io/)

This is actually something we first mentioned back in [week 470](/week-470-links). For a long time we've been using our own [Chrome extension](https://github.com/freerange/freeagent_transaction_explainer) to help us explain transactions in FreeAgent correctly and consistently. However, since we started making sales from mission-patch.com, we've needed to handle payouts from Stripe which are made up of payments from multiple customers and deductions for processing fees.

We looked at and tried a few different options, but we've settled on DoubleAgent which [does this automatically](https://doubleagent.io/docs/stripe). Andrew was really helpful in making some changes to support our Stripe use case and so far it's all working really well. And as a bonus we've started setting up DoubleAgent rules to replace the functionality provided by our Chrome extension. <%= by('james-mead') %>


### [Building Git](https://shop.jcoglan.com/building-git/)

[James Coglan](https://blog.jcoglan.com/) has written a book which walks you through building git from scratch in Ruby. I haven't had a chance to look at it yet, but I'm sure it's full of useful explanations of programming concepts. <%= by('james-mead') %>


### [Deconstructing the Monolith](https://engineering.shopify.com/blogs/engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)

[Kirsten Westeinde](https://www.kirstenwesteinde.com/) has written an interesting article about how [Shopify](https://www.shopify.co.uk/) is going about modularizing its giant Rails monolith without resorting to extracting microservices:

> We wanted a solution that increased modularity without increasing the number of deployment units, allowing us to get the advantages of both monoliths and microservices without so many of the downsides.

She references [Dan Manges](https://www.dan-manges.com/)' article from last year, [The Modular Monolith: Rails Architecture](https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4). I find it encouraging that people are talking about this as a more sensible step rather than just jumping on the microservices band-wagon. <%= by('james-mead') %>


### [The Ruby Toolbox - News](https://www.ruby-toolbox.com/blog)

It's good to see new life being breathed into [The Ruby Toolbox](https://www.ruby-toolbox.com/) by Christoph Olszowka's recent work funded by Ruby Together. Although I find graphs like [this one of Mocha downloads](https://www.ruby-toolbox.com/projects/mocha) slightly terrifying! <%= by('james-mead') %>

:name: week-530-links
:updated_at: 2019-03-12 15:27:05.097727000 +00:00
:created_at: 2019-03-12 15:27:05.097725000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 530 - Interesting links
:extension: markdown
