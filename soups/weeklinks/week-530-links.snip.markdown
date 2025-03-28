Week 530 - Interesting links
============================

### [Rails Trace](https://rails-trace.chriszetter.com/)

[Chris Zetter](https://chriszetter.com/) built this site to help people visualise how Rails responds to HTTP requests. The trace of the execution path of a single HTTP request through all the various libraries is fascinating. Chris has also written [an excellent blog post](https://chriszetter.com/blog/2019/03/06/visualising-how-rails-responds-to-http-requests/) on how he built the visualisation including the discovery of an interesting bug in Ruby. <%= by('james-mead') %>


### [DoubleAgent](https://doubleagent.io/)

This is actually something we first mentioned back in [week 470](/week-470-links). For a long time we've been using our own [Chrome extension](https://github.com/freerange/freeagent_transaction_explainer) to help us explain transactions in FreeAgent correctly and consistently. However, since we started making sales from mission-patch.com, we've needed to handle payouts from Stripe which are made up of payments from multiple customers and deductions for processing fees.

We looked at and tried a few different options, but we've settled on DoubleAgent which [does this automatically](https://doubleagent.io/docs/stripe). Andrew was really helpful in making some changes to support our Stripe use case and so far it's all working really well. And as a bonus we've started setting up DoubleAgent rules to replace the functionality provided by our Chrome extension. <%= by('james-mead') %>


### [Building Git](https://shop.jcoglan.com/building-git/)

[James Coglan](https://blog.jcoglan.com/) has written a book which walks you through building git from scratch in Ruby. I haven't had a chance to look at it yet, but I'm sure it's full of useful explanations of programming concepts. <%= by('james-mead') %>

### [Acoustic metamaterials that cancel sound](https://www.bu.edu/research/articles/researchers-develop-acoustic-metamaterial-noise-cancellation-device/)

Earlier in my career I researched noise cancelling technology for aircraft engines, and I still enjoy reading about recent developments. My Dad sent me this recent article from Boston University (see also the Physics Review  [paper](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.99.024302)) which describes a new way of manufacturing materials that can be tuned to remove specific frequencies of sound while still allowing light and air to pass through. It'll be interesting to see if the results hold up when used in aircraft engine models and also whether the technology will make it into things like roadside noise barriers or office sound-proofing. <%= by('chris-lowis') %>

### [Deconstructing the Monolith](https://engineering.shopify.com/blogs/engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)

[Kirsten Westeinde](https://www.kirstenwesteinde.com/) has written an interesting article about how [Shopify](https://www.shopify.co.uk/) is going about modularizing its giant Rails monolith without resorting to extracting microservices:

> We wanted a solution that increased modularity without increasing the number of deployment units, allowing us to get the advantages of both monoliths and microservices without so many of the downsides.

She references [Dan Manges](https://www.dan-manges.com/)' article from last year, [The Modular Monolith: Rails Architecture](https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4). I find it encouraging that people are talking about this as a more sensible step rather than just jumping on the microservices band-wagon. <%= by('james-mead') %>


### [The Ruby Toolbox - News](https://www.ruby-toolbox.com/blog)

It's good to see new life being breathed into [The Ruby Toolbox](https://www.ruby-toolbox.com/) by Christoph Olszowka's recent work funded by Ruby Together. Although I find graphs like [this one of Mocha downloads](https://www.ruby-toolbox.com/projects/mocha) slightly terrifying! <%= by('james-mead') %>


### [Why are .coop domains so expensive?](https://community.coops.tech/t/why-are-coop-domains-so-expensive/1258)

I enjoyed learning a bit of the history of .coop TLDs from some of the [CoTech](https://www.coops.tech/) members that were involved at the time. <%= by('chris-roos') %>


### [Remixing my Christmas interview on Radio 4](https://public.digital/2019/01/14/remixing-my-christmas-interview-on-radio-4/)

I appreciate the effort that's gone into transcribing this interview, and into the additional commentary that attempts to give some background behind the answers. <%= by('chris-roos') %>


### [Paying tribute to the web with View Source](https://m.signalvnoise.com/paying-tribute-to-the-web-with-view-source/)

> Additional, Rails 6 just committed to shipping source maps by default in production, also thanks to Webpack. You’ll be able to turn that feature off, but I hope you won’t. The web is a better place when we allow others to learn from our work.

This is great! I'm all for making it as easy as possible for people to see how the things we build work under the hood. <%= by('chris-roos') %>

:name: week-530-links
:updated_at: 2019-03-13 14:57:09.802812000 +00:00
:created_at: 2019-03-13 14:57:09.802795000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 530 - Interesting links
:extension: markdown
:erb: true
