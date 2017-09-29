Week 454 - Interesting links
============================

### [Creating space for the new digital economy: Space4](https://outlandish.com/blog/creating-space-for-the-new-digital-economy-space4/)

I found it really interesting to read about Outlandish's motivation behind creating the new [Space4 co-working space](http://space4.tech/) where we're renting a couple of desks.

> Outlandish found that having an office boosted our productivity and alignment and we want to support other growing co-ops to take advantage of that benefit.

We've definitely had this experience too - particularly when we had the office at 87 Worship Street. I'm really enjoying the days we spend working at Space4 and hope we find ways to spend more time there in the future. <%= by('james-mead') %>

### [OpenSeaMap](http://www.openseamap.org/?L=1)

When I was working in Antarctica there were a lot of areas marked "unsurveyed" on the Admiralty chart around our research station and I seriously considered doing some amateur surveying in one of our little dinghies. However, with the equipment we had at the time (no GPS!) it would've been very labour intensive.

Anyway, as a result of that experience, I was irrationally excited to come across this marine version of [OpenStreetMap](http://www.openstreetmap.org/). I love the idea of lots of boats around the world [logging their depth and position](http://depth.openseamap.org/) and gradually crowd-sourcing nautical charts. <%= by('james-mead') %>


### [TwiML Voice: Conference](https://www.twilio.com/docs/api/twiml/conference)

We recently decided it would be good to have a company conference call phone line which we can use if we don't have decent enough connectivity for the various online conference apps which we use from time to time. To this end I've been [messing around with Twilio](https://github.com/freerange/site/blob/1a95d1463f7db558deba9baf38d079dcd67c6c2f/app/controllers/twilio/conferences_controller.rb) to set up a conference call for us to try out. I've been pleasantly surprised by how easy it's been, the quality of the documentation, and even the development & debugging functionality available. <%= by('james-mead') %>


### [recutils](https://www.gnu.org/software/recutils/)

[Chris L](/chris-lowis) has previously enthused about [ledger](http://ledger-cli.org/), a command-line double-entry book-keeping system which stores data in plain text files. `recutils` is a similar idea, but for databases. I really like the general idea, particularly because it would make it possible to store one's data in version control. <%= by('james-mead') %>

### [1.1 Billion Taxi Rides with Spark 2.2 & 3 Raspberry Pi 3 Model Bs](http://tech.marksblogg.com/billion-nyc-taxi-rides-spark-raspberry-pi.html)

Mark Litwintschik is on a mission to try and benchmark many different systems for large scale parallel data processing against a common data set and queries. He's using the New York City "[billion taxi rides](http://www.nyc.gov/html/tlc/html/about/trip_record_data.shtml)" data and running queries such as a grouped count of rides by cab type. I enjoyed this instalment where he built a 3-node cluster of [Raspberry Pi](https://www.raspberrypi.org/)s running [Apache Spark](https://spark.apache.org/).

### [Belonging is a superpower – Patterns for decentralised organising](https://open.coop/2017/09/25/belonging-superpower-patterns-decentralised-organising/)

Oliver Sylvester-Bradley wrote up a summary of the Loomio-hosted workshop that [Chris R](/chris-roos) and I attended last Saturday. I've been reflecting on what we learnt all week - it was a very thought-provoking day. In particular breaking down the challenges of decentralised organising into 8 different patterns seems like a really useful way of structuring our thoughts on how we run GFR and participate in CoTech and other such organisations.

### [Abcul halts credit union migration to new core platform](http://www.bankingtech.com/966542/abcul-halts-credit-union-migration-to-new-core-platform/)

> UK-based Association of British Credit Unions (Abcul) has suspended its plans to migrate its member credit unions onto its new tech platform, Banking Technology understands.

It sounds as though things aren't going quite to plan for ABCUL's Credit Union Expansion Project. The article suggests that there are problems with the three credit unions using the platform and they need to try to sort these out before they can migrate anyone else.

We became interested in the [Credit Union Expansion Project][cuep] while investigating the [possibility of starting a credit union][credit-union-project] and continue to keep half an eye on what's happening. It's a real shame to hear that it's not working out and I really hope they manage to get back on track with the project. <%= by('chris-roos') %>

[credit-union-project]: http://gofreerange.com/project-credit-union-day-1
[cuep]: https://github.com/freerange/bank/wiki/Credit-Union-Expansion-Project

:name: week-454-links
:updated_at: 2017-09-28 10:14:26.067043000 +01:00
:created_at: 2017-09-28 10:14:26.067041000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 454 - Interesting links
:extension: markdown
