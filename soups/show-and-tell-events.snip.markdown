## Show and Tell Events

We host this event on the third Wednesday of every month, starting at 6.30pm and running for two hours. The idea is for people to demonstrate side projects, open-source projects, etc in an informal setting with the aim of garnering friendly and constructive feedback.

We started running the event back in April 2014 at the suggestion of Tom Stuart. At the time we had our own office with plenty of spare space and so we encouraged friends to come and make use of it. This led to lots of informal demos and chats about what we were all working on. We really enjoyed these sessions and so with Tom's encouragement, the GFR Show & Tell was born.

### Event format

You don't need to have something to demo in order to participate. So if you're interested please do come along - your constructive feedback on other people's projects will always be welcome. Demos don't have to be technical in nature, although they should probably be aimed at a relatively technical audience. Reading the notes on previous events (see links below) will give you an indication of the types of projects that people have demoed in the past.

The event is always very informal with a typical turnout of 4-10 people. Depending on how many people have things to show, you will typically have up to about 20 mins to demo your thing. We aim to hold events in a room with wi-fi and a projector or large screen, usually connected to an Apple TV and/or Chromecast. Let us know in advance if you have specific requirements and we'll do our best to accommodate you.

The event usually lasts about 2 hours, but, for those who can spare the time, we usually decamp to a nearby hostelry for post-event refreshment. This is a chance to continue interesting discussions initiated during the event.

If you have any questions, please [get in touch][email-address].

### Communication

* [Announcement mailing list][]

  **Note 1.**
  Trying to subscribe to this Google Group with an email address doesn't appear to work: the "Join This Group" link in the email you receive is broken and results in a 404. You should be able to join if you're signed in to a Google account. Alternatively, send us an email and we can invite you.

  **Note 2.**
  Subscribing to the Google Group will automatically invite you to a recurring calendar event for the Show & Tell.

* [Slack channel][] <%= render partial: 'shared/slackin' %>
* [Events on Upcoming][upcoming-event-series]
* [Events on Attending (deprecated)][attending-event-series]
* [Event series on Lanyrd (deprecated)][lanyrd-event-series]

### Upcoming event

* TBA

### Past events

<ul class="show-and-tell_list" reversed>
  <% ShowAndTell.all.to_enum.with_index(1).reverse_each do |snip, index| %>
    <%= content_tag(:li, link_to_snip(snip), value: index) %>
  <% end %>
</ul>

### Early events (recorded in week notes)

* [Show and Tell 3][]
* [Show and Tell 2][]
* [Show and Tell 1][]

[Announcement mailing list]: https://groups.google.com/a/gofreerange.com/d/forum/show-and-tell
[Slack channel]: https://gfr-show-and-tell-slack.herokuapp.com/
[upcoming-event-series]: https://upcoming.org/@freerange?when=past
[attending-event-series]: https://attending.io/freerange
[lanyrd-event-series]: http://lanyrd.com/series/gfr-show-and-tell/
[Show and Tell 3]: /week-286#show-and-tell
[Show and Tell 2]: /week-282#show-and-tell
[Show and Tell 1]: /week-274#show-and-tell
[email-address]: mailto:lets@gofreerange.com

:is_page: true
:created_at: 2014-10-23 18:02:00 +01:00
:updated_at: 2015-07-31 13:20:00 +01:00
:layout: wiki-layout
:page_title: Show and Tell Events
