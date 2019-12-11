Week 568
========

This week was our final week of work with the Audience Agency for 2019. We made a few tweaks to the way we use Trello this week (cutting down the number of columns on the board and regularly reviewing cards together). That combined with getting some user feedback from user testing sessions, and encouraging the team to make decisions on their own without consulting too widely first means that we're starting to settle into a productive rhythm.

James and Chris were mostly working on a feature which brings data from two systems together into a single product. I think this has been built up internally as something that would be extremely difficult - so there's been a lot of excitement to see it start to arrive in the application.

Ben spent some time automating a semi-manual process for extracting survey data. It previously relied on some windows-based macro software that had stopped working, so Ben ported over the scripts to run inside an AWS lambda function. There's no "user-facing" impact of these changes but we've been pushing the team to think about the system as a whole. For a data-driven product, the quality and timeliness of the incoming data is a crucial part of the system, and if we can do some work to make that more reliable and repeatable, not to mention free up some valuable time for our experienced colleagues, the product as a whole will benefit.

I worked on adding continuous integration and deployment to the backend ETL ("extract-transform-load" - a fancy way of saying some cron jobs that load data into our database). I used Github Actions to automate this, which I've been  impressed with. These kind of systems always require quite a lot of trial-and-error to get them working. Github Actions is configured using YAML so it's a case of making a tweak to a branch, pushing it and seeing if it will build. But once I got it working (which involved installing some dependencies on a Ubuntu Docker image, running the tests and deploying via SSH to an EC2 instance) it's been fast and stable.

We ended the week with some lunch with the Audience Agency team at a fancy new [indoor food market](https://www.mercatometropolitano.com/mmarketplace/elephant-and-castle/) near Elephant and Castle.

<!-- add content here -->

:name: week-568
:updated_at: 2019-12-11 15:05:11.403056000 +00:00
:created_at: 2019-12-11 15:05:11.403047000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 568
:extension: markdown
