Week 346
========

Aloha folks.

Week 346 was both short because of the Bank holiday Monday and quiet because [James][james-mead] was still away on holiday.

I worked on [Smart Answers][smart-answers] on Tuesday, Wednesday and Friday, and on GFR on Thursday.

## Smart Answers

I spent some time clearing through [errbit][errbit] at the beginning of the week. I'd noticed a few unusual exceptions (unfortunately we have some "expected" exceptions that we're currently ignoring) and wanted to know whether they were anything to worry about.

I merged the pull request that adds [Rubocop][rubocop] to our test script that runs on [Jenkins][jenkins]. This should prevent us from introducing new violations to our code.

### Part year profit for Tax Credits

I added support for businesses that stop trading during the tax year in which their Tax Credits award ends. I think this should cater for people that no longer need to be self employed after their Tax Credits award ends.

I spent some time exploring Cucumber style tests to describe the behaviour of this new Smart Answer. I ended up switching to standard Ruby tests but thinking about the flow in terms of the language that Cucumber promotes definitely helped. This reminded me of [Richard Pope's Cucumber features that describe the rules around free prescriptions][memespring-free-prescriptions]. I do think it might be worth considering something similar to describe the policies/rules underpinning the Smart Answers.

[Liz][liz-lutgendorff] and I met with Gill from HMRC on Friday. I demonstrated the Smart Answer's ability to handle the case where the business has stopped trading, which Gill seemed happy with. We moved on to discuss the rules around businesses that have recently started trading and I think we now have all the information we need to finish the Smart Answer! Gill said that the work James had done to visualise the various date ranges had really helped her understand the rules for this Smart Answer.

### Analytics

I finished up on Friday by spending some time with Chris Russell. Chris had reported a bit of a problem with the Google Analytics tracking we've added to record when people reach Smart Answer outcomes. It seems that in a small number of cases we're recording an outcome event against URLs that don't result in an outcome being reached. I don't have a definitive answer yet but my best guess is that it's a problem with our use of JavaScript to reload sections of the page and update the URL in the browser.

## GFR

We received confirmation of our contract extension at GDS. We've been extended up until the end of November although it's possible we'll try to have everything handed over before then.

There's not much of any interest to report from my GFR day. It was filled with writing weeknotes and ticking off a number of admin chores.

Until next time.

-- Chris

[errbit]: https://github.com/errbit/errbit
[james-mead]: /james-mead
[jenkins]: https://jenkins-ci.org/
[liz-lutgendorff]: https://insidegovuk.blog.gov.uk/author/liz-lutgendorff/
[memespring-free-prescriptions]: https://gist.github.com/memespring/55f8529f1d9e6dd76632
[rubocop]: https://github.com/bbatsov/rubocop
[smart-answers]: https://github.com/alphagov/smart-answers

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-09-11 11:00:00 +01:00
:updated_at: 2015-09-11 13:00:00 +01:00
:page_title: Week 346
