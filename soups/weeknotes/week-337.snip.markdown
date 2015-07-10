Week 337
========

Aloha, folks.

Week 337 was shorter than normal for me as I jetted off to New York on Thursday evening for a long weekend.

We spent Monday to Thursday working on [Smart Answers][] and [James][] spent Friday working on GFR.

## Smart Answers

We're down to three developers on Smart Answers from this week. [Ben Janecke][] finished up and headed back to Cape Town last week after four months or so on the project.

[Tadas][] continues to do a great job of handling all the ongoing business requests while James and I attempt to make improvements without making his life any harder than it needs to be.

The bulk of our work was in the conversion of more Smart Answers to use ERB templates, taking us up to a total of 17 converted by the end of the week.

We managed to add regression tests for two redundancy-pay related flows (calculate-your-redundancy-pay and calculate-employee-redundancy-pay). These had been on hold while they had changes out for fact check so it was good to get the changes deployed and regression tests added.

James did a great job of reworking one of the log lived pull requests he wrote about last week. It's in a new [pull request][PR 1777] and is currently out for fact check. I'm hoping we'll hear back about this soon as this is the final Smart Answer that we're yet to add regression tests to.

We've started talking about creating a new Smart Answer for HMRC. This'll give us an opportunity to test our theory about how Smart Answers should be structured, and hopefully give us an insight into the communication between the GDS content team and the subject matter experts in the department.

I had a quick look at the old [Smartdown fact check tool][factcheck-rake-task] that was built. I'm planning to talk to the content team about it to see whether it'd be useful to replicate this format for all the other Smart Answers.

I spent some time spiking on the addition of regression tests to Smartdown flows. Our current thinking is that we'll migrate these Smartdown flows to the standard Smart Answer Ruby version so we'll want regression tests in place to allow us to do that.

## GFR

It was fairly quiet on the GFR front this week. I think the main thing of note was James's investigation into the implication of GFR paying into our personal pensions. James is pretty confident he understand what we should be doing and has updated our Salary payment instructions accordingly.

Until next time, folks.

-- Chris

[Ben Janecke]: https://github.com/BenJanecke
[factcheck-rake-task]: https://github.com/alphagov/smart-answers/blob/master/lib/tasks/smartdown_generate_factcheck.rake
[James]: /james-mead
[PR 1777]: https://github.com/alphagov/smart-answers/pull/1777
[Smart Answers]: https://github.com/alphagov/smart-answers
[Tadas]: https://github.com/tadast

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-07-10 15:00:00 +01:00
:updated_at: 2015-07-10 15:00:00 +01:00
:page_title: Week 337
