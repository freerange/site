Week 196
=========

## GOV.UK

This week we've been back at Aviation House continuing work on [Inside Government][] with our [GDS][] colleagues. The big news of the week was [gov.uk][] coming [out of beta](https://github.com/alphagov/static/pull/94) and [replacing DirectGov](http://www.flickr.com/photos/attentiondeficit/8096118843/in/photostream/) and Business Link. The release seemed to go very smoothly and the site is happily handling more than a million hits a day on its new G-Cloud-sourced [Skyscape][] infrastructure.

[<img src="/images/blog/govuk.png" style="width: 100%"/>][gov.uk]

While our GDS colleagues on other teams should take most of the credit, the Inside Government team was responsible for delivering the longer-form [detailed guidance](http://digital.cabinetoffice.gov.uk/2012/10/09/not-so-special-after-all/) pages. So whether you're concerned about exporting stuff that [might be used to build WMD](https://www.gov.uk/weapons-of-mass-destruction-wmd-end-use-control), wondering how to [look after your goats](https://www.gov.uk/sheep-and-goat-welfare), or contemplating [building a high-speed passenger ferry](https://www.gov.uk/high-speed-craft-construction-and-maintenance-standards), we have the answers.

<img src="/images/blog/gov-uk-detailed-guidance-weapons-of-mass-destruction-end-use-control.png" style="width: 100%">

When you've got your head down on a project like Inside Government, it's easy to forget about the bigger picture. So it was good to understand a bit more about *[why this new government website really matters](http://www.guardian.co.uk/technology/2012/oct/17/gov-uk-website-internet)*.

## Harmonia

Although it was good to get stuck back in to work on Inside Government, this week was also a reminder of how hard it is to make progress on GFR projects at the same time as working on a client project. This was particularly noticeable, because we were one man short this week with [James A][] on holiday. This meant that for more than half the week there was *at most* one of us on GFR duty. I know that I for one find it more difficult to make progress on this shared undertaking when none of the others are around.

Consequently we haven't made as much progress on [Harmonia][] as I would've liked. Perhaps it was just the contrast between this week and last week, but it feels  as if a lot of the momentum we built up last week has disappeared.

Having said that, [Chris][] seems to have made good progress on building a mechanism for sending out invitations. As explained by James in [week #193][] we've decided to roll our own authentication-related code rather than use a 3rd party library. It feels to me as if we've invested quite a bit of time working on such functionality (e.g. sign-up, password reset, invitations, etc), but hopefully this will pay off later or when we come to work on other projects.

## Printer

There's been continued interest in the [Go Free Range Printer][] with News International (!) building [an SMS gateway for the printer][printer-twilio] - you can send text messages and have them printed out on a little printer. And I belatedly caught up with [Elspeth and Lottie's correspondence](http://finalbullet.com/printerletters.html) which apparently...

> ...could never have been shared without the generosity of our benefactor philanthropist [Mister James Adam][James A] and his marvellous [Go Free Range][] contraptions".

<img src="http://farm9.staticflickr.com/8300/7976683132_77c07193c0_b.jpg" width="400" alt="Dearest Henry">

## And finally

We're back up to full strength next week, so hopefully we'll be able to get a first release of [Harmonia][] out the door. I'm looking forward to seeing what people think about it and whether they find it useful.

-- James M

[gov.uk]: https://www.gov.uk
[Inside Government]: https://www.gov.uk/government
[GDS]: http://digital.cabinetoffice.gov.uk/
[Skyscape]: http://skyscapecloud.com
[James A]: /james-adam
[Chris]: /chris-roos
[Tom]: /tom-ward
[james-mead]: /james-mead
[week #193]: /week-193
[Harmonia]: https://harmonia.io
[Go Free Range Printer]: /hello-printer
[printer-twilio]: https://github.com/newsinternational/printer-twilio
[Twilio]: https://www.twilio.com/
[Go Free Range]: /
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2012-10-20 10:30:00 +01:00
:updated_at: 2012-10-20 10:30:00 +01:00
:page_title: Week 196
