Week 354
========

Howdi folks.

This was our second week of working 3 days on [Smart Answers][smart-answers] and 2 days on GFR. We're doing this as a way of gradually phasing out of GDS, although if it turns out that we're not getting as much done as we'd like then we'll potentially go back to 4 days on Smart Answers.

## Smart Answers

I merged a change that [avoids us rescuing `ArgumentError` exceptions in the next_node blocks][pr-2032]. I believe the intention of this rescue statement was to handle bad user input but it had the side effect of masking real errors in our code. This is all part of our move to ensuring things fail fast during development of Smart Answers.

I opened a pull request to [convert pay-leave-for-parents from Smartdown to Ruby][pr-2035]. [James M][james-mead] was good enough to review this large PR on Tuesday which gave me time to address the feedback before getting it merged and deployed on Wednesday. This was the final [Smartdown][smartdown] flow so its conversion should allow us to start removing fairly large chunks of code.

I made a start on [removing some unused code in the form of the `FlowAudit` rake task and class][pr-2034].

I spent the majority of Tuesday investigating the Jenkins merge commits appearing in our release branch and tags. We first [noticed these back in week 349][week-349-jenkins-merge-commits] so it was great to finally get to the bottom of it. It turns out that an accidental force push to our GitHub master branch on 8 September had resulted in Jenkins using a recursive (rather than the default fast-forward) merge when fetching changes from origin/master. The effect was that all future fetches also resulted in recursive merge commits appearing. Having understood the cause we were able to reset our release branch to point to origin/master which in turn means that new release tags no longer contain these merge commits. We've now [made master a protected branch on GitHub][github-protected-branches] to prevent this from happening again in future.

James and I had a short catch-up with the [Erik][erik-eide], and new Content Delivery Manager, [Paul][paul-heron]. They've both been with the content team for a couple of weeks so we figured there might be some things we can bring them up to speed on.

We also had another catch-up with [David][david-singleton] and [Jenny][jenny-duckett] in which they helped focus us on our priorities before we leave. We also got confirmation that switching the [shared parental leave Smart Answer][pay-leave-for-parents] from multiple to single questions per page hadn't adversely affected completion rates.

I've started to remove Smartdown from the app.

I've started working on changing the code so that it fails fast if an ERB template (either the cover page or an outcome) doesn't exist. We implemented it the way it is in order to mirror the old i18n behaviour but we're now trying to fail fast as much as possible.

James spent most of the week continuing to [work on the Statutory sick pay calculator][pr-2031]. It's turned into a bit of a nightmare as he continues to discover other things that aren't quite right with it!

Erik's hit the ground running. He's already made changes to both the [maternity-paternity-calculator][pr-2040] and [student-finance-forms][pr-2036] Smart Answers, as well as opening a [pull request to fix a longstanding bug we've had in the project][pr-2041].

Erik's also [reordered the Gemfile to make it more readable][pr-2037] (the branch name, "update-gemfile-ocd-sorting", made me smile) and added the [ability to read the flow name from within a flow][pr-2039]. The second of those two is in preparation for programmatically changing node options depending on the flow, which is something we've talked about but never quite got round to doing.

## GFR

We published [links for week 354][week-354-links].

We both continued to investigate our pensions to understand whether we've met our [auto-enrolment][tpr-auto-enrolment] obligations.

We both spent some time getting our blogs working locally. I'd like to blog more but one of the things putting me off is the overhead of my current set-up. We both them working locally and I continued to make some progress in converting mine from [Webby][webby] to [GitHub Pages][github-pages]/[Jekyll][jekyll]. [I even blogged about it][chrisroos-blog-post] (copy/pasting a terminal session _definitely_ counts as blogging).

James and I made a little more progress toward getting rid of some of our items currently in storage.

We were joined by [James A][james-adam], [Tom S][tom-stuart] and [Chris L][chris-lowis] at [The Birdcage][the-birdcage] on Wednesday evening for another enjoyable instalment of our monthly drinks.

Chris L joined us for lunch at the [Electricity Showrooms][electicity-showrooms] on Friday before coming back and working from our office for the afternoon.

Until next time.

-- Chris

[chris-lowis]: http://blog.chrislowis.co.uk/
[chrisroos-blog-post]: http://chrisroos.co.uk/blog/2015-10-29-getting-my-webby-powered-website-running-on-mac-os-x-el-capitan
[david-singleton]: http://dsingleton.co.uk/
[electicity-showrooms]: http://www.electricityshowrooms.com/
[erik-eide]: https://github.com/erik-eide
[github-pages]: https://pages.github.com/
[github-protected-branches]: https://help.github.com/articles/about-protected-branches/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[jekyll]: https://jekyllrb.com/
[jenny-duckett]: https://twitter.com/jenny_duckett
[paul-heron]: http://worldofpablo.com/
[pay-leave-for-parents]: https://www.gov.uk/pay-leave-for-parents
[pr-2031]: https://github.com/alphagov/smart-answers/pull/2031
[pr-2032]: https://github.com/alphagov/smart-answers/pull/2032
[pr-2035]: https://github.com/alphagov/smart-answers/pull/2035
[pr-2034]: https://github.com/alphagov/smart-answers/pull/2034
[pr-2036]: https://github.com/alphagov/smart-answers/pull/2036
[pr-2037]: https://github.com/alphagov/smart-answers/pull/2037
[pr-2039]: https://github.com/alphagov/smart-answers/pull/2039
[pr-2040]: https://github.com/alphagov/smart-answers/pull/2040
[pr-2041]: https://github.com/alphagov/smart-answers/pull/2041
[smart-answers]: https://github.com/alphagov/smart-answers
[smartdown]: https://github.com/alphagov/smartdown
[the-birdcage]: http://drafthouse.co.uk/
[tom-stuart]: http://codon.com/
[tpr-auto-enrolment]: http://www.thepensionsregulator.gov.uk/employers.aspx
[webby]: https://github.com/TwP/webby
[week-354-links]: /week-354-links
[week-349-jenkins-merge-commits]: /week-349#other-changes

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-11-05 15:30:00 +00:00
:updated_at: 2015-11-05 15:30:00 +00:00
:page_title: Week 354
