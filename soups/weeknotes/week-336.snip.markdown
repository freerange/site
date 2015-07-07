Week 336
========

This week we went back to our old routine and worked on Smart Answers from Monday to Thursday, spending Monday & Wednesday at Aviation House and Tuesday & Thursday at GFRHQ. Friday was our usual "GFR" day which we spent at GFRHQ.

## Smart Answers

We spent most of the time converting the flows in the Smart Answers app to use ERB templates instead of the Ruby DSL/I18n/YAML combination. It was at this point that the regression tests really started to earn their keep - they've given us confidence to do the conversion without worrying that we've broken anything. These are the ones we converted:

* [benefit-cap-calculator][pr-1731]
* [calculate-agricultural-holiday-entitlement][pr-1732]
* [calculate-married-couples-allowance][pr-1740]
* [state-pension-topup][pr-1751]
* [towing-rules][pr-1749]
* [uk-benefits-abroad][pr-1736]

A few branches have been out for Fact Check for a while. This has meant that they've become out-of-date with `master`. One branch in particular was particularly problematic, because of a couple of awkward conflicts. The branch pre-dated our [conversion of the flows into classes][make-test-coverage-available-for-smart-answer-flows] and so the changes to the flow were made against a non-indented version of the code. Also the branch contained a couple of commits which refactored the flow's integration test to flatten the deeply nested context blocks. Unfortunately all of this (both flow and integration test changes) conflicted with some [changes to date question ranges and validation][] which had been made in `master`. In an effort to make a start on sorting this out, Chris & I paired on getting the two commits which refactored the integration test [merged into `master`][pr-1733].

Chris came across the first use of `next_steps` content in the `calculate-married-couples-allowance` flow. This is content which appears in a "sidebar" at the top right of the outcome page. You can see an example of it on this [outcome page][next-steps-example]. We chatted about what approach to take and agreed that it was worth trying the idea of using [`ActionView::Helpers::CaptureHelper#content_for`][content-for-documentation]. Up until this point we'd been using up to two templates per outcome, one for the `title` and one for the `body`. Chris came up with a solution which meant that we could [use a single template per outcome][pr-1737] including `content_for` blocks for both `title` and `body`. He then went on to implement provision for a `content_for(:next_steps)` block in the `calculate-married-couples-allowance` flow.

With some help from [David Singleton][] I setup a [nightly Jenkins build][pr-1748] to run all our regression tests. The complete suite takes about an hour to run and because of this a while back we decided to avoid running them all as part of the main CI build - we only run the regression tests for flows whose files have changed. Having this nightly build gives us an extra level of confidence that all the regression tests are passing.

We finally achieved consensus on how to setup analytics to track what percentage of people who start using a Smart Answer make it through to an "outcome" page. Chris implemented this by [firing a Google Analytics event on outcome pages][pr-1742]. It'll be interesting to see an analysis of the data that this produces.

I found a bug in the formatting of "contact boxes". I traced the problem back to a [bug in Govspeak][govspeak-issue-55], but since it's probably going to take a while to agree a fix for Govspeak, I [re-introduced a workaround for the instances which I'd come across in uk-benefits-abroad][pr-1738]. I suspect this bug and/or the workaround is fairly widespread and so I hope to submit a pull request to Govspeak when I get the chance.

In response to a request from [Tekin][], I [disabled the session store][pr-1735] in the Smart Answers app. To be honest I wasn't aware that you have to explicitly disable it, so that was good to find out.

## GFR

On Wednesday we had a maritime edition of our monthly drinks aboard the 209ft steamer, [Tattershall Castle][] which is moored on the Embankment. We spent the first part of the evening enjoying the sunshine (or glimpses of it) on the main deck with pleasant views up the Thames. We were all a bit alarmed to discover the deck was moving beneath our feet, but we soon got our sea legs. Later in the evening we moved down below where it was a bit quieter and we had a table to ourselves.

On Friday morning Andrew Pavord of [FilmFixer][] came to our office for a chat. If you're making a film and you need some locations on which to shoot, Andrew is your man. The app used by most of the London borough councils (and in cities around the world) to manage such applications from film production companies. Andrew isn't technical himself, but he used to be a freelance Location Manager for film production companies so he has a deep knowledge of the problem domain. Anyway, I think it's impressive how he's built up a system and a business in this area using only out-sourced developers.

For lunch we headed back to [Dinerama][] which Chris & I had reconnoitred the previous lunchtime. We claimed our free beer and sizzled in the heat on the top deck with [Chris L][], [Murray][] and [Ben G][].

Chris & I returned to GFRHQ with Chris L for the afternoon and did a bit of admin. I spent much of the afternoon upgrading Rails, Rack, etc on our Linode box in reponse to the recent security advisories. Chris L published [Web Audio Weekly #41][waw-41].

[pr-1731]: https://github.com/alphagov/smart-answers/pull/1731
[pr-1732]: https://github.com/alphagov/smart-answers/pull/1732
[pr-1736]: https://github.com/alphagov/smart-answers/pull/1736
[pr-1740]: https://github.com/alphagov/smart-answers/pull/1740
[pr-1749]: https://github.com/alphagov/smart-answers/pull/1749
[pr-1751]: https://github.com/alphagov/smart-answers/pull/1751
[make-test-coverage-available-for-smart-answer-flows]: https://github.com/alphagov/smart-answers/commit/2910747663879e0b8d42fc32ff9fa41649ab49bf
[pr-1733]: https://github.com/alphagov/smart-answers/pull/1733
[changes to date question ranges and validation]: https://github.com/alphagov/smart-answers/commit/f3eea3b8bf1708294afaa40cabda19e8902b385d#diff-786ed10c1801bf5dbb7a61b5de6f4e8a
[next-steps-example]: https://www.gov.uk/calculate-married-couples-allowance/y/yes/no/1955-01-01/20000
[content-for-documentation]: http://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-content_for
[pr-1737]: https://github.com/alphagov/smart-answers/pull/1737
[pr-1748]: https://github.com/alphagov/smart-answers/pull/1748
[David Singleton]: http://dsingleton.co.uk/
[pr-1742]: https://github.com/alphagov/smart-answers/pull/1742
[pr-1738]: https://github.com/alphagov/smart-answers/pull/1738
[govspeak-issue-55]: https://github.com/alphagov/govspeak/issues/55
[Tekin]: http://tekin.co.uk/
[pr-1735]: https://github.com/alphagov/smart-answers/pull/1735
[Tattershall Castle]: http://www.thetattershallcastle.co.uk/
[FilmFixer]: http://www.filmfixer.co.uk/
[Dinerama]: http://www.streetfeastlondon.com/where/dinerama
[Chris L]: http://chrislowis.co.uk/
[Murray]: http://h-lame.com/
[Ben G]: https://twitter.com/beng
[waw-41]: http://blog.chrislowis.co.uk/waw/2015/06/26/web-audio-weekly-41.html

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-07-03 14:34:00 +01:00
:updated_at: 2015-07-07 14:25:00 +01:00
:page_title: Week 336
