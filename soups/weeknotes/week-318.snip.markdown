Week 318
========

We started the week with a couple of days to ourselves -- we caught up with a lot of admin on Monday and then met up with a few people on Tuesday. And we spent Wednesday, Thursday & Friday at [FutureLearn][].

## Accountancy

On Monday we made the decision to stop using an accountant for our statutory annual accounts and corporation tax return. All [members of GFR][people] take it in turns to keep on top of the book-keeping using [FreeAgent][]'s excellent system and we've always been at pains to [understand as much as possible of what our accountant does][checking-our-annual-accounts]. So we're hoping that we can get by without help from an accountant using the standard HRMC tools. This may turn out to be a foolhardy decision, but we're going to give it a go.

## Meetings

We met up with our old friends, [Neil Williams][] and [Brad Wright][], at GDS on Tuesday morning. It was good to hear what they're up to and what the future holds for [GOV.UK][], etc.

We then wandered down to [Somerset House][] and chatted in the sun over a coffee on the terrace. We then tried to do some work, but struggled to get a decent internet connection, so we popped inside to grab some lunch from [Tom's Deli][] and found ourselves a comfy sofa to work at.

After lunch we wandered up to [Workshop Coffee in Clerkenwell][] to meet [LJ from Alliants][]. It was interesting to compare notes on the history of our respective companies and on the trials and tribulations of finding office space in London. I was very jealous to hear that [their office is in a marina on the Hamble river][alliants-office] and they have a company yacht. I'm now busy trying to persuade [Chris][] that we should get a company yacht instead of an office.

## FutureLearn

This was our last week at FutureLearn. I mainly paired with [Alex][] on a couple of stories. The first one was a pretty straightforward change to the logic which determines when to display links to buy things like a [Statement of Participation][]. Although the change was small, we found the existing code and specs rather confusing, so we spent a while trying to improve them before making our change.

The second story was about notifying learners by email when they become eligible for a Statement of Participation. First we came up with a [feature spec][] for the most obvious scenario and then worked down the stack writing a controller spec and a mailer spec as we went until we got the feature spec passing.

Having chatted to others on the team, we realised there was another scenario which we'd missed, so we added a new scenario to the feature spec and got that passing in a similar way. We then extracted most of the logic out into a service object to remove most of the duplication which was a satisfying way to round off my time at FutureLearn.

As well as doing some pairing with [Mark][], Chris did some investigation into the efficiency of the code used to keep two [AWS S3][] buckets in sync. Over time these buckets have filled up with a lot of data and the overnight syncing process had started taking hours.

So Chris did some experiments and discovered that using the [AWS SDK][] was significantly faster than the existing implementation which used [Fog][]. It turned out that using the [AWS Command Line Interface][] was even faster.

After work we said our goodbyes to the FutureLearn team over some beverages at the [Parcel Yard][]. We've loved working with them and wish them all the best for the future.

Anyway, onward and upward!

-- James

[FutureLearn]: https://www.futurelearn.com/
[FreeAgent]: http://www.freeagent.com/
[people]: /people
[checking-our-annual-accounts]: /checking-our-annual-accounts
[Neil Williams]: https://twitter.com/neillyneil
[Brad Wright]: https://twitter.com/bradwright/
[GOV.UK]: https://www.gov.uk/
[Somerset House]: http://www.somersethouse.org.uk/
[Tom's Deli]: http://www.somersethouse.org.uk/plan-your-visit/eating-and-drinking/toms-deli
[Workshop Coffee in Clerkenwell]: http://www.workshopcoffee.com/pages/clerkenwell-cafe
[LJ from Alliants]: http://www.alliants.com/team/lee-jon-ball/
[alliants-office]: http://www.alliants.com/blog/latest/2013/11/11/new-office
[Chris]: /chris-roos
[Alex]: https://github.com/alssndro
[Statement of Participation]: https://about.futurelearn.com/about/faq/?category=statements-of-participation
[feature spec]: http://www.rubydoc.info/gems/rspec-rails/#Feature_Specs
[Parcel Yard]: http://www.parcelyard.co.uk/
[Mark]: http://www.markjs.net/
[AWS S3]: http://aws.amazon.com/s3/
[AWS Command Line Interface]: http://aws.amazon.com/cli/
[AWS SDK]: http://aws.amazon.com/sdk-for-ruby/
[Fog]: http://fog.io/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-02-24 11:31:00 +01:00
:updated_at: 2015-02-24 11:31:00 +01:00
:page_title: Week 318
