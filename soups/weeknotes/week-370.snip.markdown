Week 370
========

## Smart Answers

### Meeting at GDS

[James][james-mead] met with [Dai][dai-vaughn] and then Erik at GDS. It sounds as though the high level goals for [Smart Answers][smart-answers] are still the same, aside from [Marriage Abroad][marriage-abroad] becoming more of a priority.

### New developer

[Ikenna][ikenna-okpala] joined Erik to work on Smart Answers this week. He seems to have got off to a great start, creating three pull requests in this first week! Welcome, Ikenna.

### Refactoring Marriage Abroad

I continued to work on refactoring Marriage Abroad. I continued moving logic from the [flow to the new `MarriageAbroadCalculator` object][smart-answers-pr-2271], and made some [changes to the `CountryNameFormatter` along the way][smart-answers-pr-2285].

### Refactoring Statutory Sick Pay

James resumed working on the [Calculate Statutory Sick Pay Smart Answer][calculate-statutory-sick-pay]. He fixed some problems with this Smart Answer at the end of last year and noticed at the time that there was at least one concept missing in the code: a [Period of Incapacity for Work (PIW)][piw]. He's added that concept to the code but, in doing so, thinks he might've uncovered a problem with the existing implementation. He's opened a [pull request with his changes][smart-answers-pr-2280] but has parked it until we hear back about the potential bug.

## IR35 tax assurances

Having received our signed [Working Practice Questionnaires][egos-wpq] back from GDS we were able to forward them to the Contracting Team. Hopefully this'll provide all the assurance they need.

## Hookline

James made further improvements to the ordering of tracks within a playlist that he added a couple of weeks back.

Until next time, folks.

-- Chris

[calculate-statutory-sick-pay]: https://www.gov.uk/calculate-statutory-sick-pay
[dai-vaughn]: https://dafyddvaughan.uk/
[egos-wpq]: http://www.egos.co.uk/ir35_wpq.htm
[ikenna-okpala]: http://ikennaokpala.com/
[james-mead]: /james-mead
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[piw]: http://www.hmrc.gov.uk/manuals/spmmanual/spm110500.htm
[smart-answers]: https://github.com/alphagov/smart-answers
[smart-answers-pr-2271]: https://github.com/alphagov/smart-answers/pull/2271
[smart-answers-pr-2280]: https://github.com/alphagov/smart-answers/pull/2280
[smart-answers-pr-2285]: https://github.com/alphagov/smart-answers/pull/2285

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-03-10 10:38:00 +11:00
:updated_at: 2016-03-10 10:38:00 +11:00
:page_title: Week 370
