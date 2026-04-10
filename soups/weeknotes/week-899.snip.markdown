Week 899
========

Week beginning Monday 6th April.

We started a new project this week. We've teamed up with our friends at [Good Machine](https://www.goodmachine.team/) to help them continue to deliver the [Manage vaccinations in schools (Mavis)](https://www.manage-vaccinations-in-schools.nhs.uk) project for [NHS Digital](https://digital.nhs.uk/).

Mavis is a tool used by School Age Immunisation Service teams to administer vaccinations to children in schools and other settings.

On Tuesday we spent the day with the Good Machine team in their office in Borough getting to know everyone and having a tour of [the code](https://github.com/NHSDigital/manage-vaccinations-in-schools).

For the rest of the week we've been getting the development environment set up on our machines, working out how to write a particular end-to-end test in [the Python/Playwright-based QA suite](https://github.com/NHSDigital/manage-vaccinations-in-schools-testing/), and looking at a particular SQL query that is causing some performance issues in production.

I switched to developing on Ubuntu earlier this year and it's mostly been a pretty smooth experience. This project is [set up](https://github.com/NHSDigital/manage-vaccinations-in-schools/blob/main/.tool-versions#L6) to use [mise](https://mise.jdx.dev/) and [its PostgreSQL plugin](https://github.com/mise-plugins/vfox-postgres) to install the correct version of PostgreSQL on developer machines.

I couldn't seem to get PostgreSQL v17.2 to compile using the default GCC toolchain on Ubuntu so instead decided to run the appropriate version of PostgreSQL in a Docker container using Docker Compose. I've done [something similar](https://github.com/freerange/jam-coop/blob/main/docker-compose.yml) in Jam and so far the combination of Dockerised database,  but with Ruby, Rails, gems and other dependencies managed by mise on the host machine works well. 

mise has a handy [`disable_tools`](https://mise.jdx.dev/configuration/settings.html#disable_tools) option that I've added to my `mise.local.toml` to disable the PostgreSQL plugin - this way I can continue to easily keep up to date with any upstream changes to the development setup.

As is customary ([and somewhat automated](https://github.com/freerange/site/blob/9e2741c1992ab8e26c3ed6d79a108952e0056017/app/helpers/application_helper.rb#L64-L75)) We celebrated [CSS Naked Day](https://css-naked-day.org/) on Thursday!

Until next time.

-- Chris

:name: week-899
:updated_at: 2026-04-09 21:35:42.447995000 +01:00
:created_at: 2026-04-09 21:35:42.447994000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 899
:extension: markdown
