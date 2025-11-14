Week 878
========

Week beginning Monday, 10th November 2025.

## Jam 🍓

We all got stuck into working on [jam.coop] this week which has been a lot of fun. On Monday, [Chris L] sent out a newsletter talking about some of the recently added functionality, e.g. [tagging] and licensing your music, metadata in purchased downloads, and [an albums Atom feed]. It's always nice being able to tell people about new features and it gave us a sense of the progress we've made.

Chris L has wired up [Zapier] to post a message in Slack whenever someone adds a new album based off the new Atom feed. I've found it really motivating to see a steady stream of music being added to the site. And it's nice to see the album artwork each time. [Chris R] has been observing how artists have been using the free text field on the album page and highlighting aspects we might want to represent more explicitly in the model. It's been great to see artists are already using the new tagging functionality that was added [last week].

Chris R has got through a mountain of work upgrading dependencies, notably [upgrading Rails from v8.0 to v8.1] in his usual rigorous style, and [reducing the number of N+1 SQL queries] among many other things. We've made a significant number of improvements to the developer experience of working on the project, e.g. make it possible to [run system tests in a visible browser], provide [alerts for exceptions that happen in background jobs], [fix attachment URLs in system tests], and provide [build notifications in Slack]. While these aren't public-facing, they should allow us to deliver features more quickly.

In other news, Chris L has been been making some improvements to how our newsletter mailing list is managed and I've been working on making a music player suitable for social media post previews using [OpenGraph][] and [oEmbed][].

## Mocha ☕️

Earlier in the week I spent quite a bit of time working out how to address [Étienne Barrié]'s [feedback on the Mocha v3 release candidate] which has been knocking around for rather longer than I care to admit. This mainly consisted of reducing the number of [Mocha] classes [polluting the test/spec namespace] and adding [a bunch of tricky-to-implement deprecation warnings] in a new v2.8.0 release to keep appease the [semantic-versioning] gods.

I then spent a chunk more time putting together a [2nd release candidate for Mocha v3] taking care to remove the deprecated functionality and incorporate a bunch of (mostly refactoring & tooling) improvements that [Nitish Rathi] did quite some time ago. It feels good to have got the project into a better state after some months of client-project-enforced neglect. If anyone has a change to try out the release candidate, I'd be extremely grateful!

It's both impressive and a bit scary to see the number of downloads for a new release climbing steadily - [v2.8.0] is already at 34K downloads after only 3 days! I do slightly lament that (since being taken over by GitHub) Dependabot's compatibility scores are no longer widely available, so it's difficult to know whether anyone is encountering problems with the new releases. However, I did manage to craft a GitHub pull request query to find [Dependabot PRs with a failing status]. Mercifully (so far!) none of these appear to be Mocha-related.

## Miscellaneous 🧩

We've made contact with a couple of organisations that [James Darling] mentioned in our visit to [NHS Digital] last week. Chris L has been keeping the co-operative fires burning by attending both a [Solid Fund] meeting and a [CoTech] meeting this week. And it was nice to see another co-op, [Cookiewolf], joining the CoTech family. During my Mocha investigations, I came across the [GOV.UK Dependabot Merger] which I plan to investigate in the near future.

Anyway, that's all for this week!

Until next time.

-- James

[jam.coop]: https://jam.coop
[Chris L]: /chris-lowis
[tagging]: https://jam.coop/tags/ambient
[an albums Atom feed]: https://jam.coop/albums.atom
[Chris R]: /chris-roos
[last week]: /week-877
[reducing the number of N+1 SQL queries]: github.com/freerange/jam-coop/pull/315
[upgrading Rails from v8.0 to v8.1]: https://github.com/freerange/jam-coop/pull/321
[run system tests in a visible browser]: https://github.com/freerange/jam-coop/compare/0425c72739cd213aa18905c520b42fe4b2738b28...cf329ae6abf6af4d1e07766142dcee0ea7f9b9df
[alerts for exceptions that happen in background jobs]: https://github.com/freerange/jam-coop/commit/ef244d09c8fa51ae52326a9cb421ca6362b74a7f
[fix attachment URLs in system tests]: https://github.com/freerange/jam-coop/pull/336
[build notifications in Slack]: https://github.com/freerange/jam-coop/pull/337
[OpenGraph]: https://ogp.me/
[oEmbed]: https://oembed.com/
[Étienne Barrié]: https://ruby.social/@bihi
[feedback on the Mocha v3 release candidate]: https://github.com/freerange/mocha/issues/736#issuecomment-3504348156
[polluting the test/spec namespace]: https://github.com/freerange/mocha/issues/766#issuecomment-3510906453
[a bunch of tricky-to-implement deprecation warnings]: https://github.com/freerange/mocha/blob/v2.8.0/lib/mocha/parameter_matchers/deprecations.rb
[semantic-versioning]: https://semver.org/
[2nd release candidate for Mocha v3]: https://rubygems.org/gems/mocha/versions/3.0.0.pre.rc.2
[Nitish Rathi]: https://github.com/nitishr
[James Darling]: https://abscond.org
[NHS Digital]: https://digital.nhs.uk/
[CoTech]: https://www.coops.tech/
[Solid Fund]: http://solidfund.coop/
[v2.8.0]: https://rubygems.org/gems/mocha/versions/2.8.0
[Dependabot PRs with a failing status]: https://github.com/search?q=%22bump+mocha+from%22+%22to+2.8.0%22+in%3Atitle+is%3Apr+author%3Aapp%2Fdependabot+language%3ARuby++status%3Afailure&type=pullrequests
[Cookiewolf]: https://cookiewolf.coop/
[GOV.UK Dependabot Merger]: https://github.com/alphagov/govuk-dependabot-merger
[Mocha]: https://mocha.jamesmead.org/
[Zapier]: https://zapier.com/

:name: week-878
:updated_at: 2025-11-14 15:23:02.390633000 +00:00
:created_at: 2025-11-14 15:23:02.390632000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 878
:extension: markdown
