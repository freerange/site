Week 442
========

I felt this week was a bit fragmented and we struggled a bit to find our focus. For various reasons all three of us only met up to work together on Friday, although on three other days two of us did manage to meet up for at least half a day, mostly at [TOG East Side][].

Earlier in the week Chris R did [some good work][smart-answers-pr] helping some GDS developers export [Smart Answers][] "start" pages into the [Content Store][] so they and other "start" pages can be rendered consistently across [GOV.UK][]. He visited the new [GDS office in Whitechapel][whitechapel-building] to discuss this face-to-face with the relevant people.

At various points during the week, we all got a bit sucked into a [lengthy discussion][loomio-jekyll-thread] about switching the [CoTech website][] from Wordpress to a static generator like Jekyll. I'm not sure we managed to completely explain the advantages of making this change, but I do think a number of important issues have been raised, in particular how to best collaborate online. To this end we're even more keen to help people within the CoTech network learn how to use tools like `git` and Github and hope to organise some skill-sharing sessions in the months ahead.

On Wednesday we were all working from home and started the day with a useful video/audio catch-up using [appear.in][]. Although for the first time we had a couple of niggles getting started, in general I'm finding this a better option than Skype or Google Hangouts. In particular I haven't noticed the usual gradual degradation in audio as the call goes on.

On Thursday morning, Chris L & I met up at the [Ministry of Coffee & Social Affairs][] in the [TOG Whitechapel][] foyer. I finished up some tweaking of the documentation Chris had written explaining where we've got to with the refactoring of [Manuals Publisher][] and added a [potted history of the project][manuals-publisher-history] to put it in context. We're pretty happy with [the end result][manuals-publisher-docs]. Chris continued his spike into switching the [Asset Manager][] to use [AWS Simple Storage Service][aws-s3] (S3).

After lunch we met up with Daniel Roseman, Tim Blair & Paul Bowsher to discuss where we've got to with Manuals Publisher and what our plans are for the work on asset management across GOV.UK. They seemed very happy with our Manuals Publisher documentation - Paul said he's going to hold it up as an example to follow.

Regarding asset management, we agreed that our main priorities should be firstly to move assets off NFS onto S3 and secondly to reduce code duplication across Asset Manager & [Whitehall][] apps. They also introduced us to Steve Harker, the Technical Architect responsible for GOV.UK infrastructure, who explained how our work fitted in to their wider plans.

On Friday we mostly worked on GFR stuff. After a pleasant lunchtime discussion in the sun on a slightly damp patch of grass in [Pancras Square][], we agreed a way to [draw a line under][loomio-jekyll-thread-comment] the discussion about the CoTech website mentioned above. Chris R then started trying to make some of the changes to the CoTech website which had precipitated our proposal in the first place.

We ended the day with a couple of drinks in the sun next to the canal outside [The Lighterman][] where we held our weekly retrospective.

That's all folks!

-- James

[TOG East Side]: https://www.theofficegroup.co.uk/office/east-side/
[Smart Answers]: https://github.com/alphagov/smart-answers
[Content Store]: https://github.com/alphagov/content-store
[smart-answers-pr]: https://github.com/alphagov/smart-answers/pull/3126
[GOV.UK]: https://www.gov.uk/
[whitechapel-building]: http://thewhitechapelbuilding.london/building.html
[CoTech website]: https://coops.tech
[loomio-jekyll-thread]: https://www.loomio.org/d/FnHRkxCO
[appear.in]: https://appear.in
[Ministry of Coffee & Social Affairs]: https://departmentofcoffee.com/
[Manuals Publisher]: https://github.com/alphagov/manuals-publisher/
[manuals-publisher-docs]: https://github.com/alphagov/manuals-publisher/blob/657a1f2084482662230643445af42813ac1be30a/README.md#documentation
[manuals-publisher-history]: https://github.com/alphagov/manuals-publisher/blob/657a1f2084482662230643445af42813ac1be30a/docs/history.md
[aws-s3]: https://aws.amazon.com/s3/
[Asset Manager]: https://github.com/alphagov/asset-manager/
[Whitehall]: https://github.com/alphagov/whitehall/
[Pancras Square]: https://www.kingscross.co.uk/pancras-square
[loomio-jekyll-thread-comment]: https://www.loomio.org/d/FnHRkxCO/comment/1409145
[The Lighterman]: http://thelighterman.co.uk/
[TOG Whitechapel]: https://www.theofficegroup.co.uk/office/133-whitechapel-high-street/

:name: week-442
:updated_at: 2017-07-10 12:42:19.812773000 +01:00
:created_at: 2017-07-10 12:42:19.812762000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 442
:extension: markdown
