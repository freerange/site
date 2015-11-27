Week 356
========

We both worked on [Smart Answers][smart-answers] four days this week. We're in the last few weeks of our contract and want to do as much as possible before we leave.

Tuesday was our day away from Smart Answers. We spent the morning helping out with [Rob Chatley's Software Engineering Practice][rbc-302] course at Imperial and the afternoon working at GFR.

## Smart Answers

I spent most of my time converting Smart Answers to use `next_node` with a block. We currently have two ways of defining the rules for a Smart Answer and we want to end up with one. We've decided to consistently use `next_node` with a block as we think that'll be the easiest for developers new to the project to understand and be able to work with.

I spent a short while [spiking on how we could make the code in our Smart Answers fail fast if you tried to call a method that doesn't exist][pr-2071]. The use of `OpenStruct`'s mean that we don't get this for free. I ended up overriding `method_missing` so that it "disables" the `OpenStruct` behaviour of responding to all unknown methods with `nil`.

I started refactoring the ["Check if you need a UK visa" Smart Answer][check-uk-visa] in preparation for making some business as usual changes that had been requested. This did mean that it took longer than it might otherwise have done to make the requested changes but refactoring first improved the code so that it was easier to make the changes.

James spent some time [refactoring the "Calculate your employee's statutory sick pay" Smart Answer][pr-2068]. His recent work making changes to this Smart Answer meant that he was really familiar with how it worked and was in a good position to refactor it. James has done a great job writing descriptive commits that should allow this pull request to serve as a guide for anyone else wanting to refactor Smart Answers.

James also made changes so that we fail fast if [question titles][pr-2075] are missing, and continued to lay the groundwork in preparation for converting the questions to use ERB templates instead of the existing i18n yaml files.

James and I had another of our regular catch-ups with [David][david-singleton] and [Jenny][jenny-duckett]. We went through Trello and tried to prioritise the remaining stories in todo. Given how little time we've got left we've agreed to really focus on some of the documentation tasks we've been avoiding in favour of making code changes.

Despite being away, [Erik][erik-eide] still managed to find some time to [upgrade the version of Rails we're using to 4.2.5][pr-2084].

## Software Engineering Practice

[Rob][rob-chatley] asked if we'd be able to spend some time helping some of the students on his [Software Engineering Practice][rbc-302] course. Students were able to book 30 minute slots with us to talk about their projects. We've not done anything like this before and I think we were both a little nervous about how it'd pan out.

We ended up seeing two groups and listening in to Rob help a third.

The first group we saw are building a content management system to help manage the content displayed on a number of large screens in one of the main walkways of the university. It was interesting to hear that this project has been attempted in the past but was never used because it didn't end up doing what the primary user needed from it. We used this to try to convey the importance of getting feedback from users as early as possible in order to ensure you're building the right thing.

The second group are working on an ambitious product that will use a neural network to analyse facial expression data in an attempt to help diagnose depression. They have grand plans for the project but very limited time. We ended up spending quite some time encouraging them to focus on reducing the scope for an initial version.

The third group that Rob saw are working on a collaborative in-browser code editor. They spent most of the time discussing their their use of [Trello][trello] to manage the project. It was really interesting to listen to Rob explain how slight tweaks in their process would align them with a [Kanban][kanban] system and possibly help them reduce the amount of work in progress.

We appreciated being asked to help and we really enjoyed the experience, although I did find it quite draining: even though we only spent an hour actively speaking to people!

## GFR

We published our [links for week 356][week-356-links].

We hosted our [18th Show and Tell][show-and-tell-18].

We advertised some of our unused furniture that's been sat in our storage unit for nearly a year! If anyone's interested in a couple of [Ikea office chairs][gumtree-ikea-chair], a [tv stand][gumtree-tv-stand] or a [microwave][gumtree-microwave] then get in touch.

Until next time.

-- Chris

[check-uk-visa]: https://www.gov.uk/check-uk-visa
[david-singleton]: http://dsingleton.co.uk/
[erik-eide]: https://github.com/erik-eide
[gumtree-ikea-chair]: https://www.gumtree.com/p/for-sale/2-x-ikea-vilgotnominell-swivel-chairs-with-nominell-armrests/1141696958
[gumtree-microwave]: https://www.gumtree.com/p/for-sale/sanyo-em-g255aw-microwave-oven/1141696290
[gumtree-tv-stand]: https://www.gumtree.com/p/for-sale/fs1040-2m-tall-tv-trolley-floor-stand-w-mounting-bracket-for-lcdplasma-tvs-glass-shelves/1141683137
[jenny-duckett]: https://twitter.com/jenny_duckett
[kanban]: https://en.wikipedia.org/wiki/Kanban
[pr-2068]: https://github.com/alphagov/smart-answers/pull/2068
[pr-2071]: https://github.com/alphagov/smart-answers/pull/2071
[pr-2075]: https://github.com/alphagov/smart-answers/pull/2075
[pr-2084]: https://github.com/alphagov/smart-answers/pull/2084
[rbc-302]: https://www.doc.ic.ac.uk/~rbc/302/
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[show-and-tell-18]: /show-and-tell-18
[smart-answers]: https://github.com/alphagov/smart-answers
[trello]: https://trello.com/
[week-356-links]: /week-356-links

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-11-27 11:45:00 +00:00
:updated_at: 2015-11-27 11:45:00 +00:00
:page_title: Week 356
