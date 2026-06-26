Week 910
========

Week beginning Monday, 22nd June 2026.

I was out for a chunk of the week due to tooth pain, but [Chris L] & [Chris R] continued to work on performance-related improvements for the [Mavis project] for [NHS Digital]. Chris L identified a small change to a gnarly SQL query used to search for patients which led to a significant improvement in performance.

Chris R shipped a change to use [Sidekiq Pro] in all environments which was a bit tricky because it means we now require some credentials wherever we need to run `bundle install`. We've chose to use [mise] with [fnox] backed by encrypted values in the [AWS Parameter Store] to avoid every developer having to store the credentials locally.

Chris L attended [Brighton Ruby](https://brightonruby.com/) on Thursday. He said there were some interesting and relevant talks on [Sidekiq] and performance testing. He also got to catch up with lots of familiar faces from the [Government Digital Service], [FutureLearn], [Nesta] and the [Raspberry Pi Foundation]. I was pleased to hear that the venue was air-conditioned this time which must have been a mercy given [the record temperatures in the UK].

Chris L has also been busy this week sorting out a bunch of admin for the Scaling Co-operation event that he helped organise [a couple of weeks ago].

I spent some time last weekend trying to ship the [Stripe Connect] changes for [Jam] I've been working on for months on & off. While I did end up merging the changes (behind a feature flag), I've slightly lost confidence that the current iteration of the implementation is sensible.

This latest doubt came from looking at the way [DoubleAgent's Stripe integration] works - it has built-in support for [application fees]. While originally we had hoped to use these application fees to account for Jam's platform fees, our latest implementation doesn't use them, because it was the only way we could get Stripe Connect not to pass the VAT paid by the customer to the artist.

To be honest I'm a bit baffled why Stripe Connect makes this (seemingly very common) use case so hard. Anyway, hopefully I can chat to the others and work out a way forward.

Until next time!

-- James

[Chris L]: /chris-lowis
[Chris R]: /chris-roos
[Mavis project]: https://www.manage-vaccinations-in-schools.nhs.uk
[NHS Digital]: https://digital.nhs.uk/
[Sidekiq Pro]: https://sidekiq.org/products/pro/
[mise]: https://mise.jdx.dev/
[fnox]: https://fnox.jdx.dev/
[AWS Parameter Store]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-parameter-store.html
[Brighton Ruby]: https://brightonruby.com/
[Sidekiq]: https://sidekiq.org/
[Government Digital Service]: https://www.gov.uk/government/organisations/government-digital-service
[FutureLearn]: https://www.futurelearn.com/
[Nesta]: https://www.nesta.org.uk/
[Raspberry Pi Foundation]: https://www.raspberrypi.org/
[the record temperatures in the UK]: https://www.bbc.co.uk/news/articles/crlw2xgrp3xo
[a couple of weeks ago]: /week-908
[Stripe Connect]: https://stripe.com/gb/connect
[Jam]: https://jam.coop/
[DoubleAgent's Stripe integration]: https://doubleagent.io/docs/stripe
[application fees]: https://docs.stripe.com/api/application_fees

:name: week-910
:updated_at: 2026-06-26 15:41:45.330621000 +01:00
:created_at: 2026-06-26 15:41:45.330616000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 910
:extension: markdown
