Week 823
========

Week beginning Monday, 21st October 2024.

The three of us met up at our office at [Space 4][] on Tuesday. We filled the whiteboard with some ideas of things we could try to implement for Mission Patch now we are close to simplifying the code and moving more of it server-side (see [week 822][]). We also reviewed our financial situation and off the back of that decided to spend a bit of time contacting people to let them know we're available to work.

*We're available for work! We wrote a bit more about what we can do and what our ideal project would look like on [the LRUG mailing list][]. [Drop us a line](mailto:lets@gofreerange.com) any time*

Following that we talked a bit more about [jam.coop][] and whether we want to apply for some grant funding to continue work on it. We finished the day at [The Faltering Fullback][] and were joined for a while by some of our [Animorph][] friends.

For the rest of the week we continued working on our internal projects.

Chris spent some time making progress on the Rubyforge redirect project (see [week 820][]). We hope to build up a community-sourced list of dead links Rubyforge and redirect them to somewhere sensible. Chris made some progress creating Fastly redirect rules, setting up a sensible 404 page to explain to people how they can fix dead links and writing a small service that can store the access logs for these links so that it's easy to spot ones that are being used but currently 404. He ran the proposed approach by the folks at Ruby Central and started work to make it real.

James finished up the port of the SvelteKit mission patch designer to Rails/Hotwire. I'm really impressed by how well this works - it feels as snappy and responsive as the original client side app. James built it following the principle of [progressive enhancement][], starting with a version that works without JavaScript at all and then adding enough Stimulus and Turbo Streams code to make it feel more reactive when JavaScript is available.

I worked through the feedback [Guy][guy-moorhouse] sent us on the implementation of his new homepage designs and fixed up a few CSS issues. I also sent a lot of business development emails and took some time out to deal with some of the paperwork caused by trying to move house.

We're all feeling a bit under the weather this afternoon, winter viruses catching up with us it seems. All being well we'll shake that off and be back in business in week 824. Have a good weekend!

[Space 4]: https://space4.tech/
[week 822]: /week-822
[week 822]: /week-820
[the LRUG mailing list]: http://lists.lrug.org/pipermail/chat-lrug.org/2024-October/026192.html
[jam.coop]: https://jam.coop
[The Faltering Fullback]: https://falteringfullback.com/
[Animorph]: https://www.animorph.coop/
[progressive enhancement]: https://en.wikipedia.org/wiki/Progressive_enhancement
[guy-moorhouse]: https://www.futurefabric.co/

:name: week-823
:updated_at: 2024-10-25 15:18:00.000000000 +01:00
:created_at: 2024-10-25 15:18:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 823
:extension: markdown

[^1]:
