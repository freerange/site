Week 925
========

Hello from a very Autumnal London 👋 🍂

We've continued to work on [Mavis](https://www.manage-vaccinations-in-schools.nhs.uk/start) this week, with a bit of a focus on the regression test pack that's used as part of the assurance process.
There are a number of "flakey" (i.e. intermittently failing) tests that add unnecessary friction to the development and delivery process that we're keen to fix.
We've so far discovered that at least one of the intermittent failures (and maybe more) is caused by the timing of a background job that has to execute.
We can brute force a fix by adding a delay to the tests but ideally we'd like to come up with some other, user-detectable, method of determining whether the system is in the expected state.

James has also spent some time experimenting with a [custom rspec formatter](https://rspec.info/features/3-13/rspec-core/formatters/custom-formatter/) to extract information from our [Feature specs](https://rspec.info/features/8-0/rspec-rails/feature-specs/feature-spec/) that can be used by the assurance team to complement the regression test pack output.

I was surprised by a couple of things in Rails this week:

When using [Optimistic Locking](https://api.rubyonrails.org/classes/ActiveRecord/Locking/Optimistic.html), [`ActiveRecord::Persistance#update_column`](https://api.rubyonrails.org/classes/ActiveRecord/Persistence.html#method-i-update_column) adds the `lock_version` to the `where` clause in the generated SQL which means that the update can silently fail if the object is stale.

Calling [`ActiveRecord::Persistence#update_attribute`](https://api.rubyonrails.org/classes/ActiveRecord/Persistence.html#method-i-update_attribute) saves all dirty attributes on the object as well as the attribute in the argument.
The API docs describe this behaviour, and it makes sense having thought about it, but I was still surprised when I first encountered it.

I've been doing a bit of gardening of our company wiki today which has been quite satisfying.

Because of [reasons](https://itsfoss.com/news/1password-omarchy-pledge/), James and Chris have spent some time today exploring alternatives to 1Password as our company password manager.
Assuming any such migration goes OK then I'll probably move our family account away too.

Until next time.

-- Chris

:name: week-925
:updated_at: 2026-10-09 15:43:18.701053046 +01:00
:created_at: 2026-10-09 15:43:18.701052478 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 925
:extension: markdown
