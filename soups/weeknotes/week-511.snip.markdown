Week 511
========

We spent the week working from our office and remotely. We've been focussed on the [Crown Marketplace app][crown-marketplace] development.

We've got new neighbours in our building which means there's an energetic buzz about the place; although this buzz can sometimes be quite loud - it turns out that chipboard walls aren't the most effective at blocking sound :-)

I continue to be impressed by [appear.in][appear-in] for remote meetings with multiple participants.

## Crown Marketplace

We've been doing quite a bit of spiking on the work required to add the Facilities Management framework to the Crown Marketplace app: we're exploring how to best use the data to build a useful service for buyers.

[James][james-mead] and I spent a while implementing [GOV.UK Design System][govuk-design-system]'s [Error Messages][govuk-error-messages] and [Error Summary][govuk-error-summary] components into the app. I'm really impressed by how easy it is to use the Design System. Although I'm still not entirely sure about the [BEM][bem] convention that is uses - I understand the importance of a shared convention but it does seem to result in lots of duplication. I also found myself wanting some way of testing that we'd applied the markup correctly: I'd love to have some additional confidence that we'd applied the accessibility related elements/attributes correctly.

[Rowe IT][rowe-it] helped CCS update the AWS infrastructure and deploy a completely new environment for user testing. Rowe have used [Terraform][terraform] to codify the infrastructure which makes these sort of updates much easier than they might otherwise be.

James continued to make progress on using Ruby 2.5.3 in AWS CodeBuild. James's [PR to add Ruby 2.5.3 support][aws-pr-143] has been merged and should hopefully be generally available soon (if it's not already).

I've been getting my head around [AWS Cognito][aws-cognito]. [Ben][ben-griffiths] spiked on integrating it with the Crown Marketplace app and I've been getting it ready to deploy.

## Virtual assistant

[Liz][liz-griffiths] has been doing a great job of helping out with our various admin tasks since starting in [week 508][week-508]. Thanks, Liz :-)

## Show & Tell dwindling attendance

Ben and I were the only people at Show & Tell 49 this month. And attendance has been generally dwindling recently. I asked on the [mailing list][show-and-tell-mailing-list] why people might not be keen on coming and have received replies from a few people. If you have any thoughts, or any suggestions for improvements then [we'd love to hear them][contact-us].

## CoTech

We're just under a month away from the annual [CoTech gathering][cotech-2018]. It's going to be hosted at [Space4][space4] this year. It might not be as grand as [Wortley Hall][wortley-hall], the venue used in 2016 and 2017, but it's a lot closer for those of us in London. There's already quite a bit of [discussion][cotech-community] about what people are planning to do at the gathering and I'm looking forward to catching up with people I've not seen for a while.

Until next time.

-- Chris

[appear-in]: https://appear.in/
[aws-cognito]: https://aws.amazon.com/cognito/
[aws-pr-143]: https://github.com/aws/aws-codebuild-docker-images/pull/134
[bem]: http://getbem.com/
[ben-griffiths]: /ben-griffiths
[contact-us]: /contact
[cotech-2018]: https://community.coops.tech/t/cotech-space4-gathering-29-30th-november-2018/1033
[cotech-community]: https://community.coops.tech/
[crown-marketplace]: https://github.com/Crown-Commercial-Service/crown-marketplace
[govuk-design-system]: https://design-system.service.gov.uk/
[govuk-error-messages]: https://design-system.service.gov.uk/components/error-message/
[govuk-error-summary]: https://design-system.service.gov.uk/components/error-summary/
[james-mead]: /james-mead
[liz-griffiths]: https://twitter.com/elderberry
[rowe-it]: http://www.roweit.co.uk/
[show-and-tell-mailing-list]: https://groups.google.com/a/gofreerange.com/forum/#!forum/show-and-tell
[space4]: http://space4.tech/
[terraform]: https://www.terraform.io/
[week-508]: /week-508
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-511
:updated_at: 2018-11-02 11:41:08.064714000 +00:00
:created_at: 2018-11-02 11:41:08.064709000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 511
:extension: markdown
