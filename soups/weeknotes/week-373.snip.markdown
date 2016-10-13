Week 373
========

We continued with our part-time work on Smart Answers much as before.

## Smart Answers

My main achievement was to finish off my work on [automatically detecting the possible next nodes for each node][pr-2343]. This makes use of the approach I talked about a couple of weeks ago, although the parsing is only done lazily i.e. only when the user needs to see a visualisation of a flow. Prior to merging this change I also did some [refactoring of the unit test for SmartAnswer::Question::Base][pr-2340].

I also managed to finish off the work Erik started on [upgrading from Ruby v2.2.4 to v2.3.0][pr-2345]. It's always nice to stay up-to-date, but we also hoped that the app might benefit from [this supposed boost to ERB template rendering performance][rails-erb-template-rendering-performance].

Chris got his work on [delegating from MarriageAbroadCalculator to MarriageAbroadDataQuery][pr-2346] merged.

He then removed some unused code from Marriage Abroad relating to [opposite sex marriages in Germany][pr-2352] and [opposite sex marriages in Japan][pr-2349].

He also [spiked on the idea of having country-specific outcomes][pr-2354] for [Marriage Abroad][]. This is something we've talked about a lot (and even implemented in a few cases), but it was good to see him trying it out for real on a larger scale.

## GFR

As usual we just about stayed on top of the usual company admin. Chris filed our VAT return and finished splitting up the documents we had scanned by Mailboxes Etc at the end of last year.

We also ran out of space in our company Dropbox account. We mainly use Google Drive these days, but we still keep a few things in Dropbox. Chris noticed that our Trello backups were taking up most of the space, so he deleted a bunch of them and created a new Harmonia task to remind us to regularly delete older ones.

Until next time.

-- James

[pr-2351]: https://github.com/alphagov/smart-answers/pull/2351
[pr-2345]: https://github.com/alphagov/smart-answers/pull/2345
[pr-2343]: https://github.com/alphagov/smart-answers/pull/2343
[pr-2340]: https://github.com/alphagov/smart-answers/pull/2340
[pr-2352]: https://github.com/alphagov/smart-answers/pull/2352
[pr-2354]: https://github.com/alphagov/smart-answers/pull/2354
[pr-2349]: https://github.com/alphagov/smart-answers/pull/2349
[pr-2346]: https://github.com/alphagov/smart-answers/pull/2346


[rails-erb-template-rendering-performance]: http://ruby-performance-book.com/blog/2016/02/is-ruby-2-3-faster-rails-erb-template-rendering-performance.html
[Marriage Abroad]: https://www.gov.uk/marriage-abroad

:name: week-373
:updated_at: 2016-03-31 10:38:19.579185000 +02:00
:created_at: 2016-03-31 10:38:19.579181000 +02:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 373
:extension: markdown
