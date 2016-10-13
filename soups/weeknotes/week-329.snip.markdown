Week 329
========

Now that the [pre-election period][] has passed, I can exclusively reveal that the "secret" client project we've been working on is at the [Government Digital Service][] (GDS).

The project concerns the bits of the [GOV.UK website][] which ask users a series of questions in order to show them an answer specific to their situation. Within GDS these are known generically as [Smart Answers][smart-answers-format].

Rather than try to explain everything we've been doing on the project over the last few weeks, I thought I'd try to describe the situation when we arrived at GDS and a bit about what we've been asked to do. Hopefully we can then gradually bring you up-to-date over the next few weeks.

## Smart Answers

The *Smart Answer* "format" covers a wide range of domains. To give you a bit of a flavour, here are some examples:

* [Calculate your employee's statutory sick pay][calculate-statutory-sick-pay]
* [Getting married abroad][marriage-abroad]
* [Student finance calculator][student-finance-calculator]
* [Calculate your leave and pay when you have a child][pay-leave-for-parents]

### Taxonomy

Some of the *Smart Answers* are purely decision trees, some are calculators, and others are hybrids of the two. They're currently implemented in a number of different ways:

#### Smart Answers App

The majority of *Smart Answers* have been built using a [Ruby DSL][smart-answers-dsl] in the [Smart answers app][], a non-ActiveRecord Rails app. The DSL describes the possible journeys through the questions and possible outcomes. It makes heavy use of the [Rails I18n API][] with the default YAML backend to store the [question & outcome content][smart-answer-flows-locale-files].

A couple of these *Smart Answers* have been converted to use, or written using, the internally developed [Smartdown library][]. The latter extends the idea of the [Govspeak library][], which itself is an extension of [Markdown][].

The idea behind the Smartdown approach is to make it easier for [content designers][gds-content-designer] to create and update the *Smart Answers* without needing to involve developers.

#### Publisher App / Simple Smart Answers

Simpler *Smart Answers* have been authored using the *Simple Smart Answer* format in the [Publisher app][]. As with other formats in the Publisher app, the data is [saved to MongoDB][govuk_content_models]. However, in contrast to other formats, *Simple Smart Answers* save a [graph of objects][simple-smart-answers-edition-nodes] representing the user's possible journeys through the questions and the possible outcomes.

The [Frontend app][] retrieves this graph of objects from MongoDB via the [Content API][] and displays the questions to the user, accepts responses to the questions, and eventually takes them through to the appropriate outcome.

Although *Simple Smart Answers* are implemented separately, they're intended to look and feel the same as *Smart Answers*. Here are a couple of examples:

* [Apply to settle in the UK][]
* [Get a State Pension statement][]

*Smart Answers* in this form can be created/updated in a draft state which allows them to be previewed before publication.

#### Calculators App

[One other][child-benefit-tax-calculator] *Smart Answer* has been built in its own non-ActiveRecord Rails app, the [Calculators app][]. This was built in a separate app, because it needed some extra functionality e.g. the ability to change the number of questions asked on a page depending on the response given to an earlier question.

### The Brief

These *Smart Answers* have proved very popular with users, but it's turned out that in their current forms, it takes a considerable amount of time and effort to develop new ones and even just to keep the existing ones up-to-date with the latest rates, changes in policy, etc. In particular it takes a lot of developer effort which is in short supply.

Our brief is to take a bit of a step back and work out how the development and maintenance of *Smart Answers* can be put on a more sustainable footing. We really appreciate that GDS has presented us with a problem to solve, rather than a solution to implement. It's definitely going to be a significant challenge, but hopefully we can come up with a good solution.

## GFR

Monday was a bank holiday, so we spent Tuesday-Thursday working on the Smart Answers project (see above), although we worked remotely from GFRHQ on the Wednesday.

Over the bank holiday weekend I finally got round to a few things:

* [Processing the AIS data][ais-on-sdr-wiki-page] I'd collected from a ferry on the way back from the Isle of Wight.
* Publishing a [Tax Calculator][] I built to help us decide on the mix of salary versus dividends to pay ourselves.
* [Playing with Google App Scripting][google-app-scripting-example].

We spent Friday mostly working on GFR admin, although we did manage to fit in lunch with Tom and Murray at the [Strongroom Bar & Kitchen][] and a couple of beers at the [Shoreditch Works] mixer at the end of the day.

Chris spoke to [PRS][] to update the address on our license, but discovered that frustratingly they are non-refundable and non-transferrable, so we had to buy a whole new license.

Anyway, that's all folks. I'm sorry these notes were so late. Until next time.

-- James


[pre-election period]: https://gds.blog.gov.uk/2015/03/29/the-pre-election-period/
[Government Digital Service]: https://www.gov.uk/government/organisations/government-digital-service
[GOV.UK website]: https://www.gov.uk
[smart-answers-format]: https://gds.blog.gov.uk/2012/02/16/smart-answers-are-smart/
[calculate-statutory-sick-pay]: https://www.gov.uk/calculate-statutory-sick-pay
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[student-finance-calculator]: https://www.gov.uk/student-finance-calculator
[pay-leave-for-parents]: https://www.gov.uk/pay-leave-for-parents
[Publisher app]: https://github.com/alphagov/publisher
[govuk_content_models]: https://github.com/alphagov/govuk_content_models/
[simple-smart-answers-edition-nodes]: https://github.com/alphagov/govuk_content_models/blob/8f749fae942ae033ad36e940aecc44605c9c28f1/app/models/simple_smart_answer_edition.rb#L10
[Frontend app]: https://github.com/alphagov/frontend
[Apply to settle in the UK]: https://www.gov.uk/settle-in-the-uk
[Get a State Pension statement]: https://www.gov.uk/state-pension-statement
[Content API]: https://github.com/alphagov/govuk_content_api
[smart-answers-dsl]: https://github.com/alphagov/smart-answers/blob/master/lib/smart_answer_flows/README.md
[Smart answers app]: https://github.com/alphagov/smart-answers
[Smartdown library]: https://github.com/alphagov/smartdown
[gds-content-designer]: https://www.gov.uk/service-manual/the-team/content-designer.html
[Govspeak library]: https://github.com/alphagov/govspeak
[Markdown]: http://daringfireball.net/projects/markdown/
[Rails I18n API]: http://guides.rubyonrails.org/i18n.html
[smart-answer-flows-locale-files]: https://github.com/alphagov/smart-answers/tree/master/lib/smart_answer_flows/locales/en
[child-benefit-tax-calculator]: https://www.gov.uk/child-benefit-tax-calculator
[Calculators app]: https://github.com/alphagov/calculators
[Strongroom Bar & Kitchen]: http://www.strongroombar.com/
[Shoreditch Works]: http://shoreditchworks.com/
[PRS]: http://www.prsformusic.com/
[ais-on-sdr-wiki-page]: https://github.com/freerange/ais-on-sdr/wiki/Capturing-raw-AIS-data-using-rtl_fm-and-decoding-using-aisdecoder-v2
[Tax Calculator]: https://docs.google.com/spreadsheets/d/17fmYMmw-ugnjPB5t3FzBgQPlmyHPaE9AA_oH2uWUwH0/edit?usp=sharing
[google-app-scripting-example]: https://gist.github.com/floehopper/b13fd71e9aa7946692bf

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-05-22 15:58:00 +01:00
:updated_at: 2015-05-22 15:58:00 +01:00
:page_title: Week 329
