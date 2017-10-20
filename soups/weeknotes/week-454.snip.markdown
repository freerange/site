Week 454
========

We spent the majority of the week continuing our work on the GOV.UK Asset Management project.

## GOV.UK Asset Management

Chris L completed the work to switch the Asset Manager app to use [Sidekiq][] instead of [DelayedJob][]. Asset Manager was the last GOV.UK app to be using DelayedJob and the logging & monitoring infrastructure for Sidekiq is much better, so this feels like a really valuable piece of work.

Otherwise we continued to focus on changing the [Whitehall app][] to store a subset of its assets in the Asset Manager. It's been quite tricky to come up with an incremental approach which doesn't make the overall system a lot more complicated than it needs to be, but I think we're getting there slowly. We're determined to continue to make *concrete* steps forward, even if those steps are baby steps.

We also continued to make changes to the [Asset Manager app][] to support this work. For example, we're now storing values obtained from file metadata in the database and [allowing these to be specified][pr-240] when creating a Whitehall asset via the API. When we come to migrate existing Whitehall assets to the Asset Manager, we will be creating new files and so the metadata values would otherwise have been lost resulting in wholesale cache invalidation and potentially a massive spike in load.

[Sidekiq]: http://sidekiq.org/
[DelayedJob]: https://github.com/tobi/delayed_job
[pr-240]: https://github.com/alphagov/asset-manager/pull/240
[Whitehall app]: https://github.com/alphagov/whitehall
[Asset Manager app]: https://github.com/alphagov/asset-manager

## GFR

### Cashflow & business development

We've started to keep a more careful eye on our cashflow and our forecast revenue with a view to making more considered decisions about how much "business development" we do. For example, we've decided to take a more active interest in the opportunities being advertised in the government's [Digital Marketplace][].

To this end Chris L knocked up [a script][dos-scraper] to scrape the Digital Outcome opportunities from their website and generate a CSV file. The idea is that we can then import this CSV file into a Google spreadsheet in order to filter and annotate the opportunities.

Chris also drafted some useful initial criteria we can use to quickly rule out unsuitable opportunities:

* Require significant on-site work outside London
* Insufficient budget for 2-3 senior developers
* Projects which we'd find ethically challenging
* Involve expensive proprietary technologies, e.g. Microsoft, Oracle, etc
* Involve technologies with which we don't have sufficient experience or interest

A couple of weeks ago we applied for one of these Digital Outcome opportunities - [WP1455: End-to-end tests for GOV.UK publishing applications][wp1455]. Since we're enthusiastic advocates of automated testing, continuous integration & continuous delivery, we thought this was right up our street and we were keen to pursue another opportunity to work with the excellent GDS team.

Last week we heard that we'd been shortlisted and invited to submit a written proposal. Chris L did the bulk of the work on the initial application and so I decided to have a crack at writing an initial draft of our proposal. As evidenced by the tardiness of these week notes, I find it hard to get started with writing, but once I get into it, I actually quite enjoy it. I wish I could remember that feeling so I didn't find it so hard to get started in the first place! Anyway, I incorporated the helpful feedback from Chris R & Chris L and we submitted our proposal in time for the deadline on Friday morning.

[Digital Marketplace]: https://www.digitalmarketplace.service.gov.uk/
[dos-scraper]: https://github.com/freerange/dos-scraper
[wp1455]: https://www.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists/opportunities/5122

### Miscellanea

* Chris R worked out how to categorise our contributions to [Solid Fund][] in our book-keeping software.
* We signed up for a [Sociocracy][] workshop to be run at [Space4][] by [Pete Burden][].
* Chris L spent some time upgrading Rubygems & Bundler on our applications hosted on Linode and Heroku. This was yet another reminder of the hidden costs of running your own "free" software.
* Chris R picked the [British Heart Foundation][BHF] for our monthly donation to charity.
* We purchased two Dell 25" LCD monitors for our desks at Space4.
* A small, but intrepid, band braved the rain and met up for drinks at the [Lord Clyde][] on Wednesday evening.
* I did a bit more work on the [Twilio][] conference call number I setup last week. I added a passcode and changed the hold music. In order to do this I ended up moving the functionality out of the hosted TwiML Bins and [into the Rails app which serves our company website][twilio-controllers].

[Solid Fund]: http://solidfund.coop/
[Sociocracy]: https://en.wikipedia.org/wiki/Sociocracy
[Space4]: http://space4.tech/
[Pete Burden]: https://twitter.com/peteburden
[BHF]: https://www.bhf.org.uk/
[twilio-controllers]: https://github.com/freerange/site/tree/master/app/controllers/twilio
[Lord Clyde]: http://www.lordclyde.com/
[Twilio]: https://www.twilio.com/

:name: week-454
:updated_at: 2017-10-20 09:52:29.692488000 +01:00
:created_at: 2017-10-20 09:52:29.692486000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 454
:extension: markdown
