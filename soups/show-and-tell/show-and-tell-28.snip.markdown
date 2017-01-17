Show and Tell 28
================

* When: Wed 11 Jan 2017
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io][attending-io-show-and-tell-28]

[Chris R][chris-roos] and I were joined by [Ben G][ben-griffiths], [Chris L][chris-lowis], [Pablo][pablo-manrubia], [Murray][murray-steele], [Matt][matt-wynne], [Rob C][rob-chatley] and [Tom S][tom-stuart] for our 28th Show & Tell.

[attending-io-show-and-tell-28]: https://attending.io/events/gfr-show-and-tell-28/
[chris-roos]: /chris-roos
[ben-griffiths]: https://twitter.com/beng
[chris-lowis]: http://blog.chrislowis.co.uk/
[pablo-manrubia]: http://pmanrubia.info/
[murray-steele]: https://twitter.com/hlame
[matt-wynne]: http://www.mattwynne.net/
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[tom-stuart]: http://codon.com/


## James M - GFR Video

This is [a project][gfr-video] we built some time ago based on our experiences [helping FutureLearn with their video solution][futurelearn-video]. It's still fully operational, but incurring some ongoing maintenance & hosting costs, so we've been wondering what to do with it.

First I explained a bit about the history and motivations behind the project. I then demonstrated signing up and uploading a video - the video is currently transcoded into MP4 & WebM formats with both SD & HD versions available; a poster frame is also extracted. The app supplies some example HTML to [render the video in a video.js player][gfr-video-test].

I then went on to explain some possible next steps for the project (e.g. selling via AWS Marketplace, or as a Heroku add-on) and asked what people thought. Murray suggested we focus on finding one customer who is prepared to pay for the service as it stands, i.e. without doing any more development. There wasn't much other feedback, but it wasn't obvious to me whether this was because the project doesn't have much merit or whether I just didn't do a very good job of explaining it!

[gfr-video]: /gfr-video
[futurelearn-video]: /futurelearn-video
[gfr-video-test]: https://freerange.github.io/videos-test/


## Tom S - Learning React

Tom talked about his experience of running a "Learning React" workshop at FutureLearn. He thinks that React contains a couple of really great ideas, but also a load of incidental complexity. The aim of the workshop was to explain and demonstrate those great ideas.

The workshop was a one-hour session split into two halves: (1) Tom explaining the essential concepts illustrated with slides and drawing on the React documentation; and (2) groups working through an exercise to build a fake React from scratch guided by failing (Jasmine/jsdom) tests provided one at a time by Tom.

The workshop didn't go as smoothly as Tom had hoped and he was looking for ideas on how to make it better. He'd already realised that an hour was no where near long enough; it should be more like half a day.

Tom had each of the failing tests in a commit on a secret local branch and he pushed them up onto a git remote one at a time for the groups to work on. This meant that everyone had to wait for the slowest group to finish before they could move on to the next test. He thinks it would be better if people could work at their own pace.

In hindsight Tom also realised he didn't make it clear enough how important it was for each group to have at least one person who was proficient with the JavaScript language itself versus e.g. the jQuery API. Matt suggested that for future workshops it might be good if Tom gets those people to stand up and to have groups form around them.

At the end the idea was to replace the real React with the fake React in an example single-page app and to show that it still worked. Recognising that passing tests aren't sufficient feedback for some people, Rob C thought that it might be better if they were encouraged to try out their fake React in the app throughout the process. Matt suggested it might be worth showing the app working with the real React at the beginning to illustrate its power.


## Matt W - Cucumber Pro

Matt was an early contributor to the open-source version of [Cucumber][] in collaboration with [Aslak Hellesøy][]. The two of them then co-wrote [The Cucumber Book][] and along with a few others started doing Cucumber-related training & consultancy, forming [Cucumber Ltd][] in 2013.

At some point they realised that generating all their revenue from training & consultancy was really hard work. That's when the idea of [Cucumber Pro][] was born; the idea is to become more of a product company, generating the majority of revenue from commercial products.

Currently the Cucumber Pro product is an enterprise version of [Relish][], providing a tool for Business Analysts to interact with [Gherkin][] scripts. Each instance is deployed in a Docker container behind the client's firewall using [Replicated][].

The app has been built using an [Event Sourcing][] and [CQRS][] architecture. Matt is acting as the Product Owner which he's finding challenging but interesting.

The idea of the product is that Business Analysts and other interested parties can use an on-line user interface to discuss features published from the git repo. Other current or planned functionality: visualising the results of running the features and viewing videos of browser interactions generated from the features.

It costs US$10 per user per month for an in-house installation and it sounds as if they've already got a bunch of these. They reckon there's currently just about enough functionality for enthusiastic people to pay and they plan to add more functionality over time to attract a wider group of users.

[Cucumber]: https://cucumber.io
[Aslak Hellesøy]: http://aslakhellesoy.com/
[The Cucumber Book]: https://pragprog.com/book/hwcuc/the-cucumber-book
[Cucumber Ltd]: https://beta.companieshouse.gov.uk/company/SC456793
[Cucumber Pro]: https://cucumber.io/pro
[Relish]: https://www.relishapp.com/
[Gherkin]: https://github.com/cucumber/cucumber/wiki/Gherkin
[Replicated]: https://www.replicated.com/
[Event Sourcing]: https://martinfowler.com/eaaDev/EventSourcing.html
[CQRS]: https://martinfowler.com/bliki/CQRS.html


## Chris R

### IFTTT

Chris briefly mentioned that we've started using [IFTTT][] to create Trello cards based on events in Google Calendar. In the main we're happy with how this is working, however, IFTTT doesn't provide any notification if there was an unrecoverable error. It is possible to see errors in the activity log, but only if you proactively go looking.

Chris asked if anyone else was using IFTTT or something similar and whether they'd run into this problem. Matt said he's used [Zapier][] a lot and it seems to handle failures well. In the Zapier documentation it mentions being able to get [notifications of failures][zapier-email-settings], so maybe we'll give it a try.

The conversation also reminded James of an open-source alternative called [Huginn][].

[IFTTT]: https://ifttt.com
[Zapier]: https://zapier.com/
[zapier-email-settings]: https://zapier.com/help/settings/#email-settings
[Huginn]: https://github.com/cantino/huginn


### GitHub commit order

Chris demonstrated how GitHub sometimes [displays commits in the wrong order][github-wrong-order]. This can be very frustrating for someone reviewing a pull request with a carefully curated series of commits which appear in the wrong order.

Murray reckoned that commits are always displayed on GitHub in Author Date order. Chris thought that was correct, but that there's no obvious way to use the `git` command line to display commits in this order which feels a bit wrong; as far as he knows there doesn't appear to be a way to tell `git` to ignore the topological order.

Chris tried a few experiments in re-writing git history and force-pushing to GitHub and some geeky hilarity ensued when he got everyone to say in what order the commits would be displayed. Tom encouraged Chris to write all this up in a blog post.

[github-wrong-order]: https://help.github.com/articles/why-are-my-commits-in-the-wrong-order/


## Chris L - Web Audio Weekly

Chris produces this email newsletter for all things associated with the [Web Audio API][]. He's been using [TinyLetter][] to send the newsletter, but he's been hosting the archives on his [personal website][chris-lowis]. He has an impressive 1,500 subscribers and runs a [public Slack channel][web-audio-slack] with nearly 300 members using [Slackin][].

Recently he was struggling a bit with the motivation required to produce the newsletter regularly, so he decided to invest a bit of time in the infrastructure. he showed us how he's moved the archives from his personal website to a new website, [www.webaudioweekly.com][]; this way the WAW newsletters aren't interleaved amongst his own blog posts. He built the new site using Jekyll and GitHub Pages.

Chris then explained some of [the tooling][waw-rakefile] he uses to write a newsletter. He uses [Pinboard][] to collate links that might be suitable for inclusion. A custom Rake task lists the most recent bookmarks from Pinboard, but excludes links already posted in previous newsletters. He then uses these bookmarks to post the newsletter to the archives in a markdown file. Finally he uses another Rake task to render the site in HTML, extract the main HTML content, and copy it to the clipboard ready for pasting into TinyLetter's WYSIWIG editor.

This tooling is a marked improvement on the previous incarnation and it's bolstered his motivation to work on the newsletter. This motivation has been given a further boost by sponsorship for the four upcoming February newsletters.

[Web Audio API]: https://www.w3.org/TR/webaudio/
[TinyLetter]: https://tinyletter.com/
[www.webaudioweekly.com]: http://www.webaudioweekly.com/
[web-audio-slack]: https://web-audio-slackin.herokuapp.com
[Slackin]: https://github.com/rauchg/slackin
[Pinboard]: https://pinboard.in/
[waw-rakefile]: https://github.com/chrislo/webaudioweekly/blob/master/Rakefile


## Show & Tell 29

Please [get in touch][contact] if you're interested in joining us for the next Show & Tell on Wednesday, 8th February 2017!

[contact]: /contact

:name: show-and-tell-28
:updated_at: 2017-01-17 12:29:06.763450000 +00:00
:created_at: 2017-01-17 12:29:06.763439000 +00:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 28
:layout: show-and-tell-layout
:extension: markdown
