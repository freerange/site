Week 886
========

Happy New Year!

## Back at GDS

We've kicked off the new year by starting a project on the [GOV.UK Publishing Platform](https://www.gov.uk/guidance/how-to-publish-on-gov-uk) with our friends at [dxw](https://www.dxw.com/). We're grateful to dxw for the opportunity and are keen to get stuck in to tackle some of the problems that have been affecting publishers and consumers of GOV.UK content for some time.

We've spent the week getting old accounts reactivated, reminding ourselves of the publishing landscape and participating in workshops to understand the problem space. I particularly enjoyed spending the day with our new team in [The White Chapel Building](https://www.thewhitechapelbuilding.london/) on Wednesday.

## Code Club

I ran the first [Code Club](https://codeclub.org/en/) at my daughter's school on Tuesday afternoon and was really pleased with how it went. I had intended to get stuck into some of [Raspberry Pi's Scratch projects](https://projects.raspberrypi.org/en/technology/scratch) but was met with some blank stares when talking about Scratch so I decided to get them using [Code Club World](https://codeclubworld.org/) instead. They quickly got the hang of the block-based model and were soon designing their avatars, styling their robot's t-shirts, making music and making their robots dance. I haven't spent any real time with Code Club World since working on it back in 2020 and it made me feel really proud of how well it stands up in this sort of environment.

I'm restricted on the number of children I can have in a single session so have decided to ask people to book on each week (rather than taking the same children for half a term, for example) to increase the chance that different children get to participate. The downside of this is the increased admin required to manage each session. Hopefully I'll be able to streamline the process as I do more.

## Jam

[Chris](/chris-lowis) and I are meeting a friend of Polly's today to discuss [Jam](https://jam.coop). They have a background in the music industry and remain interested in addressing the inequity within it. We're grateful to Polly for the intro and looking forward to getting our heads back into Jam after the Christmas break.

We've agreed to pay for a consultation with a lawyer from [Sprintlaw](https://sprintlaw.co.uk/) to see whether we can get to the bottom of our [regulatory responsibilities when it comes to PSD2](https://sprintlaw.co.uk/articles/psd2-explained-what-uk-businesses-need-to-know-about-the-payment-services-directive-and-compliance/) and more.

## Mocha

Mocha's test suite helped [James](/james-mead) [discover](https://ruby.social/@floehopper/115825812420451595) and [report a regression in JRuby](https://github.com/jruby/jruby/issues/8976).

The [release of Ruby 4.0](https://www.ruby-lang.org/en/news/2025/12/25/ruby-4-0-0-released/) allowed James to [upgrade from the release candidate in Mocha's test matrix](https://github.com/freerange/mocha/commit/6ced202561b8cb7a44aa1d9e771a08b76758ecd4) and then [temporarily fix a warning which it introduced](https://github.com/freerange/mocha/commit/a0fc7798e4ec74d1af9719e7d28399daa967af3d) while also opening a [PR to fix the problem in the upstream yard project](https://github.com/lsegal/yard/pull/1638).

James applied for some funding from the [gem fellowship](https://gem.coop/fellowship/) to help maintain Mocha.

## AWS CDK stacks

James updated some of our internal projects that use the [AWS CDK](https://en.wikipedia.org/wiki/AWS_Cloud_Development_Kit) (e.g. [Google Drive Backup](https://github.com/freerange/google-drive-backup)) to [run `cdk diff` when a PR is opened](https://github.com/freerange/google-drive-backup/pull/188) and to post the results as a comment on that PR. If the PR is merged to main then a separate GitHub workflow runs `cdk deploy` to apply any changes in production. Although generally useful this change also gives us confidence to [enable Dependabot updates](https://github.com/freerange/google-drive-backup/pull/189) in these repos. Thanks, James!

Until next time.

-- Chris

:name: week-886
:updated_at: 2026-01-09 10:28:53.723939711 +00:00
:created_at: 2026-01-09 10:28:53.723938651 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 886
:extension: markdown
