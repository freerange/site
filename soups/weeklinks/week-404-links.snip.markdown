Week 404 - Interesting links
============================

### [English man spends 11 hours trying to make cup of tea with Wi-Fi kettle](https://www.theguardian.com/technology/2016/oct/12/english-man-spends-11-hours-trying-to-make-cup-of-tea-with-wi-fi-kettle)

Chris pointed me at this amusing article. He said it reminded him of my [Just Boiled project][] from 3 years ago which I'd completely forgotten about! {by james-mead}

[Just Boiled project]: /week-216#just-boiled


### [Hackpad](https://github.com/dropbox/hackpad)

I recently spent a bit of time investigating [Gollum][], the git-backed wiki. I'm interested in a wiki-like thing both for personal & company use. I'd completely forgotten that Dropbox has open-sourced [Hackpad][] and recently had a go at firing it up on my laptop. {by james-mead}

[Gollum]: https://github.com/gollum/gollum
[Hackpad]: https://hackpad.com/


### [Big decision ahead? Just roll the dice](http://timharford.com/2016/10/big-decision-ahead-just-roll-the-dice/)

We already [use randomness in the assignment of tasks][Harmonia] within our company. Perhaps we should be using it to help us make difficult decisions!

> [...] most of us could do with a little more randomness in our lives. The roll of a die or the toss of a coin can actually help us make better decisions.
>
> [...] by pre-committing to follow a random instruction, we can end up making decisions that we should have been making all along.

Definitely food for thought! {by james-mead}

[Harmonia]: https://harmonia.io


### [Crash: how computers are setting us up for disaster](https://www.theguardian.com/technology/2016/oct/11/crash-how-computers-are-setting-us-up-disaster)

This article starts by talking about the causes of the crash of Air France flight 447. It suggests that, because of automation, modern pilots often have very little experience of flying a plane manually, but may be called upon to do so under extreme circumstances as in this plane crash. It talks about this as the [paradox of automation][]:

> The better the automatic systems, the more out-of-practice human operators will be, and the more extreme the situations they will have to face.

There's a nice story about [Monderman's squareabout][] too. All in all an excellent read. {by james-mead}

[paradox of automation]: https://en.wikipedia.org/wiki/Automation#Paradox_of_Automation
[Monderman's squareabout]: https://thinkbicyclingblog.wordpress.com/2013/06/13/hans-mondermans-people-friendly-dutch-squareabout/


### [Heroku's Release Phase](https://devcenter.heroku.com/articles/release-phase)

I came across this new(ish) Release Phase while trying to work out how to automatically run database migrations when deploying a Rails app to Heroku. I was previously using the [ruby-rake-deploy-tasks buildpack][rake-buildpack] to run `rake db:migrate` but that doesn't work [when deploying for the first time][gist-57b7c4d]. Using the release phase ensures the task is run _after_ deployment which means that it works irrespective of whether it's the very first deploy or not. {by chris-roos}

[rake-buildpack]: https://github.com/gunpowderlabs/buildpack-ruby-rake-deploy-tasks
[gist-57b7c4d]: https://gist.github.com/chrisroos/57b7c4d7750cdbc0fb96a131403526da


### [Hamachi VPN](https://www.vpn.net/)

I rediscovered this when James and I were experimenting with remote pairing again recently. This software allowed us to both join a VPN so that we could use the Mac Screen Sharing app to both control the same screen. This seems to be a pretty good alternative to the [Screenhero][screenhero] functionality that's now only available with paid Slack plans. {by chris-roos}

[screenhero]: https://screenhero.com/


### [Time lapse footage of earth from ISS](https://imgur.com/9An6xzf)

I love this little time-lapse of earth. A little research about the footage lead me to this [livestream of earth from the ISS][iss-livestream] and this [map tracking the ISS][iss-map]. I find the live stream mesmerising and can imagine losing a lot of time watching it. {by chris-roos}

[iss-livestream]: http://www.ustream.tv/channel/iss-hdev-payload
[iss-map]: http://www.lizard-tail.com/isana/tracking/

:name: week-404-links
:updated_at: 2016-10-13 13:20:18.696430000 +01:00
:created_at: 2016-10-13 13:20:18.696426000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:page_title: Week 404 - Interesting links
:extension: markdown
