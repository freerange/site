Show and Tell 33
================

[James][james-mead] and I were joined by [Rob C][rob-chatley], [Rob D][rob-dupuis], [Ben G][ben-griffiths], [Chris P][chris-patuzzo] and [Tom S][tom-stuart] for our 33rd Show & Tell.

![Show & Tell 33 drinks](/images/blog/2017-06-14-show-and-tell-33.jpg)

---

## Todayomatic

Rob D's current contract involves him doing quite a bit of remote pairing with an office-based development team. He explained the problem of trying to find availability in one of the 20+ office meeting rooms for his office-based pair to use. Each room has its own Google Calendar but the standard calendar interface doesn't make it easy to see the availability of those rooms at a glance.

Rob's solution is [Todayomatic][todayomatic]: a JavaScript app that connects to your Google Calendar account to display a list of all your calendars along with their periods of availability. A text box allows you to filter the calendars on display (e.g. "meeting room") so that you can quickly see availability of the rooms you're interested in.

![Rob D showing Todayomatic at Show & Tell 33](/images/blog/2017-06-14-show-and-tell-33-rob-d.jpg)

I wondered whether Google Calendar's Find a Time feature might be suitable but it sounds as though having to first create an event and then invite all 20+ meeting rooms means that this is less than ideal.

James wondered whether [Appointment Slots][google-calendar-appointment-slots] might help but no one knew too much about them.

---

## Countdown in the Cyber Dojo

Rob C told us about a [Countdown][countdown]-like game he co-presented with [Jon Jagger][jon-jagger] at the [ACCU 2017 conference][accu-2017]. Jon explains the premise of the game in [his blog post][accu-countdown]:

> In the TV version, contestants play individually and have 30 seconds to find the longest word using only a small set of letters. In this version, contestants play in teams, and have ~7 minutes to write the smallest valid C++ program containing a small set of tokens.

![Rob C and the Cyber Dojo at Show & Tell 33](/images/blog/2017-06-14-show-and-tell-33-rob-c.jpg)

Rob has since converted the game to Ruby and we split into pairs to play a couple of rounds. Each round lasted a couple of minutes during which we had to write the smallest "valid" Ruby code that included a number of tokens. I enjoyed the challenge of trying to bend Ruby a bit in order to reduce the amount of code we had to write.

While the Ruby solutions might be valid syntax they don't necessarily "run" at the moment. There was some discussion afterwards about adding the requirement of having the code run in addition to being valid syntax.

---

## Writing an app's history

A number of things have got Ben thinking about the information we can get from the current state of a code base:

* [James's experiment in generating Sequence Diagrams from running code][show-and-tell-32-sequence-diagrams].
* His, in his own words, unfashionable prejudice against commit comments.
* A recent experience of handing a project over to a customer and them deleting the git history in order to open source the app.

He's been experimenting with constructing a history based on the state of a codebase. He thinks it should be possible to order the tests in such a way as to minimise the amount of application code that needs to be added between one test and the next.

The first problem is in working out how to order the tests. His current approach is to run all the tests individually and to find the one with the lowest coverage score (i.e. it requires the smallest amount of app code to run). He repeats the process until he has all the tests ordered.

With the tests ordered he runs each of them in turn and uses code coverage to determine the minimum amount of code required to make those tests pass. Each test and its related code is then committed to git to build some kind of "ideal" history of the app.

![Ben G showing an extracted git history at Show & Tell 33](/images/blog/2017-06-14-show-and-tell-33-ben-g.jpg)

Ben explained that the early commits contain code that doesn't really change, followed by tests/commits that change the app code and finally code that's untested. He's interested in what we might learn from the "shape" of the app when viewed in this way.

Ben used his [Basic interpreter][ben-g-basic-interpreter] for this experiment. Despite the test suite being very quick to run it still takes quite a while to determine the order of tests and then to generate the history.

This reminded me a bit of James M's [method log][method-log] in that I think they're both trying to extract somewhat hidden information from code.

---

## Roombot

Tom explained that the meeting room naming convention (famous world locations) in their new office means that people are spending/wasting time trying to work out where to go when they're invited to meetings.

![Tom S showing Roombot at Show & Tell 33](/images/blog/2017-06-14-show-and-tell-33-tom-s.jpg)

Tom's built Roombot in an attempt to reduce the amount of time it takes to find the location of a meeting. Roombot sits in the company Slack channel and responds to questions about meeting room locations with a map and description of the location.

Roombot uses fuzzy matching to handle mis-spellings and is aware of alternative names for some of the locations used e.g. Ayers Rock for Uluru.

Tom's using a slight variation of the [Levenshtein distance][levenshtein-distance] algorithm to provide the [fuzzy matching][wikipedia-approximate-string-matching]. There are plenty of Rubygems that implement this algorithm but none of them seemed to handle this variation so [Tom was left to build his own][tom-s-levenshtein].

Tom didn't want people to have to message Roombot directly which means he has to have an always-on Websocket connection so that Roombot receives the stream of all messages. He was hoping to be able to host it on a free Heroku plan but this always-on requirement meant that he had to settle for the Hobby plan instead.

He's already had requests for additional functionality like adding support for booking rooms. Not only would this be really quite involved but he's also happy for the app to have a single purpose and to do that one thing well.

Tom's demo of Roombot reminded me of a recent interaction in one of the GDS Slack channels. Someone asked a general question about the post room opening hours and Slackbot responded with the answer. It's one of the very few times I've seen a bot used in a way that I can understand/appreciate.

---

## Show & Tell 34

We're hosting our 34th Show & Tell on Wednesday 12th July. Please [get in touch][contact] if you'd like to join us.

[accu-2017]: https://conference.accu.org/site/index.html
[accu-countdown]: http://jonjagger.blogspot.co.uk/2017/05/accu-c-countdown-pub-quiz.html
[ben-g-basic-interpreter]: https://github.com/techbelly/BASIC
[ben-griffiths]: https://twitter.com/beng
[chris-patuzzo]: http://chris.patuzzo.co.uk/
[contact]: /contact
[countdown]: https://en.wikipedia.org/wiki/Countdown_(game_show)
[cyber-dojo]: http://cyber-dojo.org/
[google-calendar-appointment-slots]: https://support.google.com/calendar/answer/190998?hl=en
[james-mead]: /james-mead
[jon-jagger]: http://jonjagger.blogspot.co.uk/
[levenshtein-distance]: https://en.wikipedia.org/wiki/Levenshtein_distance
[method-log]: https://github.com/freerange/method_log
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://github.com/robd
[show-and-tell-32-sequence-diagrams]: /show-and-tell-32#james-m---sequence-diagrams
[todayomatic]: https://robd.github.io/todayomatic/
[tom-s-levenshtein]: https://gist.github.com/tomstuart/9e4fd5cd96527debf7a685d0b5399635
[tom-stuart]: http://codon.com/
[wikipedia-approximate-string-matching]: https://en.wikipedia.org/wiki/Approximate_string_matching

:name: show-and-tell-33
:updated_at: 2017-06-20 14:03:58.547308000 +01:00
:created_at: 2017-06-20 14:03:58.547298000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 33
:layout: show-and-tell-layout
:extension: markdown
