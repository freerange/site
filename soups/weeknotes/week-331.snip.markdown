Week 331
========

Howdi, folks.

We continue to divide our week between [GDS][] and GFR, spending Monday to Thursday working on [Smart Answers][] for GDS and Friday working for ourselves.

## Smart Answers

[James][] continued to improve the Smart Answers DSL by adding options to parse value questions as floats. This allows us to declare the type of data we're expecting and to [DRY][] up a number of the Smart Answers that were each having to parse responses.

James replaced some of our custom rake test tasks with the standard Rails test tasks. In doing so, we realised that Rails now runs all tests together, where it would previously run unit tests before anything else. James points out that it's desirable to run unit tests separately as they're supposed to run quickly and give you some early warning as to whether other tests are going to fail. There's no point continuing to run the more expensive integration tests if the unit tests are failing.

James made some changes to the way the Smart Answers were being loaded so that we can get code coverage reports from them. The Smart Answer DSL was being `eval`'d but that prevents us from generating coverage reports. James has moved the DSL in to Smart Answer specific classes which we can `require` in order to generate coverage reports.

I've never really used code coverage tools before (we tend to test drive the code we write) but they came in really useful on this project as they've allowed us to start adding a fairly comprehensive set of regression tests.

I started the week by opening a [pull request containing an example set of regression tests][pr-1642]. We had some good discussion on the pull request itself and later on in-person, after which we agreed to go ahead with the regression testing approach.

In order to create the regression tests, we're inspecting the Smart Answer to generate a set of responses to the questions it contains. We're automatically generating responses for some of the questions (e.g. multiple choice) and manually adding others (e.g. questions asking for household income). We use these responses to exercise the Smart Answer, and use the code coverage report to ensure we're reaching all branches in the code. Once we're happy that the Smart Answer is being exercised fully we save the generated outcome HTML so that we can make changes and be confident that we haven't broken anything.

There were some concerns about this approach (see the discussion on the pull request if you're interested) but in the end we think the benefits outweight the potential problems and we're fairly confident that these tests will be relatively shortly lived while we make some of the larger changes that we're planning.

The main purpose of these regression tests is to allow us to switch from YAML to ERB templates. We believe that ERB templates will have some of the advantages of [Smartdown][] but without the overhead of maintaining our own templating like language. [Pull request 1648 contains an example of switching student-finance-calculator from using YAML to ERB][pr-1648].

Before merging the first set of regression tests, I spent a short while investigating the addition of such tests to the complex [Marriage Abroad Smart Answer][]. This Smart Answer contains questions that allow you to choose from a list of countries. Testing every combination would be impractical so I wanted to see whether it'd be possible to reduce the number of combinations while still retaining close to 100% code coverage. While I didn't finish this exercise, I got far enough to convince myself that it would be possible.

Working with our new ERB templates made me realise that I didn't understand how the various trim modes worked. I ended up [creating a number of tests to try to demonstrate the behaviour][erb-trim-modes] and think I now have a better idea about how they work.

One unexpected, but beneficial, side effect of switching from YAML to ERB was the speed up of the newly added regression tests: I saw a [reduction of around 60 seconds (from 110s to 50s) after making the change][yaml-to-erb-switch]!

I spent a short while trying to run [Rubocop][] as part of our build process. We already have Rubocop in the project but it's not currently configured to run. I didn't quite get it running but I'm pretty keen so I think I'll have another play soon. One thing I hadn't seen before was Rubocop's ability to automatically fix a number of violations. That definitely could've saved me some time in the past when I've gone through manually fixing some of the more trivial violations.

## GFR

We had a slightly more relaxed Friday after the fairly intensive week working on Smart Answers. I'm enjoying the work but it's definitely leaving me feeling quite tired, and without the time/energy to focus on GFR things during the week.

We spent most of the day ticking off some admin tasks that had built up during the week.

James and I had an enjoyable lunch with [Tom T][], [Tom S][], [Ben G][] and [Chris L][] at the Strongrooms. The sun drew us out but we weren't quite early enough to beat everyone else with the same idea and ended up sitting in the shade.

Chris L spent the afternoon in our office and managed to publish [Web Audio Weekly 36][].

The only real thing of note I managed to do was to update our [Checking our Annual accounts page][]. This had been hanging over since we completed our annual accounts at the beginning of the year so it was great to finally get it done.

We finished up Friday afternoon at the [Shoreditch Works][] Mixer. We spent some time chatting to [Ben][] and [Sam][] of [Fun and Plausible][]. Although we only sit a few metres from each other, our paths hadn't really crossed so it was good to finally meet them properly.

Until next time.

-- Chris

[Ben]: http://benfields.net/
[Ben G]: https://twitter.com/beng
[Checking our Annual accounts page]: https://github.com/freerange/site/blob/master/soups/wiki/checking-our-annual-accounts.snip.markdown
[Chris L]: http://blog.chrislowis.co.uk/
[DRY]: http://en.wikipedia.org/wiki/Don%27t_repeat_yourself
[erb-trim-modes]: https://gist.github.com/chrisroos/b80bb493db20b4302888.
[Fun and Plausible]: http://funandplausible.solutions/
[GDS]: https://gds.blog.gov.uk/
[James]: /james-mead
[Marriage Abroad Smart Answer]: https://www.gov.uk/marriage-abroad
[pr-1642]: https://github.com/alphagov/smart-answers/pull/1642
[pr-1648]: https://github.com/alphagov/smart-answers/pull/1648
[Rubocop]: https://github.com/bbatsov/rubocop
[Sam]: http://samphippen.com/
[Shoreditch Works]: http://shoreditchworks.com/
[Smart Answers]: https://github.com/alphagov/smart-answers
[Smartdown]: https://github.com/alphagov/smartdown
[Tom S]: https://twitter.com/tomstuart
[Tom T]: https://twitter.com/tomtaylor
[Web Audio Weekly 36]: http://blog.chrislowis.co.uk/waw/2015/05/22/web-audio-weekly-36.html
[yaml-to-erb-switch]: https://github.com/alphagov/smart-answers/commit/1837c0c7584cfc70f89c6dafd632fee4a53b8929

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-05-29 15:58:00 +01:00
:updated_at: 2015-05-29 15:58:00 +01:00
:page_title: Week 331
