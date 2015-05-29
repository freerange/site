Week 332
========

Howdi, folks.

Short week due to bank holiday monday. Three days on Smart Answers for GDS and Friday working for ourselves.

## Smart Answers

Continued adding regression tests and switching a number of smart answers to use ERB templates. After switching a few to use ERB templates we realised that it's probably more important to focus on getting all the regression tests in place so that's what we've been doing.

Focussed on improving the performance of the regression tests. They take quite some time to run so we've been coming up with ways of only running them when something's changed. I've got a pull request that contains an approach to this problem - https://github.com/alphagov/smart-answers/pull/1667. We construct a set of files that are required by the smart answer and hash their contents. By checking these hashes when we start running the tests, we can work out whether the source files have been updated, and therefore whether we need to run the tests.

Continued to add regression tests for more of the smart answers. Ran into a problem where a filename of some of the generated output is too long! Started to investigate storing the rendered outcomes in directories matching the responses, as they appear on the website, e.g:

https://www.gov.uk/student-finance-calculator/y/2014-2015/eu-part-time/3000.0

stored in 2014-2015/eu-part-time/3000.0.html instead of 2014-2015-eu-part-time-3000.0.html

James was able to get rid of a whole chunk of unused code, which is great! - 927286cf17eff431a0ff33fb77e9146107c50447

James improved the regression tests so that a test fails if the content of the rendered outcome directory has changed after running the tests - 70d55fa10fdcda77fcffc76bb59cdc1e581288eb

The repo is currently 85% html!

## GFR

Our plans were slightly changed when Tadas reported an error with Smart Answers. We spent some time investigating before realising that it was caused by an unrelated service.

Met with Josh. Josh has started exploring the credit union space and wanted to chat to us about the work we've done. He's got some great ideas and I really hope he manages to make progress with some of them. It got us excited about the opportunities in this space.

Until next time.

-- Chris

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-29 16:16:00 +01:00
:updated_at: 2015-05-29 16:16:00 +01:00
:page_title: Week 332
