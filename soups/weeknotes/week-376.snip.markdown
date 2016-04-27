Week 376
========

## Smart Answers

[Leena][leena-gupte] joined the team this week. Welcome, Leena!


### Fact checking 2016/17 rate changes

* [PR 2412 - Allow `RatesQuery` date to be set using environment variable][smart-answers-pr-2412]. This allows us to set which rates are used by specifying a date using an environment variable. This makes it possible for rate changes to be fact-checked on Heroku.


### 2016/17 updates for register-a-death

* [PR 2425 - Add 2016/17 rates for register-a-death][smart-answers-pr-2425]. In preparation for the start of the 2016/17 tax year on 6 April. I extracted the hardcoded values from the ERB templates to YAML files and then added the new fees.


### 2016/17 updates for marriage-abroad

I spent most of my time working on changes to the marriage-abroad services and fees required by 6 April. We need to change the names and prices of services, and the services offered in different ceremony countries.

I started out by updating the names of the various marriage-abroad services based on information from FCO:

* [PR 2413 - Rename marriage-abroad services][smart-answers-pr-2413].

Having created this pull request, I started to make the changes to the services offered in various countries. This was harder than I'd hoped because the logic was spread all over the place. I ended up spiking on a couple of different approaches before deciding to extract the service information to a YAML file.


### Marriage-abroad template improvements

* [PR 2420 - Remove space stripping ERB tags from marriage-abroad templates][smart-answers-pr-2420]. When we initially converted Smart Answers from i18n to ERB templates, we used space stripping ERB tags to try to match the rendered HTML as closely as possible. We've made some improvements since that initial conversion that mean these are no longer required. I removed them from the marriage-abroad templates.


## GFR

### Printer

We received one or two emails about the [Printer project][exciting-printer] (now part of [Exciting][exciting-io]). We configured Google Apps to forward these emails automatically in future.


### Annual accounts

James has started to investigate whether it's going to be possible/easy for us to generate our annual accounts. One idea we've discussed is for us to generate them, and then to pay an accountant to sanity check them, although we're not sure if anyone offers such a service.

James explored using software to generate the accounts from our FreeAgent data, and also started researching whether we'll be able to use [HMRC's new CATO tool][hmrc-cato] to file our accounts online.

-- Chris

[exciting-io]: https://exciting.io/
[exciting-printer]: https://exciting.io/printer/
[hmrc-cato]: https://www.gov.uk/file-your-company-accounts-and-tax-return
[james-mead]: /james-mead
[leena-gupte]: https://github.com/leenagupte
[smart-answers-pr-2402]: https://github.com/alphagov/smart-answers/pull/2402
[smart-answers-pr-2403]: https://github.com/alphagov/smart-answers/pull/2403
[smart-answers-pr-2412]: https://github.com/alphagov/smart-answers/pull/2412
[smart-answers-pr-2413]: https://github.com/alphagov/smart-answers/pull/2413
[smart-answers-pr-2420]: https://github.com/alphagov/smart-answers/pull/2420
[smart-answers-pr-2424]: https://github.com/alphagov/smart-answers/pull/2424
[smart-answers-pr-2425]: https://github.com/alphagov/smart-answers/pull/2425

:name: week-376
:updated_at: 2016-04-27 18:35:22.792721000 +12:00
:created_at: 2016-04-27 18:35:22.792715000 +12:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 376
:extension: markdown
:week_dates: Mon 28 March to Sun 3 April
