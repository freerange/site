Show and Tell 33
================

14 Jun 2017

Rob C, Rob D, Ben, Chris P, Tom S, JM, CR

## Rob D

Remote pairing. Problem booking meeting rooms with the office-based participant. 20+ meeting rooms each have a Google Calendar.

Created https://robd.github.io/todayomatic/. Authorise it to access your Google Calendars and then use it to find availability in your calendars.

I wondered whether Google Calendar's Find a Time might be suitable but it sounds as though having to invite all 20+ meeting rooms might make it harder than hoped. Tom S says he runs into problems doing this at FL.

JM suggested that Appointment Slots might help but no one knew too much about them.

---

## Rob C

Jon Jagger
Rob and John were discussing the idea of a Countdown-like game to run
  They ran it using c++ at a conference.
No one outside the UK knows what Countdown is
cd.chattley.com
http://cyber-dojo.org/
http://jonjagger.blogspot.co.uk/2017/05/accu-c-countdown-pub-quiz.html
We had to write the smallest "valid" Ruby code that included a number of tokens.
The Ruby solutions might be valid syntax but they don't necessarily "run" at the moment. A suggested addition was to ensure that the code runs as well as is just valid.

Cyber Dojo uses animal names instead of people/team names so that you can avoid identifying people taking part. James M and I were Elephant.

Cyber Dojo is easy to self-host and also easy to configure to run your own tests.

---

## Ben G

Based on:

* Sequence diagrams from running code that JM showed
* Prejudice against commit comments
* Handing a project over to a customer and they deleted the git history in order to open source the app

Ben's experimenting with constructing a history based on the state of the code right now. If it's possible to order the tests then you could determine the minimum set of code required to satisfy those tests at each point and commit those.

The difficult problem is working out how to order the tests. He's currently running all the tests individually and finding the one with the lowest coverage score (i.e. it requires the smallest amount of app code to run). He repeats the process until he has all the tests ordered.

Once the tests are ordered he runs each of them are uses code coverage to determine the minimum amount of code required to satisfy those tests.

He said you end up with app code that doesn't really change, then tests/commits that change app code and then finally app code that isn't tested.

He's interested in the "shape" of the app when viewed in this way.

Ben used his [Basic interpreter](https://github.com/techbelly/BASIC) in order to test his theory. It's ideal because the tests run quickly. Even though the tests for the basic interpreter run very quickly, it still takes time to run the this test ordering/coverage report.

The result is an "ideal" git history without you having had to think about it too much/at all.

Reminds me of James M's method log that attempts to add meaning/semantics to the code.

Using git blame allows you to determine which tests required what code.

---

## Tom S

New building. Meeting room names are confusing.

Built roombot that responds to questions like "where is machu picchu" with a coloured map indicating the location of the meeting room as well as some written instructions.

Handles aliases, e.g. Ayers Rock for Uluru.

It uses fuzzy string matching to attempt to deal with mis-spellings of room names. This uses a variation of the Levenstein distance algorithm that allows you to do substring matches. Although there are lots of Gems that implement the Levenstein distance, none of them handle the substring distance bit that Tom needed so he wrote his own.

Ben G mentioned using Trigrams to do something similar with ministers names matching at GDS.

Tom wanted the bot to listen to all conversations so that it would work without people having to use @roombot to contact it. This required an "always-on" connection to respond to Webhook messages from Slack. This meant that the Heroku hobby plan wasn't good enough and Tom had to go for the $7/month plan.

There were questions about whether Tom had considered extending the functionality but he said he thinks it's fine that it's a simple app that does a single thing. People in the company have been asking whether they can use it to book rooms but that's a whole lot more work.

This reminded me of seeing someone ask a question in GDS Slack. They asked a general "anyone know the post room hours" question and received a response from Slackbot giving him an answer. That's the first time I've seen a bot used in a way that I could understand/appreciate.

## Show & Tell 34

TODO: Add details here

:name: show-and-tell-33
:updated_at: 2017-06-15 11:50:44.294337000 +01:00
:created_at: 2017-06-15 11:50:44.294326000 +01:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 33
:layout: show-and-tell-layout
:extension: markdown
