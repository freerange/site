Week 354
========

Howdi folks.

This was our second week of working 3 days on Smart Answers and 2 days on GFR. We're doing this as a way of gradually phasing out of GDS, although if it turns out that we're not getting as much done as we'd like then we'll potentially go back to 4 days on Smart Answers.

## Smart Answers

I merged a change that [avoids us rescuing `ArgumentError` exceptions in the next_node blocks][pr-2032]. I believe the intention of this rescue statement was to handle bad user input but it had the side effect of masking real errors in our code. This is all part of our move to ensuring things fail fast during development of Smart Answers.

I opened a pull request to [convert pay-leave-for-parents from Smartdown to Ruby][pr-2035]. James was good enough to review this large PR on Tuesday which gave me time to address the feedback before getting it merged and deployed on Wednesday. This was the final Smartdown flow so its conversion should allow us to start removing fairly large chunks of code.

I made a start on [removing some unused code in the form of the `FlowAudit` rake task and class][pr-2034].

I spent the majority of Tuesday investigating the Jenkins merge commits appearing in our release branch and tags. We first [noticed these back in week 349][week-349-jenkins-merge-commits] so it was great to finally get to the bottom of it. It turns out that an accidental force push to our GitHub master branch on 8 September had resulted in Jenkins using a recursive (rather than the default fast-forward) merge when fetching changes from origin/master. The effect was that all future fetches also resulted in recursive merge commits appearing. Having understood the cause we were able to reset our release branch to point to origin/master which in turn means that new release tags no longer contain these merge commits.

James and I had a short catch-up with the Erik, and new Content Delivery Manager, [Paul][paul-heron].

Catch-up with [David][david-singleton] and [Jenny][jenny-duckett]. They helped focus us on the priorities before we leave. Got confirmation that switching from multiple questions per page hadn't affected completion rates. If anything, completion rates have improved!

I've started to remove Smartdown from the app.

I've started working on changing the code so that it fails fast if an ERB template (either the cover page or an outcome) doesn't exist. We implemented it the way it is in order to mirror the old i18n behaviour but we're now longer to fail fast as much as possible.

James spent most of the week continuing to [work on the Statutory sick pay calculator][pr-2031]. It's turned into a bit of a nightmare as he continues to discover other things that aren't quite right with it!

[Erik][erik-eide]'s hit the ground running. He's already made changes to both the [maternity-paternity-calculator][pr-2040] and [student-finance-forms][pr-2036] Smart Answers, as well as opening a [pull request to fix a longstanding bug we've had in the project][pr-2041].

Erik's also [reordered the Gemfile to make it more readable][pr-2037] (the branch name, "update-gemfile-ocd-sorting", made me smile) and added the [ability to read the flow name from within a flow][pr-2039]. The second of those two is in preparation for programmatically changing node options depending on the flow, which is something we've talked about but never quite got round to doing.

## GFR

Published [links for week 354][week-354-links].

Continued to investigate our pensions and whether we're covered in our [auto-enrolment][tpr-auto-enrolment] duties. James did the same thing on Weds.

Spent some time getting my blog working on my laptop. I'd like to blog more but one of the things putting me off is the overhead of my current set-up. I got it working on my laptop and continued to make some progress in converting it from Webby to GitHub Pages/Jekyll. Add link to my blog post?

James did the same thing with his blog.

TODO: Look at Trello activity for this week.

Monthly drinks on Wednesday.

Chris L joined us on Friday and we had lunch at Electricity Showrooms.

[erik-eide]: https://github.com/erik-eide
[paul-heron]: http://worldofpablo.com/
[pr-2031]: https://github.com/alphagov/smart-answers/pull/2031
[pr-2032]: https://github.com/alphagov/smart-answers/pull/2032
[pr-2035]: https://github.com/alphagov/smart-answers/pull/2035
[pr-2034]: https://github.com/alphagov/smart-answers/pull/2034
[pr-2036]: https://github.com/alphagov/smart-answers/pull/2036
[pr-2037]: https://github.com/alphagov/smart-answers/pull/2037
[pr-2039]: https://github.com/alphagov/smart-answers/pull/2039
[pr-2040]: https://github.com/alphagov/smart-answers/pull/2040
[pr-2041]: https://github.com/alphagov/smart-answers/pull/2041
[week-349-jenkins-merge-commits]: /week-349#other-changes

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-10-30 11:30:00 +00:00
:updated_at: 2015-10-30 11:30:00 +00:00
:page_title: Week 354
