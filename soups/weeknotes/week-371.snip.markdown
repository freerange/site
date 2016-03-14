Week 371
========

## Smart Answers

### Automatic detection of possible next nodes

When we started work on the project, some (but not all) smart answer flows were
using calls to `next_node_if` with various predicates. We decided that it would
simplify the code and maintenance of the flows if we standardised on a single
approach.

We didn't think the custom predicate style was very readable and we felt that it
would be unfamiliar to most developers. Also we might've needed to extend the
predicate style in order to cater for *all* flows. So we decided to [standardise
on the non-predicate style][pr-2163] i.e. passing in a block of Ruby code to a
call to `next_node` for each question.

In making this change, in order to retain the ability to visualise the flow, we
had to explicitly specify a list of possible return values for each `next_node`
block. This felt like a type of duplication and made the code look overly
verbose.

So this week I started spiking on ways to automatically detect the possible
return values of a `next_node` block. I had [some success][pr-2311] using a combination of
[method_source][] to obtain the source code of the block, and [parser][] to
convert the source code to an AST and filter out the relevant AST nodes.

### Refactoring marriage-abroad

Chris continued with his mission to refactor the [marriage-abroad][] flow. He's
trying to better [separate the concerns][refactoring-docs] by moving policy
logic out of the flow and into a separate class which is more easily testable.

This week he merged a couple of pull requests:

* [Move logic from country_of_ceremony question to MarriageAbroadCalculator][pr-2297]
* [Remove calculate blocks from country_of_ceremony question in marriage-abroad][pr-2307]

And started work on another:

* [WIP: Delegate to MarriageAbroadDataQuery from MarriageAbroadCalculator][pr-2298]

## GFR

As usual this was mostly admin-related work:

* I wrote up some notes on the meeting I had at GDS the previous week.

* We finally received a belated refund relating to our storage unit at Urban
Locker and Chris sorted out the related book-keeping in [FreeAgent][].

* Our [Harmonia][] task for paying ourselves had grown considerably over the
years and we decided to split it up into a number of smaller tasks. Chris
finished off doing this during the week.

* The previous week we'd been told that our application to the [Digital Outcomes and Specialists Framework][] had been successful. We spent this week reading the Framework Agreement, asking for clarification on a few points, and then signing and returning the document.

* Our staging date for [pension auto-enrolment][] is 1st April and so Chris double-checked that we're compliant with the legislation.

That's it for this week. Until next time.

-- James

[pr-2163]: https://github.com/alphagov/smart-answers/pull/2163
[pr-2311]: https://github.com/alphagov/smart-answers/pull/2311
[method_source]: https://rubygems.org/gems/method_source/
[parser]: https://github.com/whitequark/parser
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[refactoring-docs]: https://github.com/alphagov/smart-answers/blob/5c53423fbf1b936692f5972567524080d3820f81/doc/refactoring.md
[pr-2297]: https://github.com/alphagov/smart-answers/pull/2297
[pr-2307]: https://github.com/alphagov/smart-answers/pull/2307
[pr-2298]: https://github.com/alphagov/smart-answers/pull/2297
[FreeAgent]: http://www.freeagent.com/
[Harmonia]: https://harmonia.io
[Digital Outcomes and Specialists Framework]: https://digitalmarketplace.blog.gov.uk/2015/12/07/digital-outcomes-and-specialists-is-open-for-applications/
[pension auto-enrolment]: http://www.thepensionsregulator.gov.uk/en/employers

:name: week-371
:updated_at: 2016-03-14 10:41:39.460449000 +01:00
:created_at: 2016-03-13 14:17:04.928975000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:page_title: Week 371
:extension: markdown
