Harmonia (a.k.a. Chaos Administration)
======================================

At Free Range everyone is responsible for everything, but who is responsible for delegating work so everything gets done? [Harmonia, the Chaos Administrator][harmonia].


Background[^mentioned]
----------

One of the things that separates us from typical companies is that we don't operate within a hierarchy, or with a fixed set of roles.

We don't divide the business responsibilities in arbitrary ways; none of us want to be an accountant or an office manager. We're not a big enough company to require any dedicated staff to grease the wheels of our organisation. That's by design.

But **shit still needs to get done**, so rather than waste energy discussing or rota planning each chore, we use this software to automatically delegate those chores within the team.


### Can't people just remember, or decide between themselves on an ad-hoc basis?

Not really, no. We've learned that by sacrificing a bit of individual freedom, you actually liberate much more of your energy and focus for the important (and more enjoyable) aspects of your business.

Instead of wasting any time trying to remember who did what last week and then assign duties for this week, we don't even think about it until Harmonia sends us our assignments.

This is really the key insight: when dealing with the boring responsibilities or chores in life, **automate as much as possible**, then work hard to **eliminate thought and decision making** surrounding the rest.


### Why not a rota?

A rota may be functionally equivalent, but rotas need to be maintained and updated. Chaos is an eternal fountain. More seriously, we value the ability to run without maintenance over absolute fairness.

There's also something to be said for more aggressive repetition than a rota would provide; if I end up having to run the invoices three times in a row, I'm going to be in a better position to spot further automation opportunities than if it was a task I only did every other month. And then everyone wins.


### What kind of tasks are suitable?

Anything that can be reduced to a clear set of instructions with minimal amount of decision making. Importing bank transactions, sending invoices, and assigning temporary responsibilities (like {l week-138,weeknotes}) are ideal, but more will certainly follow[^office-admin].


Under the hood
-----

[Harmonia's implementation][harmonia] is almost trivially simple. It uses cron and emails, via the [whenever][] and [mail][] gems respectively. Mail templates are stored as <tt>ERb</tt> files.

Currently assignments are made at noon on Monday each week, as dictated by the [schedule.rb][] file.


'YMMV[^ymmv]'
-----

At the moment this is clearly tailored towards our company, and this may always be the case. It's also a bit of an experiment: in the future we might discover a problem working this way. However, for the moment it's freed up a good chunk of organisational energy that we can now pour back into our creative work.

One of the great things about being in a business where you *build* stuff is that you can produce bespoke tools that fit perfectly to your flow, but more importantly can be adapted as the organisation, and as your understanding of how things work, changes. I don't think there are many industries where the overlap between the tools we produce and the tools we use to operate are so similar. It would seem a shame not to take advantage of that, don't you think?

If you have any thoughts about this, we'd love to hear from you, either via [email](mailto:lets@gofreerange.com), [twitter][], your own blog or even a pull request ;)

_Note that [Harmonia][] is now a product owned and run by [Exciting][]._

[^mentioned]: We mentioned Harmonia in {l week-138}, but since [the README was sparse those few weeks ago](https://github.com/freerange/harmonia/blob/2a6f68bc5aafe8ddc5119c2e70cc62ce3da01955/README.md), I thought it was worth expanding and explaining in more detail. I've expanded on [the new README](https://github.com/freerange/harmonia/blob/master/README.md) here.
[^office-admin]: Who's going to keep our new office stocked with fruit and milk? :)
[^ymmv]: "Your mileage may vary" - in other words, please take these ideas and test them, adapt them, reformulate them to suit your own circumstances.

[harmonia]: https://github.com/freerange/harmonia
[Harmonia]: https://harmonia.io
[Exciting]: https://exciting.io
[whenever]: https://github.com/javan/whenever
[mail]: https://github.com/mikel/mail
[schedule.rb]: https://github.com/freerange/harmonia/blob/master/config/schedule.rb
[twitter]: https://twitter.com/freerange

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2011-09-25 13:55:00 +01:00
:updated_at: 2011-09-25 13:55:00 +01:00
:page_title: Harmonia (a.k.a. Chaos Administration)
