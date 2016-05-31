Week 380
========

## Smart Answers

### YearRange and leap years ([PR #2485][smart-answers-pr-2485])

[James][james-mead] fixed some slightly odd leap-year related behaviour in the `YearRange` class. [Erik][erik-eide] noticed this strange behaviour a while back and, although it hasn't caused us any problems, it's good to get it fixed before we make more use of this class.

### Reducing use of `eval` ([PR #2491][smart-answers-pr-2491])

Smart Answers used to use `eval` to evaluate its DSL. Although we replaced the main use of `eval` fairly on, it was still used when we wanted to share logic between Smart Answers. This PR replaces that final use of `eval`, which is great!

### DRY up functionality for setting whitehall host ([PR #2498][smart-answers-pr-2498])

James noticed that we had some special code in Smart Answers to set the location of the whitehall-admin service. Smart Answers uses [Plek][plek] which already has functionality to set the location of, among other things, the whitehall-admin service. James removed our custom implementation. This sort of duplication is hard to spot so it's great when it's noticed and removed. Good job, James.

### Return HTTP 404 instead of 500 ([PR #2494][smart-answers-pr-2494])

We'd noticed some "new" exceptions (we're currently living with "known" exceptions, which makes me sad) appearing in Errbit. James investigated and realised that they were the result of a commit in [PR #2474][smart-answers-pr-2474]. James reverted the problematic commit and added a test to prevent this sort of regression in future.

### Avoid raising InvalidResponse from calculators ([PR #2487][smart-answers-pr-2487])

This makes the code more consistent by ensuring that all `InvalidResponse` exceptions are raised from within the Smart Answers flows. They're currently raised manually or by using `validate`. A further improvement will be to consistently use `validate` to raise these exceptions.

### Remove space-stripping ERB tags ([PR #2483][smart-answers-pr-2483])

This replicates the change I made for marriage-abroad (in [PR #2420][smart-answers-pr-2420]) for all remaining flows. This is great as it should hopefully mean that we don't see any new instances of these space stripping tags in the code.

### Continue moving GdsApi methods to Services module ([PR #2497][smart-answers-pr-2497])

James moved the instantiation of the `GdsApi::ContentApi` to the `Services` module, bringing it into line with `Worldwide`, `Imminence` and `Publishing` APIs.

### DRYing up marriage-abroad services/fees

The logic behind displaying marriage-abroad services/fees is currently spread throughout the code. I'm slowly removing special cases in the hope that we can end up with a single services/fees partial that can be displayed on all outcomes.

## GFR

### Weeknotes

I spent quite a lot of time writing weeknotes this week. Neglecting them for the past few weeks meant that there were five posts (weeks 374 to 378) to write! This inevitably took a good few hours to catch up on.

### Smaller tasks

GFR company admin has always been a shared responsibility. We're pretty good at documenting the tasks we need to perform so that, in theory, almost anyone can do them. As a rule, we try to break these tasks down into the smallest useful chunks possible. Despite best efforts, these tasks can still grow and that's what had happened to the "Pay our wages" task. We spent some time this week splitting the task into smaller components. Smaller tasks are easier to understand, should be easier/quicker to complete and make it easier to spot things that are suitable for automation.

### Automatic enrolment

The final part of our [Automatic enrolment][automatic-enrolment] duty was to declare that we've complied with everything we're supposed to have done. Having satisfied myself that we'd done everything required, I signed the form to declare our compliance.

### We Are Open co-op

James met [John Bevan][john-bevan] from [We Are Open][we-are-open-coop]. It sounds as though John is passionate about the co-operative movement and is particularly keen to promote the 6th co-operative principle, i.e. [cooperation among cooperatives][coop-6th-principle], in the digital sector. This sounds right up our street and I'm interested to see what comes of it.

### GFR drinks

James hosted the first GFR drinks of 2016 in The Reliance. It sounds like there was a reasonable turn out and I can only imagine everyone enjoyed the delicious beers.

That's all for this week. Until next time.

-- Chris

[automatic-enrolment]: http://www.thepensionsregulator.gov.uk/automatic-enrolment.aspx
[coop-6th-principle]: https://en.wikipedia.org/wiki/Rochdale_Principles#Cooperation_among_cooperatives
[erik-eide]: https://github.com/erikse
[james-mead]: /james-mead
[john-bevan]: http://www.bevangelist.uk/
[plek]: https://github.com/alphagov/plek
[smart-answers-pr-2420]: https://github.com/alphagov/smart-answers/pull/2420
[smart-answers-pr-2474]: https://github.com/alphagov/smart-answers/pull/2474
[smart-answers-pr-2483]: https://github.com/alphagov/smart-answers/pull/2483
[smart-answers-pr-2485]: https://github.com/alphagov/smart-answers/pull/2485
[smart-answers-pr-2487]: https://github.com/alphagov/smart-answers/pull/2487
[smart-answers-pr-2491]: https://github.com/alphagov/smart-answers/pull/2491
[smart-answers-pr-2494]: https://github.com/alphagov/smart-answers/pull/2494
[smart-answers-pr-2497]: https://github.com/alphagov/smart-answers/pull/2497
[smart-answers-pr-2498]: https://github.com/alphagov/smart-answers/pull/2498
[we-are-open-coop]: http://weareopen.coop/


:name: week-380
:updated_at: 2016-05-18 21:16:25.320456000 +12:00
:created_at: 2016-05-18 21:16:25.320419000 +12:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:page_title: Week 380
:extension: markdown
:week_dates: Mon 25 April to Sun 1 May
