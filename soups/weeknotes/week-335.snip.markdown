Week 335
========

Aloha, folks.

We mixed things up ever so slightly for week 335. We spent Monday[^1] and Tuesday working on GFR, and Wednesday to Friday on [Smart Answers][].

## GFR

James ticked off a few admin tasks on Monday before meeting up with LJ from Alliants. We [met LJ back in week 318](/week-318#meetings) and he got in touch again to see whether there was anything we can do together. James headed over to their swanky offices at [We Work][] and they spent some time sharing stories of what they've been up to.

## Credit Unions and Ethical Banking

Tuesday was mostly spent at a workshop about Ethical Banking and Credit Unions. The workshop was organised by [Josh Russell][] and he asked if we wanted to be involved after [our meeting in week 332](/week-332#gfr). We're still very interested in the idea of credit unions and were only too happy to get involved. The workshop was facilitated by Jonty of [Hactar][] and involved 8 of us working through a series of exercises. We ended up with walls of post-it notes that Josh has agreed to add to Trello. The hope is that this exercise will help Josh understand where to focus his efforts. We're looking forward to hear about what happens next!

## Smart Answers

We spent most of our time continuing to add regression tests to the existing Smart Answers. The good news is that we finished the week having added regression tests to all but three of the Smart Answers! And the three that we haven't added them to yet are because they're still out for fact check.

I spent Friday afternoon making use of our regression tests by starting to convert Smart Answers to use ERB templates.

James noticed that we were setting up the same WebMock stubs before every individual regression test which was having a noticeable effect on the time taken to run the tests. [James changed our test setup to only create the stubs once][pr-1725], which made a pretty big dent in the time taken to run our tests.

James spent some time on Friday rebasing some of the long-lived [Fact Check branches](/week-300#versioning). As is somewhat inevitable with long-lived branches, they'd diverged quite a bit from master and James had an unenviable job to bring them back inline. We've agreed that we really need to keep these these sort of branches up to date in future.

Until next time.

-- Chris

[^1]: I actually left James to hold the GFR fort on Monday while I spent it sitting in the sun outside a pub after a friend's wedding. Thanks, James!

[Hactar]: http://hactar.is/
[Josh Russell]: http://joshrussell.com/
[pr-1725]: https://github.com/alphagov/smart-answers/pull/1725
[Smart Answers]: https://github.com/alphagov/smart-answers
[We Work]: https://www.wework.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-06-26 15:45:00 +01:00
:updated_at: 2015-07-02 09:30:00 +01:00
:page_title: Week 335
