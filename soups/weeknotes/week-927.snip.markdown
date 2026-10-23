Week 927
========

Hello! I'm currently sheltering at home from the wind and rain that [Storm Austen](https://en.wikipedia.org/wiki/2026%E2%80%9327_European_windstorm_season#Storm_Austen_(Luise)) is bringing.

We've had another busy couple of weeks working on [Mavis](https://www.manage-vaccinations-in-schools.nhs.uk/). We've been:

- Fixing hard-to-debug configuration problems with our [Sentry](https://sentry.io/) integration that meant we were omitting some context from some of the events we were sending.

- Improving some of the flakey end-to-end tests mentioned in [week-925](/week-925).

- Continuing to work on tooling to automatically generate a report of our rspec tests, also mentioned in [week-925](/week-925).

- Attacking the problem of automatically hiding sensitive information stored in the app irrespective of how that information is rendered.

- Adding [Grafana](https://grafana.com/) dashboards.

- Investigating the cause of some of the noisier exceptions in Sentry.

- Surprised that using [ActiveRecord::SessionStore](https://github.com/rails/activerecord-session_store) with its JSON serialiser and backed by a PostgreSQL JSONB data column stores the data as a string of JSON rather than as JSON (the serializer has to be set to `:null` to get it to work as I expected).

While not working on Mavis we've been:

- Having quite a few different business development discussions. Thanks to [Chris](/chris-lowis) in particularly for leading on these.

- Continuing to explore migrating away from 1Password. [James](/james-mead) and Chris have been trialling [Bitwarden](https://bitwarden.com/) and it seems to be ticking the boxes so far.

- Discussing how/whether to grow GFR in light of some of the possible business opportunities. I think we're all keen on the idea but it's always felt like quite a daunting prospect and never the right time. Maybe this time will be different...

Until next time.

-- Chris

:name: week-927
:updated_at: 2026-10-23 13:21:24.923198764 +01:00
:created_at: 2026-10-23 13:21:24.923198128 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 927
:extension: markdown
