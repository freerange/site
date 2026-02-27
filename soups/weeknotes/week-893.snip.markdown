Week 893
========

Week beginning 23rd February, 2026.

The week was a bit disrupted: I was travelling back from the Isle of Wight on Monday and off sick on Thursday morning, [Chris L] was off sick on Tuesday, and [Chris R] quite properly took Thursday off for his birthday - belated happy birthday, Chris! 🎂

## Government Digital Service 🏷️

We've moved on from our work on the national applicability of documents on [GOV.UK]. Now we're looking at what's known as the [topic taxonomy] which on most pages provides the data for the breadcrumb links at the top the page and the "Explore the topic" links the bottom of the page. Some internal tooling suggests that a topic taxon which has more than 300 documents is regarded as "unhealthy", but it doesn't really help the user (typically a GDS content designer or information architect) fix the problem. It turns out there are many topic taxons which exceed this threshold.

To help us identify these "unhealthy" taxons and work out which to look at first, Chris L & Chris R have been using their PostgreSQL superpowers on a copy of the [GOV.UK content store] to construct a denormalized [fact table] suitable for import into a table view in Google Sheets.

I've written a scrappy Python script which takes a leaf taxon with approx 1,000 documents (i.e. the taxon is "unhealthy") and uses the [BERTopic package] to group the documents into candidate clusters. BERTopic wraps up a bunch of machine-learning steps into a customizable workflow with sensible defaults:

[<img src="<%= image_path('blog/bertopic-algorithm.svg') %>" width="100%" alt="Visual overview of default steps in BERTopic">](https://maartengr.github.io/BERTopic/algorithm/algorithm.html)

I've only tweaked a couple of things so far. Firstly, I've configured the Count Vectorizer to ignore English stop words to avoid them ending up as suggested keywords for a cluster. Secondly, I've configured a Represenation Model which uses OpenAI's `gpt-4o-mini` model to suggest human-friendly topic names using the keywords and a number of example documents from the cluster. The script outputs a CSV file suitable for uploading to Google Sheets which includes links to all the documents alongside the suggested topic name.

The results so far look promising, but I'm sure there's a lot more work to do build a genuinely useful prototype. Anyway, it feels good to be using problem-specific machine learning techniques rather than just chucking everything into an LLM and hoping for some half-sensible output.

## Code Club 🤖

Chris R ran his Code Club again on Tuesday - he wrote this program on [Code Club World], printed it out, and  got some of the children to recreate it. It reminds me of typing in programs from magazines on a ZX-Spectrum in the 1980s! Also it's great that he's using an app which we built for the [Raspberry Pi Foundation] back in the days of COVID-19.

[<img src="<%= image_path('blog/code-club-world-6-7.png') %>" width="100%" alt="6-7 T-shirt design from Code Club World">](https://codeclubworld.org/activities/art/6acdfd16-0fc9-48bc-a9f3-e8f48b906c0d)

## Miscellaneous 🧩

We've not had time for _much_ else, but...

We've had various Biz Dev conversations about what we might do after our GDS contract ends at the end of March.

I removed a Google Group which we'd been using as a kind of catch-all email address - it was just catching a load of spam and cluttering up our company Trello board, so it feels good to have removed it.

Chris L is having a call to discuss a project which won a grant from the Goldsmiths’ Partnerships, Innovation & Impact Fund to run an event in the summer. The project is called: "Scaling cooperation: Working together for a fairer, more productive digital platform ecosystem in the new music economy" which is very relevant to [Jam].

Anyway, that's all for now.

Until next time.

-- James

[GOV.UK]: https://gov.uk
[topic taxonomy]: https://www.gov.uk/government/publications/govuk-topic-taxonomy-principles/govuk-taxonomy-principles
[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[GOV.UK content store]: https://github.com/alphagov/content-store
[fact table]: https://en.wikipedia.org/wiki/Fact_table
[BERTopic package]: https://maartengr.github.io/BERTopic/index.html
[Jam]: https://jam.coop
[Code Club World]: https://codeclubworld.org/
[Raspberry Pi Foundation]: https://www.raspberrypi.org/

:name: week-893
:updated_at: 2026-02-27 09:50:48.068339000 +00:00
:created_at: 2026-02-27 09:50:48.068337000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 893
:extension: markdown
:erb: true
