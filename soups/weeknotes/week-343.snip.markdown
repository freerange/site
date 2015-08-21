Week 343
========

It was yet _another_ short week for me as I spent Monday on a narrowboat on the Thames. Aside from my slacking off we did our usual 4:1 split of days between [Smart Answers][smart-answers] and GFR.

## Smart Answers

### Progress update

[James][james-mead] and I had a chat with [Neil][neil-williams] and [Brad][brad-wright] about our progress on Smart Answers. Our current contract end date is getting closer but there's still plenty that we want to do. Explaining that we want to leave the code in the best state possible lead to a discussion about the possibility of us continuing to work past the end of date of our current contract.

### Converting marriage-abroad

I spent most of the week continuing to convert the [Marriage Abroad Smart Answer][marriage-abroad] to use ERB templates.

The task was made slightly harder by the ongoing work to marriage-abroad that I found myself having to rebase against. I also spent quite some time trying to get the ERB templates to produce identical output to the YAML templates before giving up and deciding it was more pragmatic to live with some of the whitespace changes that had been introduced by the conversion.

In hindsight I think it may have been better to have merged my changes to master more regularly, rather than trying to keep an entire branch of changes up to date and then merging them in one go. Unfortunately, the Pull Request workflow doesn't really lend itself to this style of working.

This is our last Smart Answer still using the YAML template style so I was really happy to finish the week with a [Pull Request containing the conversion of marriage-abroad to use ERB templates][pr-1882].

### Tax Credits Part-Year Finalisation

James spent most of the week continuing to work on the new Smart Answer for HMRC. He finished the week with a prototype of the Smart Answer, including the [visualisation mentioned in week 342][week-342-visualisation], deployed to Heroku. James is hoping to meet with someone from HMRC in week 344 and having this prototype should help focus the discussion.

### Upgrading Ruby and converting Smartdown

As well as upgrading Smart Answers to Ruby 2.2.2, [Tadas][tadas] made a start on converting the [student-finance-forms Smart Answer][student-finance-forms] from [Smartdown][smartdown] to Ruby. As mentioned above, we have a lot we want to do and having Tadas help out is great!

## GFR

* We hosted our [15th Show and Tell][show-and-tell-15] at GFR HQ on Wednesday.

* Based on our conversation with Brad and Neil, we spent some time on Friday working out how much of the budget we've used, and therefore how much longer we might be able to work for.

* We also tried to work out when we might be able to spend some time working with [Hookline][hookline] to explore the [product idea that James mentioned last week][week-342-hookline].

[brad-wright]: https://twitter.com/bradwright
[hookline]: http://hookline.tv/
[james-mead]: /james-mead
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[neil-williams]: https://twitter.com/neillyneil
[pr-1882]: https://github.com/alphagov/smart-answers/pull/1882
[show-and-tell-15]: /show-and-tell-15
[smart-answers]: https://github.com/alphagov/smart-answers
[smartdown]: https://github.com/alphagov/smartdown
[student-finance-forms]: https://www.gov.uk/student-finance-forms
[tadas]: http://codeme.lt/
[week-342-hookline]: /week-342#gfr
[week-342-visualisation]: /week-342#tax-credits-part-year-finalisation

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-08-14 16:50:00 +01:00
:updated_at: 2015-08-21 12:30:00 +01:00
:page_title: Week 343
