Inside Government
=================

Yesterday [Paul took the wraps off][paul-password-removal] the new [INSIDE GOVERNMENT section][govuk-inside-government] of [GOV.UK][govuk]. This is the project we've been working on with the [Government Digital Service][gds] since back in [Week 140][week-140].

[<img src="/images/blog/cabinet.thumb.png" style="width: 100%"/>][government-cabinet]

While we've been [continously delivering][continuous-deployment] the application to a restricted set of users since the early days of the project, we're really pleased that it is now accessible to the public.

[Neil][neil-williams] has eloquently explained [what we've built][neil-blog-post-2] and [why it matters][neil-blog-post-1]. While the [citizen-facing part of gov.uk][govuk-beta-first-release] was focussed on "serving the needs of the mainstream majority", [INSIDE GOVERNMENT][govuk-inside-government][^capped] is about "meeting the needs of the engaged minority" -- those that need to know what government is doing, perhaps because it's part of their job, or just out of personal interest.

[<img src="/images/blog/policy.thumb.png" style="width: 100%"/>][government-tackling-homelessness]

The site should become the best place to find out how government works, see what it's doing and get involved. It should keep you up-to-date with the UK government's [news][government-news], [policies][government-policies], [publications][government-publications], and other information about what government is doing. Hopefully it will make it easier to [read about][government-consultations] and contribute to government thinking before it becomes policy. You can also find information about [government ministers][government-ministers], [departments and organisations][government-departments] and the UK's interests and policies in the [rest of the world][government-world].

One nice touch is the short links to government departments -- try [www.gov.uk/fco][government-fco], [www.gov.uk/mod][government-mod] or [www.gov.uk/hmrc][government-hmrc], for example.

[<img src="/images/blog/consultations.thumb.png" style="width: 100%"/>][government-consultations]

While the site looks great (spades of kudos to [Jason](/jason-cale), [Ben Terrett][ben-terrett], [Mark Hurrell][mark-hurrell], [James Weiner][james-weiner], [Frances Berriman][frances-berriman] and everyone else who worked on it), there's also a wealth of software *behind-the-scenes*, modelling the structure of government and the workflow that departments and organisations will use to publish and administer the site.

Rather than trying to teach how government works to an existing CMS, we have focussed on directly modelling ministers, organisations, policies and all of the other entities that are involved in government, and have build the content layer on top of that model. We are confident that this approach is going to pay dividends when it comes to getting the data out into the public via APIs.

It's not often that you get to work on software where the end users are the citizens of an **entire country**, and we'd be remiss not to thank [Neil][neil-williams], [Pete][pete-herlihy] and [all our comrades at GDS][whitehall-contributors].

There's a lot more work to do, but we're confident that [GDS][gds] will [listen to users' feedback][government-feedback] and continue to [release early and release often][release-early-release-often]. So why not take the [site for spin][govuk-inside-government].

[^capped]: Yes, it's "[CAPPED-UP-COS-WE-MEAN-BUSINESS](http://digital.cabinetoffice.gov.uk/2012/02/07/writing-simply/)".

[paul-password-removal]: https://twitter.com/#!/tomskitomski/status/174605673743659010
[govuk-inside-government]: https://www.gov.uk/government
[govuk]: https://www.gov.uk/
[gds]: http://digital.cabinetoffice.gov.uk/
[week-140]: /week-140
[neil-williams]: https://twitter.com/#!/neillyneil
[neil-blog-post-1]: http://digital.cabinetoffice.gov.uk/2012/02/28/introducing-the-next-phase-of-the-gov-uk-beta/
[neil-blog-post-2]: http://digital.cabinetoffice.gov.uk/2012/02/28/inside-government-a-few-highlights/
[continuous-deployment]: http://www.startuplessonslearned.com/search/label/continuous%20deployment
[govuk-beta-first-release]: http://digital.cabinetoffice.gov.uk/2012/01/31/beta/
[government-news]: https://www.gov.uk/government/news-and-speeches
[government-policies]: https://www.gov.uk/government/policy-topics
[government-publications]: https://www.gov.uk/government/publications
[government-consultations]: https://www.gov.uk/government/consultations "Consultations"
[government-ministers]: https://www.gov.uk/government/ministers
[government-departments]: https://www.gov.uk/government/organisations
[government-world]: https://www.gov.uk/government/world
[release-early-release-often]: http://www.catb.org/~esr/writings/cathedral-bazaar/cathedral-bazaar/ar01s04.html
[government-feedback]: https://www.gov.uk/feedback
[government-fco]: https://www.gov.uk/fco
[government-mod]: https://www.gov.uk/mod
[government-hmrc]: https://www.gov.uk/hmrc
[government-cabinet]: https://www.gov.uk/government/organisations/cabinet-office "The Cabinet Office on INSIDE GOVERNMENT"
[government-tackling-homelessness]: https://www.gov.uk/government/policies/tackling-homelessness-and-rough-sleeping "Tackling homelessness and rough sleeping"
[bis-thumbnail]: /images/blog/bis.thumb.png
[consultations-thumbnail]: /images/blog/consultations.thumb.png
[tackling-homelessness-thumbnail]: /images/blog/tackling-homelessness-and-rough-sleeping.thumb.png
[whitehall-contributors]: https://github.com/alphagov/whitehall/contributors
[pete-herlihy]: https://twitter.com/yahoo_pete
[james-weiner]: https://twitter.com/jamesweiner
[ben-terrett]: https://twitter.com/benterrett
[mark-hurrell]: https://twitter.com/markhurrell
[frances-berriman]: https://twitter.com/phae

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-mead
:created_at: 2012-02-29 12:45:00 +01:00
:updated_at: 2012-02-29 12:45:00 +01:00
:page_title: Inside Government