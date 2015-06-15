Week 334
========

As has become our routine of late, we spent four days working on the GDS Smart Answers project, with Monday & Tuesday at Aviation House and Wednesday & Thursday in our own office. Friday was our "GFR day".

## Smart Answers

### Regression Tests

Our main focus has been to continue to add regression tests to the [Smart Answers app][]. This week we've managed to add regression tests for bunch more flows including some relatively complicated ones.

The reason adding these tests is quite time-consuming is because for most of them we need to go through an iterative process where we use code coverage to build up a *relatively minimal set* of user responses to exercise all the logic in the flow.

The fact that the flow logic is built using a custom DSL means that it's not always straightforward to do this. In many cases we've been temporarily making the code more verbose in order to make the coverage visible. For the same reason, we've also found it useful to expand single-line conditionals and ternary expressions.

Even though this work is slow-going, I think a useful side-effect is that we're having to look really closely at the code making up each of the smart answers. This is useful in building up a clear picture of the different types of flow which currently exist.

### Templating Mechansim

Having [previously converted][week-330-templating-mechanism] a few flows to use ERB templates for their outcomes, this week we improved this by moving to the templating implementation used by Rails. We did this incrementally in two steps, first moving from [from ERB to Erubis][erb-to-erubis-commit] and then [from Erubis to ActionView][erubis-to-action-view-commits].

The intermediate Erubis step meant that we could address some "ERB trim" issues separately from the change to ActionView. Using ActionView instead of plain old ERB has a number of advantages which are outlined in [this commit note][erubis-to-action-view-commit].

### Analytics

For a while we've wondered what metrics are being collected to evaluate the effectiveness of the current smart answers.

This week we established that there currently isn't a way for to see what percentage of people arriving at the beginning of a smart answer make it through to an outcome page, or whether there's a particular point at which people get stuck.

Everyone agrees that it would be useful to be able to see data like this, and so we've made a start at getting some basic metrics in place using Google Analytics.

### Exceptions

Chris spent quite a bit of time going through exceptions from the Smart Answers app reported in [Errbit][].

It turns out that the majority of reported exceptions are safe to ignore, mainly because they don't result in the user seeing an error, because of e.g. caching. However, the fact that they are reported means that the signal-to-noise ratio is lower than we would like.

In the past, we've found that this situation can be a bit of a slippery slope, because it can be all to easy to accidentally ignore genuine problems. So we'd like to continue to make improvements in this area if we can.

### Deployment

On Tuesday afternoon we watched [Ben J][] and [Elliot C-M][] deploy the Smart Answers app. The deployment followed the [standard GOV.UK release process][govuk-release-process] under the beady eye of the [Badger of Deploy][].

As I understand it, production traffic is constantly being [re-played against the staging environment][govuk-replay-production-traffic], so Elliot was able to check nothing had gone awry before biting the bullet and deploying the app to production.

Although there's an impressive amount of automation involved in this process, there are still quite a few manual steps and it all takes a while.

### Deleting Code

As we've been adding the regression tests, we've been coming across unused and unreachable code and we've been taking the opportunity to remove it:

* [Unreachable outcome in overseas-passports](https://github.com/alphagov/smart-answers/pull/1678)
* [Another unreachable outcome in overseas-passports](https://github.com/alphagov/smart-answers/pull/1694)
* [Redundant v2 of simplified-expenses-checker](https://github.com/alphagov/smart-answers/pull/1702)
* [Redundant v2 of check-uk-visa](https://github.com/alphagov/smart-answers/pull/1691)
* [Unused methods in ChildcareCostCalculator](https://github.com/alphagov/smart-answers/pull/1692)
* [Unused methods in SelfAssessmentPenalties](https://github.com/alphagov/smart-answers/pull/1703)

It always feels good to delete unnecessary code.

## GFR

On Wednesday evening, we hosted our [thirteenth Show and Tell event][show-and-tell-june]. I can't quite believe we've been running these events for over a year now! Anyway, as per usual I enjoyed hearing about some new things. You'll be able to read more about it soon when Chris publishes the write-up.

On Thursday Chris & I picked up lunch from [Ruby][] and ate it sitting in the sun in Hoxton Square. Very pleasant!

On Friday we got stuck into some GFR admin in the morning and then met up for lunch with [Amy & Rachel][hookline] at the [The Hoxton][]. We were joined in the afternoon by [Chris L][] who proceeded to ship the [latest edition of Web Audio Weekly][waw-39] in next to no time, putting my slow authorship of these notes to shame.

We needed little persuasion to finish work early and headed to the [Horse and Groom][] for a pint or two with Chris L. We were soon joined by [Pete H][], Amy & Rachel, and later on by [Murray][].

That's all, folks.

-- James


[Smart Answers app]: https://github.com/alphagov/smart-answers
[week-330-templating-mechanism]: /week-330#templating-mechanism
[erb-to-erubis-commit]: https://github.com/alphagov/smart-answers/commit/2120f4b4aa684855201c3384ca9c51d3ef9f5e00
[erubis-to-action-view-commits]: https://github.com/alphagov/smart-answers/compare/1547bfed7e909fe56e46e2b59667266007db345c...da6e41385e619323c363b395a8a38d8aa66fec0c
[erubis-to-action-view-commit]: https://github.com/alphagov/smart-answers/commit/bbc105a39d536e00d5f562c0eda10499bac854b4
[Errbit]: https://github.com/errbit/errbit
[govuk-replay-production-traffic]: https://gdstechnology.blog.gov.uk/2013/12/13/putting-the-router-through-its-paces/#replay-production-traffic
[govuk-release-process]: https://gdstechnology.blog.gov.uk/2014/09/10/releasing-applications-to-gov-uk/#our-release-process
[Badger of Deploy]: https://twitter.com/BadgerOfDeploy
[Ben J]: http://www.benjanecke.com/
[Elliot C-M]: http://elliotcm.co.uk/
[show-and-tell-june]: http://lanyrd.com/2015/gfr-show-and-tell-june/
[Ruby]: https://twitter.com/ruby_shoreditch
[hookline]: http://hookline.tv/
[The Hoxton]: https://thehoxton.com/
[Chris L]: http://chrislowis.co.uk/
[waw-39]: http://blog.chrislowis.co.uk/waw/2015/06/12/web-audio-weekly-39.html
[Horse and Groom]: http://thehorseandgroom.net/
[Pete H]: https://twitter.com/yahoo_pete
[Murray]: http://h-lame.com/

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-06-15 16:07:00 +01:00
:updated_at: 2015-06-15 16:07:00 +01:00
:page_title: Week 334
