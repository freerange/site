Week 330
========

I'm sorry that these notes are so late. I've struggled to complete them, because I wanted to try to bring you up-to-date with our work at [GDS][] which we weren't able to blog about at the time due to the [pre-election moratorium][].

I find it hard enough trying to remember what I was doing last week, let alone what we were *thinking* weeks ago! I've also been having big problems with my tenses, so please bear with me.

In summary, we continued work on the Smart Answers project for Monday to Thursday with Friday set aside for GFR-related business.

## Smart Answers

In the last [week notes][previous-week-notes] I tried to explain the problem we're trying to solve at GDS. In this week's notes, I'm going to make a start on explaining *what* we've been doing and *why*.

### Versioning

Early on we became aware of the pain involved in making any significant changes to a smart answer in the [Smart Answers app][]. In order to allow Subject Matter Experts (SME) in the relevant department to *Fact Check* the new version, developers were having to make use of a [relatively manual process][smart-answer-making-bigger-changes].

In this process the files making up the smart answer were **copied** to a duplicate set of files suffixed with `-v2` and this copied version of the smart answer was marked as "draft". The latter meant that when the code was deployed, the new version would be available on the *preview* environment, but not on the *production* environment.

A lot of the pain was in merging the changes back into the primary version once the *Fact Checking* process, especially as the latter often takes some considerable time and other changes may have happened in the meantime.

We thought it would make life a lot easier for developers if we could make use of [git branching & merging][] rather than the wholesale copying of files described above. To this end, [Chris built a script][deploy-to-heroku-pr] to allow the [deployment of a branch to Heroku][deploying-to-heroku].

So now a new version of a smart answer can be developed in a branch and deployed to Heroku for *Fact Checking*. Once the SMEs are happy, the branch can be merged into the `master` branch and deployed to *production*.

### Templating Mechanism

The majority of smart answers are implemented using the [Ruby DSL][smart-answers-ruby-dsl] in the Smart Answers app. Not surprisingly this is also where most of the development effort is needed. Unfortunately the Ruby DSL suffers from a number of drawbacks. One such issue is the way Question and Outcome pages are constructed.

These pages are built using a rather unusual mechanism. The [evaluated][kernel-eval] DSL, in the form of an instance of `SmartAnswer::Flow`, builds up a list of `SmartAnswer::PhraseKeys`. These keys are then used to look up the corresponding `Strings` via [Rails' i18n mechanism][Rails i18n] from locale files.  These `Strings` may contain variables to be interpolated from the flow's state, `SmartAnswer::State`. Finally the concatenated `Strings` are processed via the Markdown extension, [Govspeak][], to produce an HTML page.

The main problem with this approach is that the various components of a page are spread out over a number of places in a number of files, it's hard to get a quick idea of what the page will look like by looking at the code, and it's hard to identify the source of specific content when looking at an HTML page.

We feel as if a more traditional templating mechanism would be much more suitable here and indeed this is the approach that's been taken in the newer [Smartdown][] smart answers. To this end, we're in the process of converting the Ruby DSL smart answers to [use ERB templates][smart-answer-example-erb-templates].

We did contemplate converting all the existing Ruby DSL smart answers to use the Smartdown format, but, although we are convinced that the templating aspect of the Smartdown approach is useful, we're less convinced about other aspects of Smartdown.

So rather than committing to a giant migration, we felt it was less risky to move more incrementally in that direction by converting the Ruby DSL smart answers to use ERB templates.

### Regression Tests

Having decided to make the move to ERB templates, we noticed that the existing integration tests do not assert against the rendered outcome templates, but instead they assert against the list of i18n keys which will be used to generate the page. While this has the advantage of being robust against changes in content, the i18n keys will go away in our ERB template implementation, so it won't be possible to assert against them.

In order to have confidence that the move the ERB templates doesn't break anything, we've decided to introduce a set of regression tests. These tests exercise a smart answer and generate the HTML for all its outcome pages. The HTML outcomes are then saved to files and these are added to the git repository so that we can later run the tests again and do a simple diff of the HTML files.

Clearly asserting on the differences in HTML is very brittle, but we think it's the best way to have a set of invariant tests to give us the confidence to make the switch to ERB templates. We definitely don't imagine these tests living in the project in the long term.

The regression tests rely on having a set of possible responses with which to exercise the flow and generate the outcome pages. For multiple choice questions this is relatively easy, because we can just use all the possible responses, but with questions requiring responses like a date, an integer or a country, including *all* the possible responses would make the tests prohibitively slow.

So we decided to make use of the [Simplecov][] code coverage tool and inspection of the flow logic to select more minimalist sets of responses which still exercise all the reachable code. Unfortunately the fact the flow DSL code is executed [using `Kernel#eval`][smart-answer-flow-eval] meant that no test coverage data was available.

We addressed this by [moving the DSL code for each flow into an instance method][make-test-coverage-available-for-smart-answer-flows] on a subclass of `SmartAnswer::Flow`.

While coming up with a suitable set of responses with which to exercise each flow is necessarily a somewhat manual process, we think these tests will also be useful when we come to refactor the flow logic itself - something I'm sure we'll write about in future week notes.

### Miscellanea

Inevitably while we've been working on the codebase we've been coming across other things that we want to improve. It's tricky to strike the right balance between our gut reaction, which is to [fix things as soon as we find them][broken-window-theory], and staying focussed on our bigger goals. Here are a few of the less "core" issues that we worked on this week:

* [Making parsing & validation of inputs more consistent][pull-1629], e.g. dates, integers, etc.
* [Responding with 404 not 500 when requested format is unknown][pull-1640]. This improves the signal-to-noise ratio in Errbit exception reports.
* [Investigated a problem where duplicate Shoulda context names result in tests which don't run][issue-1626].

We've also been making an effort to remove unused code. For example, there are a bunch of "draft" and "v2" smart answers which haven't been worked on in a while. We established that it was ok to delete some of them and proceeded to remove them.

## GFR

On Monday, I went along to the [May LRUG meeting][]. However, I was feeling really tired and skipped the post-meeting pub visit.

On Wednesday, we hosted our [twelfth Show and Tell event][show-and-tell-12] and on Thursday evening, we caught up with [Pete Herlihy][] over a few beers at [The Old Nick][] - it was really interesting to hear what he's been up to.

On Friday we had lunch with [Tom Stuart][] at the First Step cafe. Later that afternoon, Tom came up to our office to prepare for a client pairing session which he was due to run on the following Monday.

That's all folks.

-- James


[pre-election moratorium]: https://gds.blog.gov.uk/2015/03/29/the-pre-election-period/
[previous-week-notes]: /week-329
[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[Smart Answers app]: https://github.com/alphagov/smart-answers
[smart-answer-making-bigger-changes]: https://github.com/alphagov/smart-answers#making-bigger-changes
[git branching & merging]: https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging
[deploy-to-heroku-pr]: https://github.com/alphagov/smart-answers/pull/1588
[deploying-to-heroku]: https://github.com/alphagov/smart-answers#deploying-to-heroku
[smart-answers-ruby-dsl]: https://github.com/alphagov/smart-answers/blob/master/lib/smart_answer_flows/README.md
[smart-answer-flow-eval]: https://github.com/alphagov/smart-answers/blob/de09148072c23f5c62079cf7bfbb38786cf09adc/lib/smart_answer/flow_registry.rb#L56
[Rails i18n]: http://guides.rubyonrails.org/i18n.html
[Govspeak]: https://github.com/alphagov/govspeak
[Smartdown]: https://github.com/alphagov/smartdown
[kernel-eval]: http://ruby-doc.org/core-2.2.2/Kernel.html#method-i-eval
[smart-answer-example-erb-templates]: https://github.com/alphagov/smart-answers/tree/e14b5b1872c7cb8ffae23f8e16fa8dc464049317/lib/smart_answer_flows/student-finance-calculator
[Simplecov]: https://github.com/colszowka/simplecov
[make-test-coverage-available-for-smart-answer-flows]: https://github.com/alphagov/smart-answers/commit/2910747663879e0b8d42fc32ff9fa41649ab49bf
[broken-window-theory]: http://en.wikipedia.org/wiki/Broken_windows_theory
[issue-1626]: https://github.com/alphagov/smart-answers/issues/1626
[pull-1629]: https://github.com/alphagov/smart-answers/pull/1629
[pull-1640]: https://github.com/alphagov/smart-answers/pull/1640
[May LRUG meeting]: http://lrug.org/meetings/2015/may/
[show-and-tell-12]: /show-and-tell-12
[Pete Herlihy]: https://twitter.com/yahoo_pete
[The Old Nick]: http://oldnickholborn.co.uk/
[Tom Stuart]: http://codon.com/


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2015-06-05 14:33:00 +01:00
:updated_at: 2015-06-05 14:33:00 +01:00
:page_title: Week 330
