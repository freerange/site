Week 905
========

While James takes a break on the [Isles of Scilly](https://en.wikipedia.org/wiki/Isles_of_Scilly) Chris and I continue working on our project with Good Machine and the NHS.

As a team we're focussing on what we're calling "performance" issues but which also include issues of scaling and realiability of the childhood vaccination service. This week we spent some more time adding logging to various parts of the service that process CSV uploads and overnight jobs. We then wrestled with Grafana and its log processing language to turn those log events into tables (and the occasional graph).

Being able to see log events and metrics associated with these tasks allowed us to fairly quickly spot a couple of problems - firstly that some jobs were queuing up causing longer-than-usual wait times for users, and secondly a long-running job that would occasionally fail overnight, causing it to be retried by [Sidekiq](https://sidekiq.org/) and finish later than expected. We ended the week starting to work on fixes for these issues - in particular by leaning on the principle of making background jobs as simple as they can be (even if that looks "inefficient") and [relying on Sidekiq to handle horizontal scaling](https://github.com/sidekiq/sidekiq/wiki/Best-Practices#3-embrace-concurrency).

I've spent today catching up on some company admin. I've also been trying out OSCAR, a tool developed by fellow [Space4](https://space4.tech/) office mates [illuniate tech](https://www.illuminatetech.co.uk/), to complete an [Online Safety Act](https://www.legislation.gov.uk/ukpga/2023/50/contents) risk assessment for [jam.coop](https://jam.coop). It's very well thought-out and has saved me a bunch of head-scratching.

Have a good weekend!

:name: week-905
:updated_at: 2026-05-22 14:48:43.228858816 +01:00
:created_at: 2026-05-22 14:48:43.228855820 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 905
:extension: markdown
