Week 449
========

I spent the first half of this week at the [Web Audio Conference](http://wac.eecs.qmul.ac.uk/). It was great to catch up with some familiar people and learn more about what people are working on. I've been involved with this community for a long time and it's really encouraging to see how it is growing and developing - there were around 100 people at the conference this year. I'll be writing more about the conference [in my newsletter](http://www.webaudioweekly.com/). I met up with James at the Outlandish co-working space (now officially called "Space4") on Thursday to catch up on what James and Chris had been working on in my absence.

## GDS

We've finally got some confidence that our approach of proxying requests for assets to S3 is going to perform well enough. [We used Kibana and Graphite](https://github.com/alphagov/asset-manager/issues/150) to give us an idea of the traffic that the Asset Manager app currently responds to. We used [Apache bench](https://httpd.apache.org/docs/2.4/programs/ab.html) to compare the performance of Asset Manager using Sendfile to Asset Manager proxying to S3. We decided that when we deploy to production we'll [direct a fixed percentage](https://github.com/alphagov/asset-manager/issues/151) of requests to S3 to begin with - this will allow us to monitor the impact of the change on the infrastructure.

To minimise the impact of this change on citizens we want to ensure that any caching that is already in place (GOV.UK use [fastly](https://www.fastly.com/) as an edge-side CDN) won't be invalidated. To achieve this we needed to overwrite the ETag header that S3 generates with one that matches what nginx would have added. We achieved this [by implementing nginx's ETag generation in Rails](https://github.com/alphagov/asset-manager/pull/157) and [adding it to the proxied requests](https://github.com/alphagov/govuk-puppet/pull/6355) in an nginx `location` block. Once deployed we'll be able to control when the caches are invalidated to minimise the impact.

We've also started a conversation to see whether we can work with user-researchers at GDS to work out what citizens expect from assets. We hope this will help us make a decision about the URLs we use if we eventually serve the assets directly from S3.

As the long weekend approaches we feel as though we can finally see a path to getting all of the "mainstream" assets moved to S3!

We finished up the week today working remotely - me from the [Roundhouse](http://www.roundhouse.org.uk/) Cafe in Camden, Chris from his boat on the Thames and James from home.

Have a great weekend!

:name: week-449
:updated_at: 2017-08-25 16:02:41.584016000 +01:00
:created_at: 2017-08-25 16:02:41.584008000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 449
:extension: markdown
