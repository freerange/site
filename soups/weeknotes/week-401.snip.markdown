Week 401
========

G'day, folks. I hope you're all well.

## Hookline

We continued to work on the [Hookline][hookline] music library this week.

I mostly worked on the ability for Hookline clients to view the entire catalogue. This relatively simple feature took quite a while to develop as I allowed myself to get distracted by [Heroku Pipelines][heroku-pipelines]. I wanted to be able to demo my work in progress and thought the best way to do that would be to spent a day or two setting up a Pipeline to enable [Review Apps][heroku-review-apps]... It required me to codify our dependencies in an app.json file, investigate an alternative solution for running migrations on deployment (it would seem that [Release Phase][heroku-release-phase] tasks are the recommended way of doing this) and finally enabling Review Apps in the pipeline. I learnt quite a lot by doing this but I'm really not sure it was the best use of time for the project.

[James][james-mead] continued to work on manipulating [ID3][id3-tags] data in our MP3 files. He added support for writing artwork to the MP3s and took the opportunity to refactor and improve the code in the process.

Amy, Mike and I had a Skype chat on Friday morning. Mike currently administers the Hookline library manually so we wanted to understand how close we are to having something he could use. The feedback was promising and it sounds as though we're not too far away from them switching to use the app as the canonical source of their library. There are __loads__ of improvements we can make but having Hookline use the app will really help prioritise what we work on.

## GOV.UK Notify

James and I participated in some [GOV.UK Notify][govuk-notify] user testing at GDS on Wednesday. We agreed that I'd drive and James would observe. I was tasked with integrating Notify into a sample Python app. Despite not knowing much Python, and only a little bit about Notify, it was really quite straight forward. Good job, Notify team!

## Harmonia and Trello

James fixed a small bug in the [Webhooks app][gfr-webhooks] we use to integrate [Harmonia][harmonia] and [Trello][trello]. Task reassignment in Harmonia wasn't being mirrored in Trello when the Trello card had been moved out of the "To Do" list (e.g. it had been started and moved to the "Doing" list). While not a huge problem (tasks are normally reassigned before they're started), it was frustrating when it happened and it's great that it's now fixed.

## Open Collective host for the UK

James continued to try find out more about what would be involved in us becoming an [Open Collective][open-collective] host in the UK. We're interested in trying to understand the potential benefit versus the effort required.

## Virtual office

We agreed a while back that we should sign up for a service that provides us with an address and scans any mail we receive. Having done some research to compare various services, we agreed to sign up with [UK Postbox][uk-postbox]. Signing up and uploading electronic copies of the various documents they need to verify our identities was all straight forward. The only hiccup was that I'd misunderstood the packages they offer and signed up for something that wasn't quite right for what we're after. They were quick to point this out and switch us to a more appropriate service. So far, so good.

Until next time.

-- Chris

[gfr-webhooks]: https://github.com/freerange/webhooks
[govuk-notify]: https://www.gov.uk/government/publications/govuk-notify/govuk-notify
[harmonia]: https://harmonia.io/
[heroku-pipelines]: https://devcenter.heroku.com/articles/pipelines
[heroku-release-phase]: https://devcenter.heroku.com/articles/release-phase
[heroku-review-apps]: https://devcenter.heroku.com/articles/github-integration-review-apps
[hookline]: http://hookline.tv/
[id3-tags]: https://en.wikipedia.org/wiki/ID3
[james-mead]: /james-mead
[open-collective]: https://opencollective.com/
[trello]: https://trello.com/
[uk-postbox]: https://www.ukpostbox.com/

:name: week-401
:updated_at: 2016-09-26 17:38:17.037738000 +01:00
:created_at: 2016-09-26 17:38:17.037731000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 401
:extension: markdown
