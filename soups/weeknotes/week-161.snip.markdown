Week 161
========

Hello folks.

This is my tardiest report, late to the table, the editor at my throat.

###Whitehall handover

This week was our second week of the [Whitehall app][whitehall app] handover. We've been radically stripping back the user interface and beginning to build it back up with a look and feel that is closer to the [Citizen][GovUK] site. In doing this, we were exposed with sharpened focus to the difficulties present in creating an intuitive map of government structure and activities.

It became clear that it was not just a matter of changing a few colours, we had not yet addressed some of the more subtle aspects of our challenge, and this left me a little concerned, after all I'd been partly responsible for trying to lay the foundation that this design activity would be using.

Having reflected on this, my thoughts came back to where I had been before the handover began; this work we are doing now, is just where we we're at in the development process.

We had gotten most of the functionality and content together, our site was functionally done enough to allow us to simmer, reduce and refine the message. A complex mix of ingredients, once assembled, needs to be formed into a simple unified experience. But that it is still a lot of work.

The timing of this work, with the notion of an arbitrary deadline, and the handover to the core GDS team has created a situation which perhaps is a little more strained than it ought to be. But the team is working well, and I anticipate it all coming good.

I'm very thankful for the way we have built the software, it is well tested and engineered so that this change can be handled with confidence.

I also got chance this week to make some commits to the [Citizen][GovUK] codebase, in order to help [get some of the elements we share between projects](https://github.com/alphagov/static/compare/89d0d316b0...ebf5685890), to act responsively &mdash; to fit with our approach &mdash; using a mobile-first fluid and collapsable grid to align content easily over different display sizes.

####Capistrano Rsync Bug Fix

[James M][James M] fixed a bug which was happening with the GovUK capistrano_rsync_with_remote_cache library which will now make the deployment [fail fast if any system command returns an error code](https://github.com/alphagov/capistrano_rsync_with_remote_cache/commit/de6bc38155de66f40c876a9940c610e5338f5bd5). Nice.


###Rolling the Pay

With our handover happening we've individually had a little bit of time away from the GovUK project to deal with whatever we wish. A chance to take a breather, and to attend to those little details which have been de-prioritised over the last few months.

At GFR we chose to deal with our Payroll ourselves, and naturally we've made a few mistakes along the way as we learn.

One slight snag we've had is inconsistent dates between the payslips generated in our [accounting software (FreeAgent)][FreeAgent] and those in HMRC's Basic PAYE Tools, this was perpetuated by a bug in [FreeAgent][FreeAgent] which meant we couldn't change and regenerate our payslips without causing some complications in how our personal remuneration via salary and dividends are accounted for.

Chris decided to fix this, believing that the [FreeAgent][FreeAgent] bug had now been fixed, and so went through all of the last two years of payslips, regenerating them both in FreeAgent and in the HMRC payroll calculator with his usual incredible attention to detail.

The upshot of which is we now have all have correct and consistent payroll information, and because it was Chris, we also have a thorough description of all the steps taken and screenshots of the before and after states of his changes in [FreeAgent][FreeAgent] to show that everything worked as intended.

As I don't really understand all this stuff, I'm very grateful that Chris does and has persevered with what sounds like a massively complex and boring task.

Blimey.

###The little printer

[James A][James A] has been spending some of his free time iterating on his open source thermal printer project. He has managed to get graphics printing working to a sweet standard, and is, I believe, at present printing the graphics with data transferred from an SD card.

![Graphics Test](http://distilleryimage7.s3.amazonaws.com/c49fae18574011e1a87612313804ec91_7.jpg)

The next step which James is now working on, is to allow data to be pushing to it over a network, which will mean that once the little bugger is connected, you could print with it using HTTP, exciting stuff, I'm sure your mind can wander over the possibilities.

### Until next time
Check back next week, actually this week, for the next instalment.

JC.

[whitehall app]: http://digital.cabinetoffice.gov.uk/2011/08/24/government-corporate-websites-in-eye-popping-3d/
[GovUK]: http://gov.uk
[James M]: /james-mead
[FreeAgent]: http://fre.ag/3276i4uh
[James A]: /james-adam

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: jason-cale
:created_at: 2012-02-22 09:34:00 +01:00
:updated_at: 2012-02-22 09:34:00 +01:00
:page_title: Week 161