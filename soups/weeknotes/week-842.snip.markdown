Week 842
========

Week beginning Monday, 3rd March 2025.

The week was dominated by our work on the project with the Raspberry Pi Foundation. [Chris L][] has continued to transform Mariam's designs into HTML pages with a particular focus on the landing page and related informational pages. He's also participated in a lot of discussions about on-boarding flows.

[Chris R][] and I have continued to consolidate a bunch of work from earlier spikes into a more production-ready state. Unfortunately Chris R's daughter has been unwell this week, so he's had extra childcare responsibilities, but we've managed to do quite a bit of pairing which I've enjoyed. Although we did have one day where [Pop][] wasn't working and we had to resort to Google Meet which wasn't ideal.

I suspect this might have been the week before, but the three of us spent some time getting an end-to-end [Rails system spec][] working. Initially we used the [Cuprite driver][] for [Capybara][], but we wanted to interact with the browser's file chooser and so ended up switching to the [Playwright driver][] which now seems to be [supported][rails-playwright-support] in Rails. We're testing a core user journey albeit with a sub-optimal user experience including various "out-of-band" actions, but it feels good to have this in place so that we can iteratively improve the pain points that this has helped identify.

There's been quite a bit of wrangling with our [GitHub Project][] this week to try to align it with the way we're working and make it more useful for the team. It's always a challenge to replicate the simplicity of a physical board with post-it notes for a remote team, but I think we're getting there.

Chris L and I had a call with [Nesta][] to find out more about a request for proposal they had sent us.

Chris L met up with a couple of former FutureLearn colleagues this week which he enjoyed.

My broadband was restored on Monday which was a big relief. Since I only get a poor 4G mobile signal at home, I'd resorted to an LTE router which provided just enough bandwidth for me to work effectively. I'm very glad to be back on a proper connection!

We had an issue with a [Mission Patch][] order yesterday, because [Stripe][] has changed the structure of their [webhook][stripe-webhooks] payloads. I was quite annoyed with myself about this, because we have system tests in place that run against the Stripe test environment, we only run the tests when we push commits to the repo. I think we probably need to have a scheduled build that runs regularly to catch these sorts of issues. Anyway, the problem has been fixed and the order has been fulfilled.

Until next time.

-- James

[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Pop]: https://pop.com/
[Rails system spec]: https://rspec.info/features/7-1/rspec-rails/
[Cuprite driver]: https://cuprite.rubycdp.com/
[Capybara]: https://teamcapybara.github.io/capybara/
[Playwright driver]: https://playwright-ruby-client.vercel.app/docs/article/guides/rails_integration
[rails-playwright-support]: https://github.com/rails/rails/pull/48950
[GitHub Project]: https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/about-projects
[Nesta]: https://www.nesta.org.uk/
[Mission Patch]: https://mission-patch.com/
[Stripe]: https://stripe.com/
[stripe-webhooks]: https://docs.stripe.com/webhooks

:name: week-842
:updated_at: 2025-03-07 11:47:00.000000000 +00:00
:created_at: 2025-03-07 11:47:00.000000000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 842
:extension: markdown
:draft: true
