Week 333
========

Howdi, folks.

Four days on Smart Answers (2 days at AH, 2 days at GFR). Friday at GFR.

## Smart Answers

We're in our eighth week of working at GDS.

Merged branch to speed up regression tests - https://github.com/alphagov/smart-answers/commit/458e7029229b11f003a85ee8ea46572660df4917

Add test to ensure we're exercising all nodes of a smart answer - https://github.com/alphagov/smart-answers/commit/390e6c99a026787cc98ef4d7db1507a2ce76ca59

James investigated a potential XSS issue.

Moved regression test outcome html to folders representing responses - https://github.com/alphagov/smart-answers/commit/0e518048ec9e7e73811bc5b598b36202fae80f99

Continued to add more regression tests throughout the week. Regression tests added for 17 of the 35 published Smart Answer flows. The repo is now 92% HTML!

Improved the regression tests:
  * generation scripts should run with same the constraints as the tests (time fixed and world location stubbed)
  * Realised that we could generate the coverage report at the point we're exercising the flow to generate the expected results. This is much quicker than generating it at the point we're running the regression tests and storing the output html.

Met with some people from the content team to give them an update and to work out what else we might be able to do to help them in their work. Fact checking - we think we'll be able to use some of the data we're creating for the regression tests to produce tables of data that help them during the fact check process. Similar to the work that Camille did on one of the Smartdown tools.

James and I created Trello boards to track the progress of Smart Answers through the various states that we want to move them, and to track some of the ideas we have for more improvements.

## GFR

TODO.

-- Chris

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-06 10:45:00 +01:00
:updated_at: 2015-05-06 10:45:00 +01:00
:page_title: Week 333
