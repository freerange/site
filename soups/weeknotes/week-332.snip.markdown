Week 332
========

Howdi, folks.

Week 332 was shorter than normal due to the bank holiday on Monday. We spent three days working on Smart Answers and Friday catching up on GFR business.

## Smart Answers

We're continuing to add regression tests and have started switching a number of smart answers to use ERB templates. Having switched three Smart Answers to use ERB templates we realised that it's probably more important to get all the regression tests in place first. Having all the regression tests in place will give us confidence to update individual Smart Answers (e.g. switch from YAML to ERB) and to change some of the underlying code that may affect all Smart Answers. The continued addition of regression tests mean that the repository is now 85% html!

We spent some time investigating improvements to the performance of the regression tests. We're currently running these tests as part of the main test suite and each additional Smart Answer that we add tests for increases the time of the build. We investigated running the tests in parallel before switching our efforts toward [only running the tests for a Smart Answer when that Smart Answer's source files had changed][PR-1667]. We do that by recording a hash of the contents of the files that are required by each Smart Answer. If the file contents change then the hash will no longer match and we know that we need to run the regression tests. Having tests that don't run all the time feels a little strange but I think it's probably a good compromise in this instance. Especially as we're hoping to remove these regression tests as soon as they've served their purpose.

I was forced to make a change to the way we were storing the rendered outcome HTML after running into a problem with a filename that was too long. We were storing all the generated outcomes in a single directory, with the response information stored in the filename. Take, for example, the following Smart Answer outcome URL: [https://www.gov.uk/student-finance-calculator/y/2014-2015/eu-part-time/3000.0][outcome-url]. The rendered outcome was previously stored as "2014-2015-eu-part-time-3000.0.html" and, while that's not particularly long, you can see how more responses can end up generating very long filenames. To rectify the problem, I've now switched to mirror the path structure in the URL so that outcome would be stored at "2014-2015/eu-part-time/3000.0.html" instead.

James found, and [removed][commit-927286], a whole chunk of code that wasn't being used. No code is the best type of code :-)

James improved the regression tests by [adding a test that fails if a change to a Smart Answer results in some existing outcomes no longer being reached][commit-70d55f]. While it would've been possible to notice this previously (because `git` would report differences in our output directory) having a test that fails is much better.

## GFR

[Paul][] and [Ben][] joined James and I for our GFR drinks on Wednesday. We'd originally planned a trip to [The Barley Mow][] but the beautiful morning gave us reason us to switch to [The Old Salt Quay][] and it's west facing beer garden. Unfortunately, the weather had deteriorated a bit by the time we got there but that didn't stop us from enjoying some delicious cold beers.

The start of our GFR day on Friday was slightly different than planned as [Tadas][] reported seeing errors in Smart Answers. We spent a short while investigating before realising that the errors were being caused by an external service and the problem with that was already being investigated by some other folks.

We spent about an hour on Friday morning chatting to [Josh Russell][]. We've met Josh a couple of times in the past when he worked at GDS. Josh has moved on from GDS and has started to explore opportunities in the credit union space. We were more than happy to chat about [our experiences][credit-union]. Josh has got some great ideas and his enthusiasm rekindled our interest in the whole area. I'm hoping he manages to make some progress and look forward to hearing what he gets up to.

The remainder of Friday was spent, as is the norm, catching up on various other GFR related tasks that we didn't get to during the week.

Until next time.

-- Chris

[Ben]: https://twitter.com/beng
[commit-70d55f]: https://github.com/alphagov/smart-answers/commit/70d55fa10fdcda77fcffc76bb59cdc1e581288eb
[commit-927286]: https://github.com/alphagov/smart-answers/commit/927286cf17eff431a0ff33fb77e9146107c50447
[credit-union]: http://gofreerange.com/credit-union
[Josh Russell]: http://joshrussell.com/
[outcome-url]: https://www.gov.uk/student-finance-calculator/y/2014-2015/eu-part-time/3000.0
[Paul]: http://po-ru.com/
[PR-1667]: https://github.com/alphagov/smart-answers/pull/1667
[Tadas]: http://codeme.lt/
[The Barley Mow]: http://www.remarkablerestaurants.co.uk/remarkable-restaurants-barley.html
[The Old Salt Quay]: http://www.saltquay-rotherhithe.co.uk/

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-29 16:16:00 +01:00
:updated_at: 2015-05-29 16:16:00 +01:00
:page_title: Week 332
