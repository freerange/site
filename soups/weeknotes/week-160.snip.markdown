Week 160
========

In her never-ending battle against the [increase of entropy][video about time] and the accumulation of [kipple][definition of kipple], Harmonia has decreed that I should once again note the week. Despite having [tended][Harmonia issue 10] [Harmonia's][Harmonia issue 4] [wounds][Harmonia issue 6], it looks like I jinxed matters with [last week's][Week 159] comments about the unpredictability of randomness. Anyway here goes...

### Handover

This week we've started to handover the [Whitehall app][whitehall app] to some of our colleagues from the [Citizen][GovUK] team now that their [public release][citizen beta release] is out of the way. In a typical IT project handover, the project grinds to a halt while the outgoing team writes wads of documentation before departing abruptly and leaving the incoming team to pick up the pieces. However, we aim to tackle a handover in a more [collaborative and iterative][Agile Manifesto] manner. And to this end we've spent some time this week helping our new team-mates get up to speed. It's great to see how quickly they're picking things up and [Paul][Paul Battley] lifted our spirits by [patching rake][rake patch] so we can run our tests faster using Ruby v1.9.3.

It's always tricky keeping a project moving forward while changing the makeup of its team and I think progress on the project has faltered a bit this week due to a shortage of GDS developer time. Happily this looks to have been addressed and the project should be back up to full speed in the coming week. It certainly helps that the Whitehall app is already integrated into the [GovUK ecosystem][] and that we have comprehensive suites of [automated][Whitehall tests] [tests][Whitehall features] which can act both to prevent regression and as living documentation.

[Jase][Jason Cale] also deserves a lot of kudos for the way he's applied "just enough design" at every stage of the project. This means the app isn't now weighed down with too much design baggage and is in great shape for bringing into line with the latest look & feel of the [citizen-facing site][GovUK]. Jase has also made further progress in his mission to make the site design thoroughly [responsive][Responsive design].

### Public release

This week has also seen a welcome influx of writers and editors from across government, such that the Whitehall team now forms _two_ serried ranks amidst the hot-desking mêlée at [Aviation House][]. It's really good to have these folk on-site and able to give us direct feedback on what we've built and great to see new content on the site bringing it to life. Although internally we're [always releasing][Continuous Deployment], the imminent _public_ release of the Whitehall app has been [focussing][Pete Herlihy] [minds][Neil Williams] on [story prioritisation][Whitehall Pivotal].

### In other news

[Our accountant][3CA] started finalising our end-of-year accounts and asked us to work out the value of our [work in progress][Accountancy WIP]. [James][James Adam] did an admirable job of figuring out what that meant and came up with the necessary numbers. I fiddled about with (and tried not to curse) the HMRC [Basic PAYE Tool][HMRC BPT] in order to apply some new tax codes. It looks like [Tom][Tom Ward] has given [recap][Recap repos] a bit more love and [James][James Adam] has converted [this site][GFR] to use it for deployment. I fixed [one bug][Mocha issue 52] in [mocha][Mocha repos] only to discover that I'd caused a more [serious one][Mocha issue 65]. During the week I played with [#blue][Hashblue] for the first time in a while and was impressed how snappy it was - thanks to the recent work by [Chris][Chris Roos], [Tom][Tom Ward] and the [O2 gang][O2 labs].

On Wednesday we managed to get the whole company together for a pancake lunch at [My Old Dutch][] on High Holborn. As we slowly reduce our involvement with the Whitehall app and our friends at [GDS][], we're hoping to carve out some time in between client work to think more about [what direction][GFR how and why] we should take with [Go Free Range][GFR] in the months ahead. In particular we've always thought we'd like to [build some products of our own][GFR whats next], partly for fun and partly to develop alternative revenue streams. Interesting times!

Hasta la vista.

&mdash; James.

[video about time]: http://www.youtube.com/watch?v=9R1OX4fZqKY
[definition of kipple]: http://www.urbandictionary.com/define.php?term=kipple
[Week 159]: /week-159
[Harmonia issue 10]: https://github.com/freerange/harmonia/issues/10
[Harmonia issue 4]: https://github.com/freerange/harmonia/issues/4
[Harmonia issue 6]: https://github.com/freerange/harmonia/issues/6
[whitehall app]: http://digital.cabinetoffice.gov.uk/2011/08/24/government-corporate-websites-in-eye-popping-3d/
[GovUK]: http://gov.uk
[citizen beta release]: http://digital.cabinetoffice.gov.uk/2012/01/31/beta/
[Paul Battley]: http://po-ru.com/
[rake patch]: https://github.com/alphagov/whitehall/commit/77f10d4e062a1cfbc24a0f918ed516676ec3a4f5
[Aviation House]: http://en.wikipedia.org/wiki/Kingsway_(London)#Buildings
[Pete Herlihy]: https://twitter.com/#!/yahoo_pete
[Neil Williams]: https://twitter.com/#!/neillyneil
[GDS]: http://digital.cabinetoffice.gov.uk/
[Agile Manifesto]: http://agilemanifesto.org/
[GovUK ecosystem]: http://github.com/alphagov/
[Whitehall tests]: https://github.com/alphagov/whitehall/tree/master/test
[Whitehall features]: https://github.com/alphagov/whitehall/tree/master/features
[Jason Cale]: /jason-cale
[Responsive design]: http://www.alistapart.com/articles/responsive-web-design/
[Continuous Deployment]: http://www.startuplessonslearned.com/search/label/continuous%20deployment
[Whitehall Pivotal]: https://www.pivotaltracker.com/projects/367813
[GFR]: /
[GFR whats next]: /week-153#whats-next
[GFR how and why]: /week-154#how-and-why
[James Adam]: /james-adam
[Tom Ward]: /tom-ward
[Chris Roos]: /chris-roos
[O2 labs]: http://o2labs.co.uk/
[Recap repos]: https://github.com/freerange/recap
[Mocha issue 52]: https://github.com/freerange/mocha/issues/52
[Mocha issue 65]: https://github.com/freerange/mocha/issues/65
[Mocha repos]: http://github.com/freerange/mocha
[Hashblue]: http://hashblue.com
[My Old Dutch]: http://www.myolddutch.com/
[3CA]: http://www.3ca.co.uk/
[Accountancy WIP]: http://www.3caonline.com/2011/01/work-in-progress/
[HMRC]: http://www.hmrc.gov.uk/
[HMRC BPT]: http://www.hmrc.gov.uk/paye/tools/basic-paye-tools.htm

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2012-02-12 22:00:00 +01:00
:updated_at: 2012-02-12 22:00:00 +01:00
:page_title: Week 160
