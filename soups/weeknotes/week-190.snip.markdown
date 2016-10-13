Week 190
========

This week's notes may not be as comprehensive as usual, because I was caught up with moving house and then away in Sardinia[^sardinia] -- I'm still knee-deep in boxes. Apologies to those concerned if I've missed something important.

The week started with the annoying incident of the burglar(s) in the night-time - there was a break-in at our office and some of our stuff was stolen. Needless to say, sorting this out took up a lot of [Chris][], [Tom][] & [James A][]'s time. Anyway the police are on the case and we await developments...

In the meantime, we've continued to beaver way on [Inside Government][] with our [GDS][] team-mates. It feels as if there's been a welcome increase in feedback with a round of user testing focussing on the [specialist guides][], lots of content being bulk-imported from existing sites, and more editorial people using the publishing tool for real.

After the server problems we had last week, [James A][] changed [Printer][] [to use PostgreSQL][use-postgres] instead of Redis which has led to a significant drop in memory use on our Linode box. And earlier in the week I noticed [Google Webmaster Tools][] was reporting a lot of 404s & 500s on [our website](/), so I spent a while trying to sort that out. Today I spent some time trying to add [Rack::MailExceptions][] to give us better visibility of such problems.

James A has also been exploring different approaches for marrying [Harmonia][]'s framework-agnostic domain model with a persistence mechanism. He's tried out a few approaches in different branches and has come to the conclusion that "Rails and 'Good OO' are definitely at odds and sacrifices on both sides will be required; the key is really understanding those sacrifices so they don't cause friction when we come back to the code later".

While I was away I made some more progress on a significant new release of [Mocha] which should mean an end to monkey-patching the [Test::Unit][] and [MiniTest][] test libraries. I ran into a lot of problems with VM "power-down" exceptions on [Travis-CI][] while doing this, but as always the Travis team were very [responsive][] & [helpful][]. I also pushed out a patch release of Mocha to cope with new test library releases.

This week I also saw the [Travis CI bot][] in action. I received a Mocha [pull request][] already stamped as having built successfully on Travis. I was able to review the pull request in a matter of minutes and push the "merge" button with confidence - altogether a very streamlined process.

Last, but definitely not least, we're still struggling to get some momentum behind [GFR](/) projects and to make progress towards our company goal. It sounds as if there are a few different opinions about why this is so and how we might make things better. But hopefully we can have a good chat about this when we all get together in the office this coming week.

-- James M.

[^sardinia]: I was a hanger-on at the [European Conference on Visual Perception][ECVP], which gave me the chance to observe the workings of an academic conference and compare it with techie conferences I've attended. I went to the session on [Open Science][] which had some interesting talks.

[Chris]: /chris-roos
[Tom]: /tom-ward
[Inside Government]: http://inside-inside-gov.tumblr.com/
[GDS]: http://digital.cabinetoffice.gov.uk/
[specialist guides]: https://www.gov.uk/specialist
[James A]: /james-adam
[Printer]: /printer
[use-postgres]: https://github.com/freerange/printer/commit/4c53a2dbc36572631f7386fb55c9334ae882215e
[Harmonia]: http://github.com/freerange/harmonia
[Google Webmaster Tools]: https://www.google.com/webmasters/tools
[Rack::MailExceptions]: https://github.com/rack/rack-contrib/blob/master/lib/rack/contrib/mailexceptions.rb
[Mocha]: http://gofreerange.com/mocha/docs
[Test::Unit]: https://github.com/test-unit/test-unit
[MiniTest]: https://github.com/seattlerb/minitest
[Travis-CI]: http://travis-ci.org
[responsive]: https://twitter.com/travisci/status/243277263091671040
[helpful]: https://twitter.com/travisci/status/243030960671707136
[Travis CI bot]: https://github.com/travisbot
[pull request]: https://github.com/freerange/mocha/pull/101
[ECVP]: http://ecvp2012.uniss.it/
[Open Science]: http://openscience.org

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2012-09-09 22:11:00 +01:00
:updated_at: 2012-09-09 22:11:00 +01:00
:page_title: "Week 190"
