Week 354 - Interesting links
============================

### [Zube - Project management using GitHub issues](https://zube.io/)

> Zube is virtual task board for your software development team. Zube ❤'s GitHub so your GitHub issues are automatically pulled into Zube, and your Zube data is synchronized with GitHub in real-time.

I've had a really quick play with this and was pretty impressed. I've wanted to use GitHub issues to manage projects in the past but they've never quite felt like they're enough. Zube looks like it adds just enough functionality to make it possible. The only potential downside is that you have to grant Zube read/write access to code, issues, pull requests, wikis, settings, webhooks and services, and deploy keys of all your private and public repositories. I'd certainly feel more comfortable if it didn't have access to everything.

I've not tried them, but [HuBoard][huboard] and [waffle.io][waffle.io] look like similar products. Has anyone used any of these in anger? Would you recommend them? <%= by('chris-roos') %>


### [CLEF - Employee handbook](https://github.com/clef/handbook/blob/master/README.md)

This Creative Commons licensed employee handbook from [CLEF][clef] looks interesting. It reminds me of wanting to open up the documents we use to help run GFR. Via [Nicky][nicky-thompson]. <%= by('chris-roos') %>


### [Redecentralize conference](http://redecentralize.org/conference/)

> The Redecentralize conference brings together people working on decentralization projects with others outside the movement - to drive adoption and sustainability of decentralized alternatives. We'll be showcasing projects, looking at open strategies, marketing, design and business models.

This conference sounds right up my street. Unfortunately, prior engagements meant that I couldn't attend. I haven't found much written up about the conference but there are [tweets][redecentralized-tweets], [videos][redecentralized-videos] and [notes][redecentralized-etherpad] that capture some of the things that went on. <%= by('chris-roos') %>


### [The tides of San Francisco](http://imgur.com/a/7KvMy)

This image caught my eye as it reminded me of the tidal pattern I see in my [Thames Time Lapse timeslice video][thames-timeslice-video]. The picture is of the [Tidal Ribbon installation][tidal-ribbon] at the [Exploratorium in San Francisco][exploratorium]. <%= by('chris-roos') %>


### [Travis CI: Parallelizing RSpec, Cucumber and Minitest on multiple VMs](http://docs.travis-ci.com/user/speeding-up-the-build/#Parallelizing-RSpec%2C-Cucumber-and-Minitest-on-multiple-VMs)

This explains how you can use [knapsack][] to split tests across multiple VMs to speed up the overall build time. Via [Tom S][]. <%= by('james-mead') %>


### [Audiocogs: Codecs](http://audiocogs.org/codecs/)

I was quite surprised to discover these audio codecs written in JavaScript using the [Web Audio API][] & [Audio Data API][] which are capable of playing audio in the browser without native codec support. <%= by('james-mead') %>


### [Let's Encrypt client](https://github.com/letsencrypt/letsencrypt)

I was impressed to see this command line tool which [makes it very easy][lets-encrypt-demo-video] to obtain a certificate and setup SSL on Apache - something I've found a real pain in the past. It's particularly interesting now that [Let's Encrypt][lets-encrypt]'s SSL certificates are [trusted by all major browsers][lets-encrypt-is-trusted]. <%= by('james-mead') %>


[clef]: https://getclef.com/
[exploratorium]: http://www.exploratorium.edu/
[huboard]: https://huboard.com/
[nicky-thompson]: https://twitter.com/knotnicky/
[redecentralized-etherpad]: https://public.etherpad-mozilla.org/p/rdc2015
[redecentralized-tweets]: https://twitter.com/hashtag/redecentralize?src=hash
[redecentralized-videos]: https://www.youtube.com/channel/UCxfh-2aOR5hZUjxJLQ2CIHw
[tidal-ribbon]: http://transmote.com/projects/tidalribbon/
[thames-timeslice-video]: https://vimeo.com/104385576
[waffle.io]: https://waffle.io/
[knapsack]: https://github.com/ArturT/knapsack
[Tom S]: http://codon.com/
[Web Audio API]: https://dvcs.w3.org/hg/audio/raw-file/tip/webaudio/specification.html
[Audio Data API]: https://wiki.mozilla.org/Audio_Data_API
[lets-encrypt-demo-video]: https://www.youtube.com/watch?v=Gas_sSB-5SU
[lets-encrypt]: https://letsencrypt.org/
[lets-encrypt-is-trusted]: https://letsencrypt.org/2015/10/19/lets-encrypt-is-trusted.html


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-10-29 16:15:00 +00:00
:updated_at: 2015-10-29 16:15:00 +00:00
:page_title: Week 354 - Interesting links
:erb: true
