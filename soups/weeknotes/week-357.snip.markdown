Week 357
========

[James][james-mead] and I worked on [Smart Answers][smart-answers] from Monday to Thursday, and spent Friday catching up with some GFR work.

## Smart Answers

We agreed to work on a couple of business as usual changes in [Erik][erik-eide]'s absence, although they didn't take too long.

I spent most of my time continuing to convert Smart Answers to use `next_node` with a block. We finished the week having them all converted which paves the way for removing the predicate functionality from the codebase.

I made a [small change to the script we use to deploy branches Heroku][pr-2097] so that it's easier to have multiple pull requests out for factcheck at one time.

I [improved last week's spike into failing fast when we encounter missing methods on the `State` object][pr-2099] and got that merged into master.

I started working on some documentation changes to help developers new to the project to get up to speed, including [updating the README to follow the GOVUK guidelines][pr-2152].

Based on his preparatory work last week, James [added the ability to use ERB templates for questions][pr-2103]. He added the functionality in such a way that makes it possible to convert individual Smart Answers, and also created a script to automate most of the conversion work. This was great as it meant that it was _relatively_ straight forward to convert each Smart Answer individually, which James did throughout the week.

We finished the week with all but one Smart Answer having been converted to use ERB templates. This is great and paves the way for us to remove the code around rendering questions using content stored in i18n yaml files.

## GFR

James wrote the [notes about our 18th Show and Tell][show-and-tell-18].

I wrote [notes for week 356][week-356] (although I only actually published them today!).

I wrote a [blog post about some confusing (to me) behaviour of `git log`][git-log-blog-post].

James headed off early on Friday to prepare for his ski trip.

Until next time.

-- Chris

[erik-eide]: https://github.com/erik-eide
[git-log-blog-post]: http://chrisroos.co.uk/blog/2015-11-20-confusing-git-log-behaviour
[james-mead]: /james-mead
[pr-2097]: https://github.com/alphagov/smart-answers/pull/2097
[pr-2099]: https://github.com/alphagov/smart-answers/pull/2099
[pr-2103]: https://github.com/alphagov/smart-answers/pull/2103
[pr-2152]: https://github.com/alphagov/smart-answers/pull/2152
[show-and-tell-18]: /show-and-tell-18
[smart-answers]: https://github.com/alphagov/smart-answers
[week-356]: /week-356

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-11-27 13:30:00 +00:00
:updated_at: 2015-11-27 13:30:00 +00:00
:page_title: Week 357
