Week 333
========

Howdi, folks.

We spent four days working on [Smart Answers][] (2 days working at Aviation House and 2 days in our office). Friday was spent working on GFR.

## Smart Answers

We're now in our eighth week of working on Smart Answers. I was quite surprised to realise we've been there that long, but then when I think about what we've managed to do I guess it seems about right.

I finished off, and [merged][commit-458e70], the work we started last week to selectively run the regression tests. This is great as we were already starting to feel the pain of a slow test suite caused by all the regression tests we've added.

I [added a regression test to ensure that we're exercising all the nodes of a Smart Answer][commit-390e6c]. In most cases we'd hope to see these unused nodes in the coverage reports but this test helps us find unused outcome nodes that don't contain any code.

We continued to add more regression tests throughout the week. We've now got regression tests for 17 of the 35 published Smart Answer flows, and the repository is now 92% HTML! The addition of the regression tests is more painful for some Smart Answers than others, although in general we feel as though we're getting better at adding them. We're trying hard to resist the temptation to improve the existing code in order to make the regression tests easier to add: That will have to wait until we have the tests in place.

We made some more improvements to the regression test tools. We noticed a problem that was caused by our test data generation scripts running in a  different environment to our regression tests. We've attempted to rectify that by bringing the two in to line.

Up until this week, we'd been generating the code coverage reports when running the regression tests that exercise the Smart Answers through the controllers. This could be quite time consuming so we were pretty happy to realise that we could generate the code coverage reports as part of the much faster step before running the regression tests. This allows us to get feedback, and make changes based on that feedback, much quicker than before.

We spent about 30 minutes chatting to Gwen and Liz from the content team. We updated them on what we've been up to and discussed some other things that we might be able to do to make their work easier. It sounds as though there might be an opportunity to make it easier for them to help the departments fact check the Smart Answers they're responsible for. There's an existing Rake task that generates a table of fact check data for a single Smartdown Smart Answer, and it looks as though we might be able to generate something similar using the data we're creating as part of our regression tests.

James and I created a couple of Trello boards to keep on top of the various things we're doing. We're using one of the boards to keep track of a number of things we're planning to do, and the other to keep track of the state of the exsiting Smart Answers as we add regression tests and switch them to using ERB.

## GFR

Most of Friday was spent ticking off some GFR admin tasks and getting up to date on our week notes for the last few weeks.

We had an enjoyable lunch in the cafe with [Tom S][], [Ben G][] and [Chris L][]. Chris joined us in the office for the afternoon and published [issue 38 of his Web Audio Weekly][waw-38].

We finished the day a little earlier than usual and joined the crowds of people standing outside the pub in the beautiful sunshine.

Until next time.

-- Chris

[Ben G]: https://twitter.com/beng
[Chris L]: http://blog.chrislowis.co.uk
[commit-390e6c]: https://github.com/alphagov/smart-answers/commit/390e6c99a026787cc98ef4d7db1507a2ce76ca59
[commit-458e70]: https://github.com/alphagov/smart-answers/commit/458e7029229b11f003a85ee8ea46572660df4917
[Smart Answers]: https://github.com/alphagov/smart-answers
[Tom S]: http://codon.com/
[waw-38]: http://blog.chrislowis.co.uk/waw/2015/06/05/web-audio-weekly-38.html

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-06 10:45:00 +01:00
:updated_at: 2015-05-06 10:45:00 +01:00
:page_title: Week 333
