Week 333
========

Howdi, folks.

We spent four days working on Smart Answers (2 days working at Aviation House and 2 days in our office). Friday was spent working on GFR.

## Smart Answers

We're now in our eighth week of working on Smart Answers. In some ways it feels as though the time has passed really quickly, but when I think about what we've managed to do it seems about right.

I finished off, and [merged][commit-458e70], the work we started last week to speed up the regression tests. This is great as we were already starting to feel the pain of a slow test suite caused by all the regression tests we've added.

I [added a regression test to ensure that we're exercising all the nodes of a Smart Answer][commit-390e6c]. In most cases we'd hopefully see these unused nodes in the coverage reports, but some of the nodes don't have code that's executed while the Smart Answer is being used so the coverage report doesn't help us with those.

We continued to add more regression tests throughout the week. We've now got regression tests for 17 of the 35 published Smart Answer flows, and the repository is now 92% HTML! The addition of the regression tests is more painful for some Smart Answers than others. In general we feel as though we're getting better at adding them, though. We're trying hard to resist the temptation to improve the existing code in order to make the regression tests easier to add: That will have to wait until we have the tests in place.

We made some more improvements to the regression test tools. We noticed a problem that was caused by our test data generation scripts running in a  different environment to our regression tests. We've attempted to rectify that by bringing the two in to line.

Up until this week, we'd been generating the code coverage reports when running the regression tests that exercise the Smart Answers through the controllers. This could be quite time consuming so we were pretty happy to realise that we could actually generate the code coverage reports as part of the, much faster, step before running the regression tests. This allows us to get feedback, and make changes based on that feedback, much quicker than before.

We spent about 30 minutes chatting to Gwen and Liz from the content team. We updated them on what we've been up to and discussed some other things that we might be able to do to make their work easier. It sounds as though there might be an opportunity to make it easier for them to help the departments fact check the Smart Answers they're responsible for. There's a Rake task that generates a table of fact check data for a single Smartdown Smart Answer. It looks as though we might be able to do something similar using the data we're creating as part of our regression tests.

James and I created a couple of Trello boards to keep on top of the various things we're doing. We're using one of the boards to keep track of a number of things we're planning to do, and the other to keep track of the state of the exsiting Smart Answers as we add regression tests and switch them to using ERB.

## GFR

TODO.

-- Chris

[commit-390e6c]: https://github.com/alphagov/smart-answers/commit/390e6c99a026787cc98ef4d7db1507a2ce76ca59
[commit-458e70]: https://github.com/alphagov/smart-answers/commit/458e7029229b11f003a85ee8ea46572660df4917

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-06 10:45:00 +01:00
:updated_at: 2015-05-06 10:45:00 +01:00
:page_title: Week 333
