Week 851
========

Week beginning Monday, 5th May 2025.

Monday was a Bank Holiday, so this was another short work week.

It was another busy week on the [Experience CS] project with the [Raspberry Pi Foundation]. The focus has been on making it possible for the Learning Team to start sharing some of the curriculum that they've been putting together. We're using [administrate] (used elsewhere at RPF) to implement a simple content management system for the curriculum-related pages and we've been building out the designs for those pages. We've also integrated the CMS with Google Drive to allow the Learning Team to associate curriculum resources with these pages.

Alongside the curriculum content we've been adding some more example [Scratch] projects and their associated instructions in support of upcoming user testing. At the moment adding these example projects requires more developer involvement than we'd like, so we're planning to add some functionality to the CMS soon to make it easier. We've also tied up some loose ends on allowing users to remix and save Scratch projects which is satisfying.

[Chris L] did some work on jam.coop at the weekend including [switching][jam-commits] background job processing from Sidekiq to [SolidQueue]. I did some [minor upgrades][jam-pr-277] to the AWS CDK stack.

Meanwhile [Chris R] has recently made some more progress on the [RubyForge redirects] front thanks to an ongoing collaboration with [Marty Haught] from [Ruby Central].

As I mentioned [a couple of weeks ago][improving-rails-docs], I opened [this pull request][rails-pr-54765] to add some documentation to Rails about configuring non-primary databases using environment variables. This is useful if you want to deploy a modern [Rails] app with multiple databases to a PaaS like Heroku. I'm pleased to say the pull request has now been merged - my first contribution to Rails [in many a year][my-rails-pull-requests]!

Until next time...

-- James

[Experience CS]: https://experience-cs.org
[Raspberry Pi Foundation]: https://www.raspberrypi.org
[administrate]: https://github.com/thoughtbot/administrate
[Scratch]: https://scratch.mit.edu/
[Chris L]: /chris-lowis
[jam-commits]: https://github.com/freerange/jam-coop/compare/6f0f251e...2f0e19c5
[SolidQueue]: https://github.com/rails/solid_queue
[jam-pr-277]: https://github.com/freerange/jam-coop/pull/277
[Chris R]: /chris-roos
[RubyForge redirects]: https://github.com/freerange/rubyforge-redirects
[Marty Haught]: https://www.linkedin.com/in/martyhaught
[Ruby Central]: https://rubycentral.org/
[improving-rails-docs]: /week-848#improving-rails-docs
[rails-pr-54765]: https://github.com/rails/rails/pull/54765
[Rails]: https://rubyonrails.org/
[my-rails-pull-requests]: https://github.com/rails/rails/pulls?q=is%3Apr+author%3Afloehopper

:name: week-851
:updated_at: 2025-05-09 10:30:53.353758000 +01:00
:created_at: 2025-05-09 10:30:53.353758000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 851
:extension: markdown
