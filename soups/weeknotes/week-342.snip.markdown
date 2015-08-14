Week 342
========

We did the usual 4:1 split of days between Smart Answers and GFR, although Chris was still away at Jase's wedding on Monday.

## Smart Answers

### Content Team Show & Tell

On Tuesday morning, the Content Team held a Show & Tell session. Unfortunately I was off sick that morning, but Chris gamely stepped into the breach and expained a bit about what we've been asked to do, what approach we've taken, what we've done so far, and what we hope to do next.

### ERB Templates & Refactoring

After that Chris re-started his work on converting the large & complicated [marriage-abroad smart answer][] to use ERB templates. This smart answer seems to be the one that changes most frequently - mainly because it's dependent on the legal systems and processes of all the countries of the world and their embassies.

The frequent changes have meant it's been difficult to find the right time to do the conversion to ERB templates, but since it's the only one left to convert, we're determined to get it done soon! Later in the week during a bit of a lull in the marriage-abroad action, Chris got the following pull requests merged:

* [Epic refactoring of the minimum-wage shared logic][pr-1856]
* [Convert calculate-statutory-sick-pay to use ERB templates][pr-1863]

In the middle of the week, I did a quick bit of tidying up so that all our integration tests are [consistently instantiating flows directly rather than looking them up in the registry][pr-1877].

### Tax Credits Part-Year Finalisation

Otherwise I spent most of the rest of the week trying to design and build a new smart answer for HMRC. This is intended to help self-employed people who are switching from Tax Credits onto Universal Credit part way through a tax year.

They have to complete a form "finalising" their Tax Credits and that form has a box for the taxable profit they've made (or estimate that they'll have made) during the part year. The smart answer is meant to help calculate what this figure should be.

Content Team stalwart, Liz, has worked heroically with people at HMRC to come up with a set of rules for the calculation. She's done a great job with the information available to her, but it sounds as if it's been difficult because she hasn't been able to talk _directly_ to policy experts much (if at all). Consequently she's had to reverse engineer a set of rules out of a set of example scenarios.

Unfortunately this means that the rules are rather complicated and I've found it hard to understand the motivation behind each of them. I could probably have just gone ahead and blindly turned these rules into code, but I was concerned that the result would be hard to understand and maintain.

On Wednesday morning Liz and I had a phone call with her contact at HMRC and I understood a bit more about the rationale behind some of the logic. However, I still had unresolved questions which were hard to put into words on a phone call. Part of the difficulty with talking about this smart answer is that it's all about a bunch of dates and date ranges like the tax year, accounting years, etc.

To make it easier to understand what was going on I decided to build a visualisation using the [Timeline chart][] from Google's [Chart library][google-charts] pulling data from a Google spreadsheet. When the relevant dates are entered into the "Calculator" sheet of the spreadsheet, the formulae on the "DataTable" sheet generate values which are then pulled into the Timeline chart.

I hope to sit with someone from HMRC and go through various scenarios using this visualisation tool in order to better model the policy behind the calculator.


## GFR

On Friday morning we both ticked off a bunch of company admin. Chris wrote up the [week notes][] and I compiled our [interesting links][]. Chris worked through the monthly task for paying ourselves and for the first time included the payments to our personal pensions in our payslips. We still need to contact HMRC to find out whether we need to do anything to "fix" payslips for previous months, but this feels like a good step forward.

After lunch we were joined by our [Hookline][] friends, Amy and Rachel. They've been making great progress with their independent music brokerage business, but in the process they've come up with an interesting product idea. We spent the afternoon chatting about a possible collaboration to explore the product idea further. Exciting times!

Anyhoo - that's all for now. Until next time.

-- James


[marriage-abroad smart answer]: https://www.gov.uk/marriage-abroad
[pr-1856]: https://github.com/alphagov/smart-answers/pull/1856
[pr-1859]: https://github.com/alphagov/smart-answers/pull/1859
[pr-1863]: https://github.com/alphagov/smart-answers/pull/1863
[pr-1877]: https://github.com/alphagov/smart-answers/pull/1877
[timeline chart]: https://developers.google.com/chart/interactive/docs/gallery/timeline
[google-charts]: https://developers.google.com/chart/interactive/docs/
[week notes]: /week-341
[interesting links]: /week-342-links
[Hookline]: http://hookline.tv/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-08-14 16:20:00 +01:00
:updated_at: 2015-08-14 16:20:00 +01:00
:page_title: Week 342
