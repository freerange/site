Week 510
========

A few weeks have passed since I should have written these weeknotes, but looking at our calendar I see that we spent a couple of days at CCS for sprint planning, retrospective and demo. James and Ben took some time off at the end of the week.

## Crown Marketplace

We continued work on adding user journeys for schools to procure supply teachers including adding support for some of the less common journeys.

- We [upgraded to the latest version of Ruby, 2.5.3](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/772153d7f3e95fc52c54ae73982c96537eae1ac9) following a security fix. As the official AWS Codebuild build images hadn't yet included the fix, we ended up [creating our own build image](https://github.com/Crown-Commercial-Service/CMpDevBuildImage_Ruby) and opening a pull request against [the AWS codebuild project](https://github.com/aws/aws-codebuild-docker-images/issues/133).
- We [did some CSS trickery](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/ca85e0870a98f33ee69cb33fac8f3b9f80afb19e) to make the page footer stick to the bottom of the page even when there was very little page content.
- We [extracted a bunch of hard-coded strings](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/eacd512b13a84061787f1d9899839f9a91237e1e) into a localisation file to allow other people on the team to make copy changes more easily and make our test suite less brittle in the face of these changes.
- We reduced some [duplication in the views](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/5d3db187ff46a3c9564cc44992271093e683c3a6) to allow us to consistently display error messages in a manner consistent with the [GOV.UK design system](https://design-system.service.gov.uk/).



<!-- add content here -->

:name: week-510
:updated_at: 2018-11-16 14:48:18.042942000 +00:00
:created_at: 2018-11-16 14:48:18.042935000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 510
:extension: markdown
