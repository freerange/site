Week 338
========

G'day folks.

Week 338 was another short one for me as I spent Monday afternoon at home recovering from my weekend away.

We followed our usual pattern of Monday to Thursday working on [Smart Answers][] and Friday on GFR.

## Smart Answers

The bulk of our work was focussed on continuing to convert Smart Answers to use ERB templates.

### ERB templates

We finished the week with 24 of the 35 Ruby Smart Answers using ERB templates.

[Tadas][] had to make some changes to the [overseas-passport Smart Answer][] during the week and, unfortunately, found that the ERB templates made his work slightly harder! You can see some of what he had to deal with by looking at the [ips_application_result.govspeak.erb template][]. Part of the problem is with the lack of indented content (because we're emitting whitespace-sensitive govspeak) and part of it is because of the number of conditionals present in these type of Smart Answers. It's worth mentioning that this doesn't come as a complete surprise. We've naively translated the YAML to ERB as a small step toward being able to make further improvements.

### Analytics

We heard this week that our Google Analytics tracking (added in [week-336][]) didn't seem to be giving us the sort of data we expected. We're trying to record an event when people reach an answer, but the data was showing us that the majority of people were reaching an answer on the start page. After some investigation we realised that the problem was due to Smart Answer's use of JavaScript to replace page content when navigating through the flow; which results in all GA data being recorded against the first page. We think the answer is to send the `page` variable along with our event tracking data, but our wrapper around GA doesn't support that. We've temporarily bypassed our GA wrapper in order to see whether this gives us the data we need. If it does then we can [add support for `page` to our wrapper in the govuk_frontend_toolkit][pr-203].

Updating our Google Analytics tracking code meant that we had to regenerate all our regression test artefacts because they currently contain the complete HTML of the page. This is the second time we've been bitten by this problem and we've now prioritised the switch to using Govspeak instead of HTML as our regression tests artefact format.

### Tests

James fixed a problem that occassionally occurred as a result of the interaction between the standard test suite and our regression tests. See [commit 3f2503c][] for a fuller explanation.

## Meetings

We spent an hour or so bringing a few people up to speed on what we've been doing with Smart Answers. This included the Product Owner ([Mark Sheldon][]) and Tech Lead ([Jenny Duckett][]) of the Custom Publishing Tools and Formats team that will eventually take over Smart Answers when we leave.

I found it useful to be reminded that one of our main goals for this project is to reduce the maintenance overheard of Smart Answers. I'm really hoping that we're making some progress in that direction!

We explained how we've been trying to incrementally improve all Smart Answers rather than focus on more drastically improving a small number of them. We think this has been the right approach to date but that, depending on whether there's going to be an ongoing development effort, we might switch so that we can leave some exemplar/reference Smart Answers to help guide future development.

We also explained that our current thinking has us migrating the other Smart Answer implementations ([Smartdown][], Simple Smart Answers and [Calculators][]) to our main Smart Answers system, although we're not sure how far we'll get with this.

There was some wider discussion about user-testing some of the Smart Answers to check that they're still the best tool for the user needs they're trying to satisfy.

### Social

We had an enjoyable lunch at [Meat Market][] with [Neil][], [Stu][] and Mark on Thursday. Having been postponed once before there was some concern that Tubeageddon would affect us, but everyone managed to make it into the office and out to lunch.

## GFR

We should've hosted our 14th [Show and Tell][] this week but our failure to get organised, and the aforementioned Tubeageddon, meant that we decided to postpone to Tuesday the following week.

James has enabled [Harmonia][]'s Slack integration in our GFR Slack room. We're mostly using Trello to integrate with Harmonia so it'll be interesting to see whether/how we use this new Slack integration.

[Chris L][] joined us in the office on Friday afternoon, during which time he published [Web Audio Weekly 42][].

As is the new norm, James and I spent most of Friday blogging ([week links 338][] and [week notes 337][]) and generally catching up on admin.

Until next time (which will hopefully be later today!)

-- Chris

[Calculators]: https://github.com/alphagov/calculators
[Chris L]: http://blog.chrislowis.co.uk/
[Harmonia]: https://harmonia.io/
[Jenny Duckett]: https://twitter.com/jenny_duckett
[Mark Sheldon]: https://twitter.com/marksheldon
[Meat Market]: http://themeatmarket.co.uk/
[Neil]: https://twitter.com/neillyneil
[Show and Tell]: /show-and-tell-events
[Smart Answers]: https://github.com/alphagov/smart-answers
[Smartdown]: https://github.com/alphagov/smartdown
[Stu]: https://twitter.com/stuart_cullum
[Tadas]: https://github.com/tadast
[Web Audio Weekly 42]: http://blog.chrislowis.co.uk/waw/2015/07/10/web-audio-weekly-42.html
[commit 3f2503c]: https://github.com/alphagov/smart-answers/commit/3f2503c
[ips_application_result.govspeak.erb template]: https://github.com/alphagov/smart-answers/blob/master/lib/smart_answer_flows/overseas-passports/ips_application_result.govspeak.erb
[overseas-passport Smart Answer]: https://www.gov.uk/overseas-passports
[pr-203]: https://github.com/alphagov/govuk_frontend_toolkit/pull/203
[week links 338]: /week-338-links
[week notes 337]: /week-337
[week-336]: /week-336

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-07-17 10:15:00 +01:00
:updated_at: 2015-07-17 16:15:00 +01:00
:page_title: Week 338
