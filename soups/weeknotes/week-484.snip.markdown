Week 484
========

[James][james-mead] took an impromptu week off having seen the favourable weather forecast at the end of last week.

[Ben][ben-griffiths], [Chris][chris-lowis] and I moved into a larger 6-person office at [Ministry of Startups][ministry-of-startups] on Monday, and have spent the week working on a project for [BBC R&D][bbc-rd].

We've got some [availability in the near future][upcoming-availability] so please [get in touch][email-link] if you have a project you think we can work together on.

## BBC R&D

BBC R&D have developed a story editor and engine that allows them to create voice controlled stories (e.g. [The Inspection Chamber][inspection-chamber]) to run on multiple devices. They've asked us to explore how these stories might use information from arbitrary external services in order to make them feel more dynamic, and to come up with some demos of how this might be used.

We spent a while familiarising ourselves with the code before getting our hands dirty with some changes. Fortunately this familiarisation didn't take too long after we've spent the past couple of weeks exploring and playing with voice controlled devices.

The story editor already includes the ability to branch a story based on the result of executing some arbitrary JavaScript code. We started by overloading this to return the response from an HTTP request if the code to execute looks like a URL. This allowed us to get something working without having to make changes to both the editor and the engine, and it revealed that we needed to make the engine asynchronous so that we could wait for the response from the external service. Ben updated the engine to make it use [Promises][javascript-promises] all the way through while Chris and I paired on deploying the engine to AWS and hooking it all up so that we could interact with a story using the [Alexa Developer console][alexa-console].

We've finished the week with a simple game of [Heads or Tails][coin-flipping], authored in the story editor and running on a version of the engine that we've deployed to Lambda. The game asks you to choose heads or tails, makes a request to a web service that randomly chooses heads or tails and then lets you know whether you've won. It's _very_ simple but it gives us a good foundation to build on in order to create some more interesting demos.

Until next time.

-- Chris

[alexa-console]: https://developer.amazon.com/docs/devconsole/about-the-developer-console.html
[bbc-rd]: https://www.bbc.co.uk/rd
[ben-griffiths]: /ben-griffiths
[chris-lowis]: /chris-lowis
[coin-flipping]: https://en.wikipedia.org/wiki/Coin_flipping
[email-link]: mailto:lets@gofreerange.com
[inspection-chamber]: http://www.bbc.co.uk/rd/blog/2017-09-voice-ui-inspection-chamber-audio-drama
[james-mead]: /james-mead
[javascript-promises]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises
[ministry-of-startups]: http://www.ministryofstartups.com/
[upcoming-availability]: /upcoming-availability

:name: week-484
:updated_at: 2018-04-27 15:52:41.510409000 +01:00
:created_at: 2018-04-27 15:52:41.510391000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 484
:extension: markdown
