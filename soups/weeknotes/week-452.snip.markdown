Week 452
========

Howdi folks,

[Chris][chris-lowis] was away for a short break in Leeds from Monday to Wednesday before returning on Thursday. [James][james-mead] and I worked together on Monday to Wednesday and spent the majority of the time pairing on the [Asset Manager][asset-manager] project.

We finished up a bit earlier than usual on Friday so that we could have our regular retrospective over a pint before James headed off to Cambridge for a university reunion.

---

## Asset Manager

We ramped up to serving 100% of Asset Manager asset requests by proxying to [S3][aws-s3] early in the week. We had a quick look at the relevant graphs and this all seems to be working as expected, which is great!

Once we were happy with the Asset Manager assets, we switched our focus to investigating how to serve [Whitehall][whitehall] image assets from Asset Manager. It wasn't completely obvious how this was going to work so we spiked on a couple of approaches in order to de-risk the actual work. We also started discussing how we might serve Whitehall PDF assets from Asset Manager. There's even more uncertainty around these as there are additional access controls that need to be taken into account. Talking about it helped me feel more comfortable that we were going to be able to migrate these too.

I enjoyed pairing with James and found it really useful given that neither of us were particularly sure of what we needed to do.

---

## Space4

We had a good day working from [Space4][space4] on Wednesday and I enjoyed the group lunch that was arranged.

[Harry][harry-robbins] configured the DNS so that the website is now live at [http://space4.tech][space4]. James and I then spent an hour or so talking [Polly][polly-robbins] through the current set-up and how to make changes. While I think our use of a single static page was a pragmatic choice to get _something_ live, I can see that we might want to switch to something that's going to be easier for Polly to edit in the near future.

We also transferred the [site source][space4-source] to a new space4 GitHub organisation. This name was actually taken but we were allowed to register it under [GitHub's Name Squatting Policy][github-name-squatting]. This is the second time we've contacted GitHub about taking an unused account and I've been really impressed on both occasions.

---

## Wortley Hall planning

We spoke to [Aaron][aaron-hirtenstein] on Friday to coordinate some of the tasks involved in the planning of the [CoTech][co-tech] [Wortley Hall][wortley-hall] event. We're using [Agile Collective][agile-collective]'s self-hosted [Taiga][taiga] to share the workload. I don't remember seeing this app before but have been impressed in our use of it so far.

---

## Patterns for Decentralised Organising

We've ordered our tickets to the [Patterns for Decentralised Organising workshop][decentralised-organising] being run by [Loomio][loomio] and [Enspiral][enspiral] on Saturday 23 Sep. Not only does it sound right up our street but Aaron attended the event in Manchester and said he really enjoyed it.

---

## Show & Tell 36

We hosted our 36th [Show & Tell][show-and-tell-events] on Wednesday. I really enjoyed the evening and hope to finish the write-up in the next couple of days.

---

## GFR

James was tasked with donating to charity this month and chose the very worthy [RNLI][rnli].

I finally got around to reviewing our insurance renewal with [Hiscox][hiscox]. It'd been on my list for the past few weeks but it took the fast approaching deadline to prompt me to actually do anything about it.

We also renewed our [UK Postbox][uk-postbox] subscription for another year given that it seems to be working well.

James converted our shared [1Password][1password] vault from AgileKeychain to OPVault.

I think that about covers it for week 452. Until next time, folks.

-- Chris

[1password]: https://1password.com
[aaron-hirtenstein]: https://twitter.com/zizanio64
[agile-collective]: https://agile.coop/
[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[decentralised-organising]: https://www.eventbrite.co.nz/e/patterns-for-decentralised-organising-london-tickets-36951594213
[enspiral]: http://enspiral.com/
[github-name-squatting]: https://help.github.com/articles/name-squatting-policy/
[harry-robbins]: https://twitter.com/harryrobbins?lang=en
[hiscox]: http://www.hiscox.com/
[james-mead]: /james-mead
[loomio]: https://www.loomio.org/
[polly-robbins]: https://uk.linkedin.com/in/polly-robbins-80136940
[rnli]: https://rnli.org/
[show-and-tell-events]: /show-and-tell-events
[space4]: http://space4.tech/
[space4-source]: https://github.com/space4/space4
[taiga]: https://taiga.io/
[uk-postbox]: https://www.ukpostbox.com/
[whitehall]: https://github.com/alphagov/whitehall
[wortley-hall]: https://www.wortleyhall.org.uk/

:name: week-452
:updated_at: 2017-09-18 13:48:22.885633000 +01:00
:created_at: 2017-09-18 13:48:22.885617000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 452
:extension: markdown
