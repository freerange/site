Week 358
========

Howdi, folks.

Welcome to GFR's week 358: Our penultimate(ish) week working on [Smart Answers][smart-answers]!

[James][james-mead] was away this week. He took a well deserved break to go skiing in Austria.

I spent 4 1/2 days working on Smart Answers and just 1/2 day working on GFR.

## Smart Answers

It was good to have [Erik][erik-eide] back this week and to be able to continue handing our work over.

Erik got straight back into it, making some improvements to "[Marriage abroad][marriage-abroad]" as part of some business-as-usual changes that had been requested.

I merged the final [pull request that switched us from using i18n to ERB for question templates][pr-2160]. This allowed me to simplify the code by [removing support for i18n templates][pr-2167].

I merged the final [pull request that switched us to using `next_node` with a block][pr-2104]. This allowed me to simplify the code by [removing support for defining next nodes using predicates][pr-2163].

Due to some other changes we've made we'd ended up with two directories containing partial ERB templates. I [combined those into a single directory to make the app slightly less surprising][pr-2159].

I went through the issues in GitHub Issues and moved them to our Smart Answers Trello board so that we only have a single place to look when working on the project. The Trello board is currently private but I'm hoping we might be able to make it public in the near future.

I made a start on some of the outstanding [documentation improvements][pr-2169] that we've discussed over the last few weeks.

## GFR

I was joined by [Ben G][ben-griffiths] and [Tom S][tom-stuart] for an enjoyable GFR drinks on Wednesday.

I managed to tick off a couple of minor admin tasks and publish notes for [week 356][weeknotes-356] and [week 357][weeknotes-357] in the 1/2 day I spent working on GFR this week.

[ben-griffiths]: https://twitter.com/beng
[erik-eide]: https://github.com/erik-eide
[james-mead]: /james-mead
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[pr-2104]: https://github.com/alphagov/smart-answers/pull/2104
[pr-2159]: https://github.com/alphagov/smart-answers/pull/2159
[pr-2160]: https://github.com/alphagov/smart-answers/pull/2160
[pr-2163]: https://github.com/alphagov/smart-answers/pull/2163
[pr-2167]: https://github.com/alphagov/smart-answers/pull/2167
[pr-2169]: https://github.com/alphagov/smart-answers/pull/2169
[smart-answers]: https://github.com/alphagov/smart-answers
[tom-stuart]: http://codon.com/
[weeknotes-356]: /week-356
[weeknotes-357]: /week-357

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-12-04 12:00:00 +00:00
:updated_at: 2015-12-04 12:00:00 +00:00
:page_title: Week 358
