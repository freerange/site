Week 350
========

We followed our usual pattern of Monday to Thursday on [Smart Answers][smart-answers] and Friday on GFR.


## Smart Answers

[Tadas][tadas-tamosauskas] did a great job of getting a number of changes out for factcheck before he headed off on holiday this week. We received feedback about a number of those changes and were able to continue working on them/get them merged in his absence:

* I made a few tweaks to the [Tadas's changes to the two minimum wage Smart Answers][smart-answers-pr-1922] before merging and deploying during the week.

* I merged [Tadas's changes to Check if you need a UK visa][smart-answers-pr-1951].

* I merged [Tadas's changes to Student finance calculator][smart-answers-pr-1972].

* [James][james-mead] worked on and merged [Tadas's bug fixes to the State pension top up calculator][smart-answers-pr-1971].

* James resumed the work [Tadas has started on the Statutory sick pay calculator][smart-answers-pr-1967] after Liz explained that it was quite important.

* James worked on and merged [Tadas's changes to Overseas British passport applications][smart-answers-pr-1982] after hearing back from factcheck.

Tadas has done a great job of working on Smart Answers over the past few months and we'll be sad not to have him around. Good luck in the new project, Tadas.

### Part Year Profit for Tax Credits

Having received the OK from HMRC, we were able to get this [new Part Year Profit for Tax Credits Smart Answer][part-year-profit-tax-credits] merged and deployed during the week. We originally started working on this back in [week 341][week-341] so it was great to finally see it go live.

The deployment was ever so slightly scary as we also had to deploy a [change to url-arbiter to remove a redirect][url-arbiter-pr-25] that was previously in place.

[Jamie Cobbett][jamie-cobbett] noticed that we should also [remove the redirect from short-url-manager][short-url-manager-pr-44] to keep things tidy.


### Handover

James and I met with [David][david-singleton], [Jenny][jenny-duckett] and [Mark][mark-sheldon] on Monday and with David and Jenny on Thursday. We're planning to do these at least weekly in an attempt to make the handover as seamless as possible.

We received great news during both meetings. On Monday we were given permission to convert the remaining published Smartdown flow ([Calculate your leave and pay when you have a child][pay-leave-for-parents]) to have a single question per page. This makes it possible to convert this Smart Answer to Ruby without first having to add support for multiple questions per page to the Ruby implementation.

On Thursday we were given the go-ahead to archive the pay-leave-for-parents-adoption Smart Answer. James wasted no time in [removing it][smart-answers-pr-1983] along with [another couple of unnecessary Smartdown flows][smart-answers-pr-1975].

This is great as it means that we'll definitely be able to remove support for [Smartdown][smartdown] flows in the relatively near future.


### Pay leave for parents

I started [converting pay-leave-for-parents to a single question per page][smart-answers-pr-1977] and was pleasantly surprised to find that it didn't take too long at all. I probably spent as much time converting it as I did trying to use the regression tests to give me confidence that I hadn't broken anything. James reviewed the changes and we got them merged toward the end of the week.

We needed to make a couple of smaller supporting changes ready for this conversion: [Allow smartdown flows to be rendered as text][smart-answers-pr-1980] and [Add QuestionPresenter#post_body][smart-answers-pr-1978].

I finished up with a [work in progress pull request to add regression tests for pay-leave-for-parents][smart-answers-pr-1986]

As part of the conversion to single questions per page we're working with an analyst to determine whether or not it affects peoples use of the Smart Answer. If we find that it negatively affects people then it'll be a strong driver to implement multiple questions per page in Ruby Smart Answers.


### Other changes

I [fixed a couple of failing tests that were using date specific data that changed on the 1 Oct][smart-answers-pr-1981].

James merged his changes to [use `Plek.new` rather than `Plek.current`][smart-answers-pr-1970].

James merged his changes to [refactor node presenters][smart-answers-pr-1962].

I merged my changes to [allow us to graph flows that use `next_node` with a block][smart-answers-pr-1960].


## GFR

James and I were joined by [Tom S][tom-stuart], [Murray][murray-steele] and [Ben][ben-griffiths] for our monthly drinks on Wednesday. We wandered over to [The Peasant][the-peasant] in Clerkenwell. I'd not been there before but would certainly recommend it for a post work pint.

James, Ben and I sat in the sun at [Dinerama][dinerama] for lunch on Friday. I suspect we might not have many of these sort of days left so it's great to get out in them while we can.

James and I spent some time going through our company Trello board on Friday afternoon. We had a number of things piling up in our triage list so it was good to discuss them and decide whether to do something about them now or to leave them until later.

James did a great job of investigating and discussing an [issue opened in the Mocha project][mocha-issue-223]. I wonder how many other open source maintainers would go to quite the same lengths that James does in trying to understand the issues that have been reported.

We were approached by [Rob Chatley][rob-chatley] during the week. Rob's asked whether we'd be able to help out by providing a day or two of coaching for his ["Software Engineering Practice" course][rbc-302] at [Imperial][imperial-college-london]. We're honoured to have been asked and it sounds like an interesting course to be involved in so we've agreed to help out.

Until next time, folks.

-- Chris

[ben-griffiths]: https://twitter.com/beng
[david-singleton]: http://dsingleton.co.uk/
[dinerama]: http://www.streetfeastlondon.com/where/dinerama
[imperial-college-london]: http://www.ic.ac.uk/
[james-mead]: /james-mead
[jamie-cobbett]: https://twitter.com/jamiecobbett
[jenny-duckett]: https://twitter.com/jenny_duckett
[mark-sheldon]: https://twitter.com/marksheldon
[mocha-issue-223]: https://github.com/freerange/mocha/issues/233
[murray-steele]: https://twitter.com/#!/hlame
[part-year-profit-tax-credits]: https://www.gov.uk/part-year-profit-tax-credits
[pay-leave-for-parents]: https://www.gov.uk/pay-leave-for-parents
[rbc-302]: https://www.doc.ic.ac.uk/~rbc/302/
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[short-url-manager-pr-44]: https://github.com/alphagov/short-url-manager/pull/44
[smartdown]: https://github.com/alphagov/smartdown
[smart-answers]: https://github.com/alphagov/smart-answers
[smart-answers-pr-1922]: https://github.com/alphagov/smart-answers/pull/1922
[smart-answers-pr-1951]: https://github.com/alphagov/smart-answers/pull/1951
[smart-answers-pr-1960]: https://github.com/alphagov/smart-answers/pull/1960
[smart-answers-pr-1962]: https://github.com/alphagov/smart-answers/pull/1962
[smart-answers-pr-1967]: https://github.com/alphagov/smart-answers/pull/1967
[smart-answers-pr-1970]: https://github.com/alphagov/smart-answers/pull/1970
[smart-answers-pr-1971]: https://github.com/alphagov/smart-answers/pull/1971
[smart-answers-pr-1972]: https://github.com/alphagov/smart-answers/pull/1972
[smart-answers-pr-1975]: https://github.com/alphagov/smart-answers/pull/1975
[smart-answers-pr-1977]: https://github.com/alphagov/smart-answers/pull/1977
[smart-answers-pr-1978]: https://github.com/alphagov/smart-answers/pull/1978
[smart-answers-pr-1980]: https://github.com/alphagov/smart-answers/pull/1980
[smart-answers-pr-1981]: https://github.com/alphagov/smart-answers/pull/1981
[smart-answers-pr-1982]: https://github.com/alphagov/smart-answers/pull/1982
[smart-answers-pr-1983]: https://github.com/alphagov/smart-answers/pull/1983
[smart-answers-pr-1986]: https://github.com/alphagov/smart-answers/pull/1986
[tadas-tamosauskas]: http://codeme.lt/
[the-peasant]: http://www.thepeasant.co.uk/
[tom-stuart]: http://codon.com/
[url-arbiter-pr-25]: https://github.com/alphagov/url-arbiter/pull/25
[week-341]: /week-341

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-10-02 15:30:00 +01:00
:updated_at: 2015-10-02 15:30:00 +01:00
:page_title: Week 350
