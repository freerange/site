Week 844
========

Week beginning Monday, 17th March 2025 (also incorporating week 843).

Most of our time has been spent working on the project with the [Raspberry Pi Foundation][rpf] where we're working toward making some of what we've been doing public. I've enjoyed pairing with [James][james-mead] while [Chris][chris-lowis] has been in his happy place crafting HTML and CSS to make things look pretty.

I spent a while configuring Heroku Review Apps this week. I discovered that when editing the app.json config within a PR some changes appear to take effect immediately (e.g. changes to env vars) while others appear to only take effect when the Review App is first created (buildpacks, maybe?). I failed to find documentation explaining the differences so used some classic TED (Trial and Error Development) to come up with an app.json that seems to do what we need.

We ran into a problem that we caused through the introduction of a `default_scope` in an Active Record backed model. We're adding a new type of _thing_ to the system but wanted to ensure that nothing else had to care about this new type of _thing_ unless explicitly dealing with it. We did this by adding a default scope that excluded our new type of _thing_ from all queries but failed to handle the case where we're explicitly creating our new type of _thing_! We already knew default scopes to be problematic but thought its use was justified in this case. Now I'm not so sure...

## Why is it so hard to put HTML on the Internet

As part of the rubyforge redirects work we were doing at the end of last year I created a simple Rails 8 app to consume logs from Fastly. I used Kamal to deploy the Rails app to a Digital Ocean Droplet and thought it might be useful to document the process as I had to figure a few things out from different sources. I had the post mostly written at the beginning of the year but it's taken until about a week ago to get [it published on our site][kamal-rails-8] 🤯. I'd written the post using [GitHub Flavoured Markdown][gfm] (GFM) only to discover that our site didn't support GFM 😢, so first had to add [support for rendering that][site-gfm-rendering] to our site. I then discovered that we were automatically processing all content with ERB which was rendering some ERB tags I needed to display in the post 😢😢. James kindly provided [a fix][site-pr-516] which I was able to make use of 🙏. But only after (re?)discovering a Rake task that James had added to render the entire site to static HTML pages so that we could find differences in rendering after making a change. I wanted to use this to ensure that we hadn't broken anything with the change to ERB rendering but first had to work out why it was failing part way through generating the site. It turned out that we had some broken links that were preventing it from running successfully 😭. Once I'd fixed some [broken links][site-broken-links] revealed by the Rake task I was able to confirm that the ERB rendering change didn't change any existing output 🎉 Unfortunately I did discover that I'd inadvertently made a breaking change when introducing GFM rendering 😭😭 so had to [fix that][site-pr-518] too.

I was initially questioning whether we should switch to something like [Jekyll][jekyll] to host our site but then started to wonder why I didn't just write the post using HTML in the first place...

I still intend to write a post about creating a simple Rails app to consume Fastly logs. At current rates I expect that to be ready by about July 😬

## Working in the future

I'm late to the multiple monitor party but have recently setup a second monitor in my office. Initially a smaller [Raspberry Pi monitor][rpi-monitor] underneath my main monitor and now a second Dell. I'm appreciating being able to remote pair on one and use the other for reference while pairing.

<%= image_tag('blog/2025-03-14-chris-r-desk-with-dual-monitors.jpg', alt: "Chris R's office dual monitor setup") %>

## CoTech

Chris represented GFR and enjoyed spending time with fellow cooperators at the [CoTech gathering at Space4][cotech-gathering].

## Outside of work

James enjoyed a week skiing in the beautiful Alps. ⛷ 🏔

James has continued to have Internet connection problems since his contract was cancelled by an neighbour. Although his fibre connection was recently restored he's been suffering from intermittent DNS problems. It turns out his router had been trying to connect to the old cancelled service 🤯. He's been told that the old service has really, definitely, positively been cancelled this time so hopefully it really is all resolved now 🤞

Chris spent a day volunteering on his son's school trip to London Zoo 🦁.

I've mostly been fighting a cold 🤒

Until next time.

-- Chris

[chris-lowis]: /chris-lowis
[cotech-gathering]: https://wiki.coops.tech/wiki/SPACE4_Gathering_March_2025#Agenda
[gfm]: https://github.github.com/gfm/
[james-mead]: /james-mead
[jekyll]: https://jekyllrb.com/
[kamal-rails-8]: /using-kamal-to-deploy-a-rails-8-app-to-digital-ocean
[rpf]: https://www.raspberrypi.org/
[rpi-monitor]: https://www.raspberrypi.com/products/raspberry-pi-monitor/
[site-broken-links]: https://github.com/freerange/site/commit/7b159cbd1619c5327e0e37efc18a43bb4dd29db9
[site-gfm-rendering]: https://github.com/freerange/site/commit/244422546d800f2367045a1429207dd07819f8a4
[site-pr-516]: https://github.com/freerange/site/pull/516
[site-pr-518]: https://github.com/freerange/site/pull/518

:name: week-844
:updated_at: 2025-03-21 15:10:00.000000000 +00:00
:created_at: 2025-03-21 15:10:00.000000000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 844
:extension: markdown
:erb: true