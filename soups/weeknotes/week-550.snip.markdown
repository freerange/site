Special bonus bumper summer edition (weeks 548-550)
========

We're finding it hard to prioritise writing these weeknotes every week, but we do like to share something. So here's something - I hope you enjoy!

## Client work

We've been busy working on projects for FutureLearn. The last two weeks have been a "firebreak sprint" for the product team, which is an opportunity for them to plan ahead for the next quarter and for the tech team to spend some time making improvements to workflow and tooling. James and I have been helping out with a refactoring project which is attempting to create a [bounded context](https://martinfowler.com/bliki/BoundedContext.html) around some elements of the system that are concerned with conversations and commenting. The team have already created a public API for a new "conversation context" class and James and I have been working to ensure that these methods return [value objects](https://en.wikipedia.org/wiki/Value_object) instead of, for example, Active Record models. We managed to convert almost all of the methods to this style by the end of the sprint, which was quite satisfying. I think time will tell whether this pattern becomes generally useful across the codebase, but it's already started to make it easier to reason about how to simplify the code in this domain so it feels like a positive change.

Meanwhile Ben and Chris have begun work to help out one of the product teams with a Google Tag Manager integration. It seems that there's some concern that Google analytics isn't recording events in the correct way so as well as migrating the current older-style analytics integration to Tag Manager, Ben and Chris have been carefully examining, testing and improving the tracking of specific journeys in the system.

## Internship

We've decided to take on a young graduate for a couple of months as an "intern". This isn't something we've done before, so there's been a little bit of learning to do around paperwork, payroll and so on. But we're really excited to have them start. We'll say a little bit more about that in a couple of weeks.

## Running an R Training Course

I ran a "Data Analysis with R" workshop for [The Children's Society](https://www.childrenssociety.org.uk/) last week. 9 of their analysts from around the country came to their office in Shoreditch and I spent the day taking them through three exercises I'd prepared on data transformation, text analysis and data visualisation. My aim was to teach them the [tidyverse](https://www.tidyverse.org/) approach to using R. I was quite nervous as the materials I'd developed were all new, but I think it went well in the end. I received some very positive feedback and a bunch of suggestions about how to improve things. Despite the hard work preparing for it, I really enjoyed the experience. If you'd like me to run a similar workshop for you please [get in touch](mailto:lets@gofreerange.com).

## Mission Patch

We continue to make a steady trickle of sales of our [mission patches](https://mission-patch.com/) including some to repeat customers. Ben has been chipping away at getting our Stripe integration ready for the introduction of [Strong Customer Authentication](https://stripe.com/guides/strong-customer-authentication) while James has started looking at making the checkout pages work better on mobile devices.

## Articles of Association

Two weeks ago [Siôn Whellens of Principle 6](https://wiki.coops.tech/wiki/Principle_Six) came back to our offices to help us finalise the changes to our [articles of association](https://www.gov.uk/limited-company-formation/memorandum-and-articles-of-association) to make them compatible with Cooperative principles and allow us to apply for membership of Coops UK (among other things). Chris and Siôn have been working through some of the questions we had about the process and we're getting close to making the changes official. I'm really grateful to Chris for championing this work and it was lovely to have Siôn in the office (and the pub) to give us some advice and share some entertaining stories.

## Business development

We're really close to confirming work on a new project, and we'll have more to say about that when we've crossed the T's and [dotted the lower-case J's](https://www.youtube.com/watch?v=9vvMKxDvAt8).


Have a great weekend!


<!-- add content here -->

:name: week-550
:updated_at: 2019-08-02 16:50:00.713625000 +01:00
:created_at: 2019-08-02 16:50:00.713617000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 550
:extension: markdown
