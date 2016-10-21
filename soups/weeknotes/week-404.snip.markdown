Week 404
========

[James][james-mead] continued to hold the fort while I spent quite a bit of the week working on the houseboat.

## Mocha

James released [version 1.2 of Mocha][mocha-1-2-0] on Monday. Yay! Unfortunately, our happiness was short lived as we learnt that this release included some code that could [cause the Ruby interpreter to hang][mocha-issue-272]. Eeek! James spent a good part of Tuesday and Wednesday investigating the problem before opening [bug 12832 in the Ruby bug tracker][ruby-bug-12832]. It was picked up pretty quickly and described as a "showstopper" bug!

James talked about the release and problems at our Show & Tell on Wednesday. Talking about it gave us an idea for a [fix which James applied toward the end of the week][mocha-6f1c8b9]. Having successfully applied the fix, we [released v1.2.1][mocha-1-2-1] on Saturday. Good job, James.

### Digital Co-ops Retreat

James booked our train tickets for this event in November. Trying to coordinate various modes of transport meant that this ended up taking a couple of hours. We've made a note of it being another task could potentially be handled by an admin assistant.

## Hookline

James did quite a bit of work on the [Hookline][hookline] music library app during the week:

* Enabled multipart uploads to S3 to fix a problem with uploading a large zip file of the entire music catalog. James was pleasantly surprised by how much easier this was than expected.

* Added the Delayed Job web interface so that we can see what's going on behind the scenes.

* Made a number of small interface improvements to make the site more consistent.

* Enabled the [Papertrail logging add-on in Heroku][heroku-papertrail] so that we have more visibility of the application logs. I've not tried it yet but James was impressed by how intuitive and easy to use the interface is.

These improvements meant that he was able to do the final import of data from Dropbox on Friday before asking Hookline to start using the app in anger. This is a great step and we're looking forward to getting some real user feedback.

## GFR

I spent some time trying to understand [Vanilla][vanilla-rb] and our site in general. I got my hands dirty making a number of changes/improvements which have left me with a much better understanding of how it all works.

James created a GFR organisation on Heroku. It wasn't strictly necessary but we thought it might make managing our shared apps slightly easier. It seems as though we've had to upgrade our [errbit instance][errbit] to use a paid hobby plan but that doesn't feel like a bad thing.

We continued to update our address with various organisations since moving to [UK Postbox][uk-postbox] address.

## Show & Tell 25

We hosted our [25th Show and Tell][show-and-tell-25] on Wednesday evening. It took me ages to write it all up afterwards. Partly because I ended up researching more about the topics that were discussed and partly because I always struggle to turn my notes into coherent sentences and paragraphs.

James created a new [Slack room for our Show and Tell events][show-and-tell-slack] and deployed [Slackin][slackin] to Heroku to allow people to join. We have no idea whether it'll be useful but figured we'd try it given it's easy to do and feels like relatively low risk.

[errbit]: https://github.com/errbit/errbit
[heroku-papertrail]: https://elements.heroku.com/addons/papertrail
[hookline]: http://hookline.tv/
[james-mead]: /james-mead
[mocha-1-2-0]: https://github.com/freerange/mocha/releases/tag/v1.2.0
[mocha-1-2-1]: https://github.com/freerange/mocha/releases/tag/v1.2.1
[mocha-6f1c8b9]: https://github.com/freerange/mocha/commit/6f1c8b9b6aa4253c8a990befcb89648f09512242
[mocha-issue-272]: https://github.com/freerange/mocha/issues/272
[ruby-bug-12832]: https://bugs.ruby-lang.org/issues/12832
[show-and-tell-25]: /show-and-tell-25
[show-and-tell-slack]: https://gfr-show-and-tell-slack.herokuapp.com/
[slackin]: https://github.com/rauchg/slackin
[uk-postbox]: https://www.ukpostbox.com/
[vanilla-rb]: https://github.com/lazyatom/vanilla-rb

:name: week-404
:updated_at: 2016-10-13 10:18:31.537752000 +01:00
:created_at: 2016-10-13 10:18:31.537739000 +01:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 404
:extension: markdown
