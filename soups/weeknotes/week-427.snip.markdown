Week 427
========

We alternated between working from home and working at [TOG Bloomsbury][] including a morning at Aviation House timed to coincide with a meeting to catch-up with Paul Bowsher, our main contact at [GDS][].

I'm finding the co-working space at TOG pretty good, although I am still keen to improve the ergonomics of my laptop setup. It's also good to be able to sit around a desk with [Chris R][] & [Chris L][] so we easily chat about things as they come up.

## GDS

### Procurement

I'm pleased to say that we finally seem to have reached the end of the procurement process and can concentrate more fully on the project itself. At times I've questioned the merits of going through "big company" processes like this. However, I think the main alternative is to do lots of smaller projects with a larger pool of small clients and of course that has its own problems.

### Refactoring

We [powered on][manuals-publisher-commits] with our major refactoring of the [Manuals Publisher][] app. We've mainly been focussing on the following:

* Renaming things to better reflect the underlying domain.
* Reducing the massive levels of indirection in the code by doing a lot of inlining of methods.
* Moving anonymous procs into named methods & classes.
* Auditing various ad-hoc scripts and either getting them under test or deleting them.
* Adopting patterns used in other similar GOV.UK publishing apps.

### Deployment

Following a mini retrospective at the end of last week, we've also been making a special effort to deploy more regularly. GDS host their own Jenkins instance and successful builds are automatically deployed to an integration environment. However, production deployments require manual intervention by someone with the appropriate security clearance and so we have to book these ahead of time. Given the extensive changes we're making to the codebase, we're keen to deploy regularly so any issues are identified as quickly as possible.

## GFR

### Away day

Chris L has organised a company away day, although he's keeping the details secret! This is something we're planning to do every quarter in order to do some more strategic thinking for the company.

### CoTech

Plans for a follow-up to [last year's founding event][wortley-hall-2016] took a step forward with the successful [co-budgeting][cobudget] of the deposit for a [similar retreat in November][wortley-hall-2017].

We've continued to make an effort to participate in ongoing [CoTech][] discussions. In particular we've been making an effort to vote on proposals made in [Loomio][cotech-loomio] to help maintain momentum within the network.

### Banking

We made some good progress in adding Chris L as a signatory on our company bank account and getting him a company debit card. It's a shame these things are so manual/time-consuming, but I suppose we'll get there eventually!

### Payroll

I spent quite a while sorting out a mistake in our payroll. Two years ago we accidentally set my [NI category letter][] to **C** when it should've been **A**. This meant that we hadn't paid or collected any employee NI contributions for me over that period. Yikes!

I fixed this by following [some instructions][correcting-payments-to-hmrc] on GOV.UK which required me to [submit an Earlier Year Update][submit-eyu] using HMRC's idiosyncratic [Basic PAYE Tools][] to correct our submission for the previous tax year.

Next [FreeAgent Support][] updated the figures in their system and applied the necessary corrections for the current tax year. These corrections were then submitted to HRMC via our regular [Full Payment Submission][].

I was then able to make the necessary payments to HMRC and to reclaim the missing employee NICs from myself as an employee. FreeAgent were incredibly helpful throughout this process - I can't recommend them highly enough! [^1]

Anyway, that's all for this week.

Until next time.

-- James

[^1]: [FreeAgent referral link](http://fre.ag/3276i4uh)

[TOG Bloomsbury]: http://www.theofficegroup.co.uk/office/the-bloomsbury-building/
[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[Chris R]: /chris-roos
[Chris L]: /chris-lowis
[Manuals Publisher]: https://github.com/alphagov/manuals-publisher
[manuals-publisher-commits]: https://github.com/alphagov/manuals-publisher/compare/a455a22b3cafd7fda87ffc0f6beac7b549caf2cd...cdea2943f4f5f7cf5b71a07cde20e6895756f512
[correcting-payments-to-hmrc]: https://www.gov.uk/payroll-errors/correcting-payments-to-hmrc
[submit-eyu]: https://www.gov.uk/government/publications/basic-paye-tools-earlier-year-update-alongside-commercial-software
[Basic PAYE Tools]: https://www.gov.uk/basic-paye-tools
[FreeAgent Support]: https://www.freeagent.com/support/
[Full Payment Submission]: https://www.gov.uk/running-payroll/reporting-to-hmrc
[wortley-hall-2016]: https://wiki.coops.tech/wiki/Main_Page#Wortley_Hall_2016
[cobudget]: https://github.com/cobudget/cobudget
[wortley-hall-2017]: https://www.loomio.org/d/8huKDznq/proposal/Yy4Ciz8h
[CoTech]: https://www.coops.tech/
[cotech-loomio]: https://www.loomio.org/d/IHimcVgY/
[NI category letter]: https://www.gov.uk/national-insurance-rates-letters/category-letters

:name: week-427
:updated_at: 2017-03-28 15:32:18.925587000 +01:00
:created_at: 2017-03-28 15:32:18.925578000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 427
:extension: markdown
