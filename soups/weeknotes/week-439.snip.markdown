Week 439
========

This was another quiet week. Chris L's paternity leave continued and Chris R spent some time getting his boat's engine working so he can take it to a boatyard in a couple of weeks time.

We continued work on the Manuals Publisher app for GDS, although what with one thing and another, we didn't manage to spend loads of time on it. I continued work on the spike to identify and resolve problems which might make it hard to do the migration, and Chris R worked on actually making the required changes to manual section attachments so that their single source of truth is the Publishing API.

Chris R & I worked remotely for most of the week, but we met up at [TOG Albert House][] on Wednesday afternoon prior to our regular [Show & Tell][show-and-tell-events] event that evening. We worked at [TOG Bloomsbury][] on Thursday, before Chris headed off on holiday on Friday.

For a long time, we've been using our own [custom integration][webhooks] between [Harmonia][] and Trello, but on Thursday I switched us over to use the [official Harmonia Trello integration][harmonia-trello-integration]. It seems to be working well so far and hopefully it means we can retire our custom web app shortly. [James A][] was also kind enough to implement a variation in the behaviour to support our use case, whereby archiving a card marks a task as done (i.e. no need for a "Done" list).

That's all folks!

-- James

[show-and-tell-events]: /show-and-tell-events
[TOG Albert House]: https://www.theofficegroup.co.uk/office/albert-house/
[TOG Bloomsbury]: http://www.theofficegroup.co.uk/office/the-bloomsbury-building/
[webhooks]: https://github.com/freerange/webhooks
[Harmonia]: https://harmonia.io/
[harmonia-trello-integration]: https://harmonia.io/#features
[James A]: http://lazyatom.com/

:name: week-439
:updated_at: 2017-06-19 15:03:31.466597000 +01:00
:created_at: 2017-06-19 15:03:31.466585000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 439
:extension: markdown
