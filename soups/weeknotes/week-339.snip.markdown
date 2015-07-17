Week 339
========

Afternoon y'all.

Nothing out of the ordinary this week: We spent Monday to Thursday on [Smart Answers][] and Friday (today!) on GFR.

## Smart Answers

### ERB

The end of our quest to convert Smart Answers to use ERB templates is now in sight! We finished the week with 32 of 35 smart answers converted.

I started to convert [marriage-abroad][] (one of the largest Smart Answers) on Monday but was was forced to stop working on it when I realised that [Tadas][] still has a [large branch of changes waiting to be merged][marriage-abroad-changes]! I thought these changes were already in master but they were hiding in a closed pull request. I'd previously been in favour of closing these long-lived pull requests that were out for fact check but this incident made me realise that it's not such a good idea.

I switched to converting the similarly large [maternity-paternity-calculator][] instead. This ended up being quite painful and taking a good couple of days to convert. It was hard to see what was going on and I ended up trying to restructure it a couple of different ways before coming up with something that made the ultimate conversion easier. One positive side-effect of this particular conversion is that it fixes some problems with the version currently in production.

Tadas joined us in our office on Wednesday. We wanted to chat about the problems mentioned in [week-338][] and he was good enough to save us a trip to Aviation House by joining us in our office.

We discussed the problems Tadas experienced when working on [overseas-passports][]. As mentioned last week, part of the problem is to do with the lack of indenting in the template files, and part of it is to do with the way the Smart Answer is structured. We agreed to prioritise investigations into both allowing us to indent the ERB templates, and into alternative ways of structuring the Smart Answer to make it easier to manage. James has been talking about how it might be useful to treat the Smart Answers that deal with country selection differently to the others. We're hoping that anything we can do to improve this Smart Answer will also apply to some of the other larger answers.

I finished up the week with a [pull request that allows us to indent the content in our ERB templates][indent-erb-templates]. Our initial concern about this approach was that we might break markup that relies on significant whitespace (e.g. indented lists and code blocks) but we don't appear to be using any of those so our simple implementation might just be good enough.

### Simplifying FlowRegistry

James made use of the fact that all our Smart Answers are now defined in classes to [simplify the `SmartAnswer::FlowRegistry` class][flow-registry]. It feels particularly good to see the use of `eval` removed.

### Regression test artefacts

James spent some time [converting our regression tests artefacts from HTML to Govspeak][html-to-govspeak]. While the HTML gave us lots of confidence to be able to make changes, it also caused us some pain when things outside of Smart Answer content changed (e.g. Google Analytics tracking). Having suffered this pain a few times now we decided it was finally time to switch from HTML to Govspeak. The Govspeak artefacts are both smaller and easier to read than their HTML counterparts. Compare this apply-tier-4-visa outcome in [HTML][apply-tier-4-html] and [Govspeak][apply-tier-4-govspeak] to see the difference.

### Hidden/failing tests

I was bitten by the [problem of duplicate contexts hiding some failing tests][] when converting one of the Smart Answers to ERB. While I've not completely fixed the problem, I did make some changes to at least [fix the hidden tests that were also broken][].

## GFR

### Mocha

Mocha celebrated its ninth birthday on Monday. Congratulations to James for doing such a great job of maintaining this popular open source library for such a long time.

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">It&#39;s Mocha&#39;s 9th birthday today. Or at least the 9th anniversary of the initial import into svn. Happy Birthday! - <a href="https://t.co/UBbljLIFGC">https://t.co/UBbljLIFGC</a></p>&mdash; James Mead (@floehopper) <a href="https://twitter.com/floehopper/status/620641401487925248">July 13, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">James (<a href="https://twitter.com/floehopper">@floehopper</a>) has been expertly tending ruby mocking gem Mocha <a href="https://t.co/PYXd3Yx61A">https://t.co/PYXd3Yx61A</a> for 9 earth years. 8.5m downloads! Happy B&#39;day!</p>&mdash; Ben Griffiths (@beng) <a href="https://twitter.com/beng/status/620698669067730944">July 13, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

### Show and Tell

We hosted our 14th Show and Tell in our office on Tuesday. It was fairly quiet with just five of us in attendance, but enjoyable nonetheless. James is busy writing this up at the moment so I'll leave it to him to say more about that.

### Writing

I've spent most of the day writing up notes for weeks 338 and 339.

Have good weekends, and until next time.

-- Chris

[Smart Answers]: https://github.com/alphagov/smart-answers
[Tadas]: https://github.com/tadast
[apply-tier-4-govspeak]: https://github.com/alphagov/smart-answers/blob/70b643095361b318c4748cf8d81e589f0a269825/test/artefacts/apply-tier-4-visa/extend_child/QNCPTDW26.txt
[apply-tier-4-html]: https://github.com/alphagov/smart-answers/blob/36f0b5cebfecf0927e1abcdbdccd3e39d7a20708/test/artefacts/apply-tier-4-visa/extend_child/QNCPTDW26.html
[flow-registry]: https://github.com/alphagov/smart-answers/commit/2620dc0
[fix the hidden tests that were also broken]: https://github.com/alphagov/smart-answers/commit/743e14311e0cc0369c099b2704e9e6ed7183e655
[html-to-govspeak]: https://github.com/alphagov/smart-answers/commit/ac05978c64d2b57d64d8af361d110e95ce352bba
[indent-erb-templates]: https://github.com/alphagov/smart-answers/pull/1824
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[marriage-abroad-changes]: https://github.com/alphagov/smart-answers/pull/1771
[maternity-paternity-calculator]: https://www.gov.uk/maternity-paternity-calculator
[overseas-passports]: https://www.gov.uk/overseas-passports
[problem of duplicate contexts hiding some failing tests]: https://github.com/alphagov/smart-answers/issues/1626
[week-338]: /week-338

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-07-17 12:30:00 +01:00
:updated_at: 2015-07-17 12:30:00 +01:00
:page_title: Week 339
