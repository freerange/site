Week 399
========

This week we continued to split our time between company admin and our collaboration with [Hookline][], with a smattering of [Mocha][] development thrown in for good measure. We met up on three days of the week to work in the [Beech Street Barbican café][benugo-beech-st], often spending our lunchtimes sat out on the [Lakeside Terrace][] inside the Barbican Centre. We worked from home on the other two days.

## GFR

### Trello Farming

We had a long-overdue session going through our main company Trello board on Monday morning. It took us all morning, but it felt very productive - we went through pretty much *all* the cards, made lots of decisions, and got the board back into some semblance of order.

We decided to keep [Harmonia][]-assigned cards, which are usually more routine, in a new _Harmonia_ list separate from our _To Do_ list. We disassociated a bunch of one-off Harmonia-assigned cards from Harmonia, because we felt that the due date for these cards wasn't useful.

We also created a new _This Week_ list which we're aiming to use to set ourselves realistic goals for the week. The overall aim was to make it easier to identify the next thing to work on. We also want to get back into the swing of reviewing our Trello board together every week and have created a new Harmonia task to remind us to do this.

### Show & Tell

As Chris [mentioned recently](/week-396#show-and-tell) we're keen to inject a bit more life into our Show & Tell events. And to that end, after a bunch of research, Chris booked a [meeting room at Forge & Co][forge-and-co-meeting-rooms] for the [next Show & Tell event][show-and-tell-24]. We hope that holding the event in a proper room with a big display, wi-fi, etc, will encourage more people to attend. Please sign up and come along!

### Digital Co-ops Retreat

A few months back, I met up with [John Bevan][] of the [We Are Open co-op][] to talk about [co-operation between co-ops][coop-principle-6]. He mentioned this event back then and encouraged us to attend. We were a bit caught up with client work at that point and hadn't got round to doing anything about it.

However, we were recently been reminded about it by [Harry Robbins][] a partner at [Outlandish][] who has just set up a [Loomio][] group to encourage discussion about his [Megazord idea][]. There are definitely things about this idea that sound interesting and we've agreed to take a couple of rooms at the [Digital Co-ops Retreat][] which is due to be held in a [stately home near Sheffield][wortley-hall] in November.

If nothing else it'll be great to meet a bunch of people building co-operatives in a similar sector to us.

### Lab Rats

We've agreed to participate in a user research session for [GOV.UK Notify][]. I think the idea is that we'll be trying to use their documentation and client library to integrate an example app with the service. It's great that they're thinking about developers as "users" of their service and are actively trying to make developers' lives easier.

### Holiday Time

Since early this year when we were working on a more part-time basis, we've been recording our billable time using FreeAgent's time-tracking functionality. For a while now we've also been doing the same for non-billable work. This has allowed us to generate a very simple monthly report to keep track of where all our time goes!

On Monday we agreed that we'd incorporate holiday time into this report. Our holiday policy has always been very relaxed, but we're hoping this will give us visibility of any significant disparities.

### Co-working Spaces

Prompted by a card in Trello, I'd done a bit of research on co-working spaces in the previous week, but I was struggling with it - too many possibilities and not enough constraints!

In the end we decided that the lack of any kind of permanent base hadn't caused us enough "pain" to justify spending any more time researching this. So we're going to leave it for now. Suggestions on a postcard, please!

### Admin Assistant

We'd love to hire someone part-time to take on some of our company admin, but don't really know where to start. This is something that's come up a couple of times previously, but we've never done anything about it.

Does anyone have any recommendations - for an individual or how to find someone? We'd probably want to start with someone doing a few hours a week, but would hope that over time we could increase this.

## Mocha

On Wednesday Chris & I tried remote-pairing on Mocha. We used Google Hangouts for audio and screen-sharing and this worked alright to start with. However, as time went on, the audio deteriorated and we gave up.

Anyway, we made some good progress on work coming out of [Michael Grosser's original pull request][mocha-pr-244]. More specifically, we worked out that the change in Mocha's behaviour described in [this issue][mocha-issue-260] has resulted in correct behaviour, i.e. the previous behaviour was incorrect and effectively our recent changes have fixed an undiscovered bug.

We also [made a start on addressing some other inconsistencies][mocha-pr-262], but this was curtailed by the problems with the Hangout audio.

I've really struggled to find the time and motivation to work on the project over the last year or two, but having Chris get involved is really helping. Thanks, Chris!

## Music Library

We continued to make improvements to the quality of the code and the app's domain model, but we've also started adding a bunch of functionality related to ID3 metadata on MP3 files. I think the improvements in the codebase are already paying dividends and I'm really enjoying working on the project.

### Quality Improvements

We added [Rubocop][] a while ago, but last week we enabled the Rails-related cops and added the cops from [Rubocop RSpec][]. Although I was a little sceptical about some of the rules from the latter, I'm happy that, in fixing the violations, we've ended up with better specs. Chris also fixed a bunch of the violations disabled in our Rubocop to-do list.

Amy joined us in the Barbican for Thursday afternoon. We took this opportunity to create a [Heroku team][] for our collaboration with Hookline to make it easier for Chris & I to make changes to the project on Heroku. This all went pretty smoothly and were quickly able to transfer ownership of the app to this new team.

Following this Chris enabled the [Semaphore Heroku add-on][semaphore-heroku-addon] and configured it to give us continuous integration for the project. This was a little more awkward, but not too bad.

### ID3 Metadata

I made quite a bit of progress on having the app write ID3 metadata to the MP3 files hosted on S3 whenever the data in the database changed. I did this by setting up our old favourite, [Delayed Job][], so that we could kick off a process to download the MP3 file from S3, update the metadata, and re-upload the file to S3.

We're using [TagLib][] in conjunction with [taglib-ruby][] to read & write the metadata. I'm fairly happy with this library, although it's a bit of a pain that the API requires the MP3 file to be a file *on disk*, rather than just an IO object in memory.

## Social

In other news, we met up with [Ben][] after work on Friday for a well-earned beer at the [Flying Horse][]. And Chris booked us in for a bowling slot on Finsbury Square for this coming Friday lunchtime. Hopefully the weather will be kind to us!

Anyway, that's all for now.

-- James

[forge-and-co-meeting-rooms]: http://forgeandco.co.uk/private-hire-events/meeting-rooms/
[show-and-tell-24]: http://lanyrd.com/2016/gfr-show-and-tell-september/
[coop-principle-6]: https://en.wikipedia.org/wiki/Rochdale_Principles#Cooperation_among_cooperatives
[John Bevan]: http://www.bevangelist.uk/
[We Are Open co-op]: http://weareopen.coop/
[Harry Robbins]: https://twitter.com/harryrobbins
[Outlandish]: http://outlandish.com/
[Megazord idea]: http://outlandish.com/blog/co-op-of-software-co-ops-arise-er-megazord/
[Digital Co-ops Retreat]: https://docs.google.com/document/d/1d0ScQAWzNxIthh_AG4es7lpB2ZSWl5KFjHlTSmOvawc/edit
[Loomio]: https://www.loomio.org/
[wortley-hall]: http://www.wortleyhall.org.uk/
[GOV.UK Notify]: https://www.notifications.service.gov.uk/
[mocha-pr-244]: https://github.com/freerange/mocha/pull/244
[mocha-issue-260]: https://github.com/freerange/mocha/issues/260
[mocha-pr-262]: https://github.com/freerange/mocha/pull/262
[benugo-beech-st]: http://www.barbican.org.uk/restaurants-bars/benugo
[Lakeside Terrace]: https://foursquare.com/v/lakeside-terrace/4bd2efb077b29c74498f8f82
[Rubocop]: https://github.com/bbatsov/rubocop
[Rubocop RSpec]: https://github.com/backus/rubocop-rspec
[Heroku team]: https://devcenter.heroku.com/articles/heroku-teams
[semaphore-heroku-addon]: https://elements.heroku.com/addons/semaphore
[Delayed Job]: https://github.com/collectiveidea/delayed_job
[TagLib]: http://taglib.github.io/
[taglib-ruby]: http://www.rubydoc.info/gems/taglib-ruby/
[Ben]: https://twitter.com/beng
[Flying Horse]: http://www.flyinghorsepub.co.uk/
[Mocha]: http://gofreerange.com/mocha/
[Harmonia]: https://harmonia.io/
[Hookline]: http://hookline.tv/

:name: week-399
:updated_at: 2016-09-12 17:20:48.621071000 +01:00
:created_at: 2016-09-12 17:20:48.621066000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 399
:extension: markdown
