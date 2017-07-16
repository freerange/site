Week 230
========

*I'm writing this while I wait for [Chef](http://www.opscode.com/chef/) to finish provisioning a server; it's been compiling Ruby 2.0.0 for about ten minutes now. Perhaps it will have finished by the time I get to the end...*

It's been another client-heavy week for [GFR](/), with most of our time spent continuing to build towards their MVP, due at the end of the month[^done-when-its-done]. We're pulled in many directions throughout a project's entire lifecycle, but there's a particular kind of pull during its infancy; a lingering concern that we genuinely are building what's *minimally viable*, and not putting too much effort into areas of functionality or design that aren't strictly required yet. It's a tricky balance to strike, but I can feel my own approach being refined; keeping the user experience at the fore, and always looking for the simplest change or increase in functionality that isn't going to make that worse.

*Sorry folks, Ruby just finished compiling. Back in a bit...*

OK, I'm back. Now I'm waiting for [Bundler](http://gembundler.com/).

So yes -- the tricky nature of an *MVP*, of keeping product owners and project managers thinking about *user needs* rather than features. I'm very much hoping that we'll be able to get some real users interacting with the application very soon, to provide some external drivers for prioritisation.

<%= l('james-mead', 'James M') %> has been pretty ill for a part of the week, and just as he started to recover we took him out for some beer and knocked him for six with a painful journey back to Oxford and a stinker of a hangover. Here's hoping that he starts week 231 detoxified and refreshed! We also had [Rob Chatley](https://twitter.com/rchatley) visiting us on a kind-of "adult work-experience" day, and James M paired with him on our client project for the day.

Both inside and outside of client work, <%= l('tom-ward', 'Tom') %> has been trying to get [Unicorn](http://unicorn.bogomips.org/) and [Upstart](http://upstart.ubuntu.com/) to work in harmony and give us "zero-downtime deploys". There are some tensions between how Upstart expects to manage processes and how [Recap](/recap) guarantees processes will run with the right environment, and tensions between how Upstart specifically expects to restart processes (by stopping and starting them) and how Unicorn can restart workers (via signals) too. If you're interested, here's what Tom is working on: [github.com/freerange/unicorn-wrangler](https://github.com/freerange/unicorn-wrangler). We're hoping to get it running with [Harmonia](https://harmonia.io) soon.

*Finally, Bundler is finished. Now to deploy...*

Our resident flip-flop-wearing weather-denier <%= l('chris-roos', 'Chris') %> spent a bit of time with Tom looking at the unicorn wrangler, and then spent a bit of time looking at how some links to "gofreerange.dev" had become lodged in the commenting system we use[^nobody-does] on the blog.

*Deployment exploded thanks to an un-anticipated circular dependency. This is the sort of stuff that you only really spot when you're setting up a whole new environment from scratch. Luckily, I have the skills to fix it. This, ladies and gentlemen, is why we get paid the big bucks. Now waiting for Bundler to run again...*

And what about <%= l('james-adam', 'me') %>, you ask? Well, I spent Monday and Tuesday in Aberdeen, and a part of that time looking at how our cashflow and capacity would be affected by adding an extra brain (and, if necessary, the associated fleshy support system it requires) to our number. I'm increasingly of the opinion that we'll be able to achieve much more with five than we can with the four brains we have right now.

And, of course, I am thinking about goals and strategy and all that stuff you've heard me talk about so many, many times before. It's just how this particular GFR brain unit is wired up.

At the same time we were laying the foundations of James M's Thursday hangover, a few of us (he, Chris and I) spoke quite a bit about what I consider to be some of the strategic... *challenges*, let's say, that face GFR in the short and medium terms. It's a shame that Tom couldn't stick around for it as I think the input from his specific brain unit is very important to this process, but such is the life of a new father. In semi-related news, Tom assures us that he'll be bringing little Fred in to the office soon.

I've got two more weeks in London before I move to Austin, and I'm going to be having some leaving drinks somewhere centralish on **Wednesday 26th June**. Put it in your diary, and we'll let you know exactly where it's happening next week.

Hopefully see you then,

-- James A.

*... still waiting for Bundler...*


[^done-when-its-done]: Naturally, it'll be *done* when it's *done*.
[^nobody-does]: I mean, I say "we use", but it's really you that uses it. Or doesn't. *Virtual Tumbleweed.*

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2013-06-14 16:00:00 +01:00
:updated_at: 2013-06-14 16:00:00 +01:00
:page_title: Week 230
