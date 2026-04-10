Week 898
========

Week beginning Monday 30th March.

We all took some time off this week and tried to catch up with the things that tend to slip while we're working full-time on a client engagement.

Having finished working on the [GOV.UK Publishing] project last week, this week was a break between projects before we started a new project at [NHS Digital] after the Easter bank holiday weekend.

[Chris L] was at the Albert Hall on Monday night and heard the GFR theme tune, ["We Are the Battery Human" by Stornoway], being played live! ❤️

<p>
  <video class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" height="400" width="600" poster="/media/blog/stornoway-we-are-the-battery-human-live-at-albert-hall.png" data-setup='{}'>
    <source src="/media/blog/stornoway-we-are-the-battery-human-live-at-albert-hall.mp4" type="video/mp4" />
    <source src="/media/blog/stornoway-we-are-the-battery-human-live-at-albert-hall.webm" type="video/webm" />
  </video>
</p>

I moved our savings from Issue 9 of [Aldermore Bank's Easy-Access Business Savings Account] to Issue 14 to obtain a fractionally better interest rate. I find the business practice of treating your existing customers less favourably than your new customers so annoying, but unfortunately it seems to be almost universal!

[Chris R] drafted a proposal for [Nicola Moore] who we met [back in January] to do some [Jam] engagement work on our behalf. Chris R is talking to her as I write this. She's got a lot of connections in the music industry, so I'm excited to see where this goes. 

I did a bunch of work on [integrating Stripe Connect with jam.coop] so we can make payments directly from our [Stripe] account to their Stripe account. This is in contrast to the current approach where the money has to go via our bank account and a bank transfer using [Wise]. It's been a bit painful working out exactly how this should work, but it will have a number of advantages. This feature will be behind a user-specific feature flag to start with, because we need to do some testing in the live environment before making it more generally available.

While doing that work on [Jam], I ran into problems with [the `solid_queue` gem] triggering a segmentation fault in [the `pg` gem]. There seem to be a bunch of problems like this relating to using the `pg` gem on MacOS on Apple Silicon, but [the fix] that seemed to work for me was to add `gssencmode: disable` to the database configuration in the Rails app.

On Thursday I visited [a Serendipity Labs office near me] to see whether they had either a 1-person private office or a co-working space suitable for remote pairing. Unfortunately they don't currently have a 1-person office, but the co-working space is very quiet, so it might work. The manager also mentioned that [The Quad] in Cambridge does have 1-person offices available, so I might pursue that, although the location isn't so good for me.

[GOV.UK Publishing]: https://insidegovuk.blog.gov.uk/
[NHS Digital]: https://digital.nhs.uk/
[Chris L]: /chris-lowis
["We Are the Battery Human" by Stornoway]: https://shop.4ad.com/release/339153-stornoway-beachcombers-windowsill
[Aldermore Bank's Easy-Access Business Savings Account]: https://www.aldermore.co.uk/savings-accounts/business-savings-accounts/easy-access-savings-account/easy-access-account/
[Chris R]: /chris-roos
[Nicola Moore]: https://www.linkedin.com/in/nicola-moore-889771135/
[back in January]:/week-887#jam
[Jam]: https://jam.coop/
[integrating Stripe Connect with jam.coop]: https://github.com/freerange/jam-coop/pull/472
[Stripe]: https://stripe.com/
[Wise]: https://wise.com/
[the `solid_queue` gem]: https://github.com/rails/solid_queue/
[the `pg` gem]: https://github.com/ged/ruby-pg
[the fix]: https://github.com/freerange/jam-coop/issues/475
[a Serendipity Labs office near me]: https://serendipitylabs.com/uk/cambridge-north/
[The Quad]: https://quadworkspace.co.uk/quad-cambridge/

:name: week-898
:updated_at: 2026-04-10 10:31:38.311869000 +01:00
:created_at: 2026-04-10 10:31:38.311869000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 898
:extension: markdown
