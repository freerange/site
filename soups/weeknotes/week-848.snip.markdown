Week 848
========

Week beginning Monday, 14th April 2025.

## Experience CS

[Chris L] and [Seb] continued to make good progress on customizing the [Scratch] IDE to improve the user experience, particularly on narrower screens. The immediate goal is to have a sample project we can share with teachers to give them confidence it will be a suitable replacement for the Scratch IDE in Google's [CS First] and not suffer from some of the safe-guarding issues in [MIT's Scratch IDE]. Wanting to minimize changes to the Scratch source code and the fact that it only seems to have been designed to work on desktop screen widths make this a lot more complicated than it sounds! 🧱

Seb finished up the work that he and I had started last week on isolating our Scratch-related code from the rest of the web app. As [Chris R] mentioned last week, we've separated the code, its packages, and its build steps out into a [Rails engine] which lives in a sub-directory of the [Rails] app. This Rails engine can render a single page containing our customized version of the Scratch IDE and the parent app renders this page within an `<iframe>`. 🪟

There were some thorny issues to overcome, e.g. how to make the assets (i.e. images, etc) provided by the [scratch-gui] package available at the expected URL path. I suspect Seb now knows more about [webpack] configuration options than he ever wanted to! One advantage of wrapping the IDE in an iframe is that the "[blue screen of death]" initialization animation no longer takes over the whole page. I felt bad that I started this work with Seb last week, but left him to deal with the gnarlier bits - thanks, Seb! ❤️

Chris R and I continued work on being able to create a "[remix][Scratch remix]" of an existing public project and save it to your [RPF] account. In order to do this, we have to hook into scratch-gui both to trigger a "save" and to configure where the Scratch program is saved. We then need to provide API endpoints in the Rails app to handle the requests from scratch-gui. On top of this, we also need to integrate with existing RPF apps and libraries, e.g. a single sign-on service and its client library, and the backend API for RPF's [Code Editor for Education]. It feels like we're pretty close to having it all working! 🤞

Anyway, given the inevitable disruption of the Easter holidays, I'm pleased with how much progress we've made. 🚀

## Mission Patch

[Mission Patch] is a long-running company side project, [launched in 2019][gfr-achievements-2019], which was originally built using a combination of Rails, [Elm] (!) and the [AWS CDK]. In recent years, Chris L & Chris R (Chris<sup>2</sup>) have indulged me in using it as a bit of a playground for trying out new technologies and approaches. As such it's been through a number of re-writes over the years and I've been meaning to write all this up, but it's got to the point where there's so much I'd want to cover that I keep procrastinating. ⏱️

<p>
  <a href="https://mission-patch.com/">
    <img src="<%= image_path('blog/mission-patch-2025.svg') %>" alt="Mission Patch">
  </a>
</p>

However, when the three of us [met up recently][week-845], Chris<sup>2</sup> encouraged me to focus on writing something about the last big change which involved moving [Mission Patch] from [SvelteKit] to "modern" Rails with a particular focus on building a [progressively enhanced][progressive enhancement] user interface with Hotwire [Stimulus] and [Turbo Streams]. I think this is a good idea and last weekend I started working on it. 💡

I decided I wanted to generate videos (or ideally animated gifs) of the user interface with JavaScript both enabled and disabled. However, I always struggle producing screencasts manually, because I keep making small mistakes and feeling like I need to re-work them. So in classic developer style, rather than crack on with writing something, I decided to procrastinate further and try automating the process. I started off using [Playwright] which we already use in the project for end-to-end testing, but I found that the quality of the captured video was poor and it was challenging to simulate and display mouse movements, clicks, and other user interactions. 🐭

I then experimented with [AppleScript] to perform scripted user interactions in combination with the [MacOS Screenshot app], but I've never really got on with AppleScript and the Screenshot app can't generate animated GIFs directly. So I decided to try out [cliclick], a MacOS CLI tool for emulating mouse and keyboard events in combination with [CleanShot X], a screen recording tool recommended by [Max Elkins] (Senior Designer at RPF). I'm quite pleased with how this is working and hope to make some more progress on actually writing the article soon! 🪶

## Improving Rails docs

While Chris R [recently experimented][using-kamal-article] with deploying a Rails v8 application to a Digital Ocean droplet using the recommended approach with [Kamal], I recently played around with [deploying][deploying-rails-v8-to-heroku] a Rails v8 application to a PaaS, i.e. [Render] and [Heroku]. I know the canonical deployment approach is now Kamal, and it's possible I'm looking back with rose-tinted spectacles, but I was quite disappointed with how awkward it was. 🧐

I've been meaning to write this up too (you may detect a recurring theme here!), but I did at least submit [a Rails documentation pull request][rails-pr-54765] with some learnings I took away from the experience. However, unfortunately after some initial build system problems and an initial flurry of activity (and seeming general approval), it now seems to have fallen into a pull request review void! 😞

Until next time.

-- James

[Chris L]: /chris-lowis
[Seb]: https://www.sebjacobs.com/
[Scratch]: https://scratch.mit.edu/
[CS First]: https://csfirst.withgoogle.com
[MIT's Scratch IDE]: https://scratch.mit.edu/projects/editor/
[Chris R]: /chris-roos
[RPF]: https://www.raspberrypi.org/
[Rails engine]: https://guides.rubyonrails.org/engines.html
[Rails]: https://rubyonrails.org/
[scratch-gui]: https://github.com/ScratchFoundation/scratch-gui
[webpack]: https://webpack.js.org/
[blue screen of death]: https://en.wikipedia.org/wiki/Blue_screen_of_death
[Scratch remix]: https://en.scratch-wiki.info/wiki/Remix
[Code Editor for Education]: https://editor.raspberrypi.org/en/education
[week-845]: /week-845
[Mission Patch]: https://mission-patch.com/
[SvelteKit]: https://svelte.dev/docs/kit
[Stimulus]: https://stimulus.hotwired.dev/
[Turbo Streams]: https://turbo.hotwired.dev/handbook/streams
[gfr-achievements-2019]: /gfr-2019#2019-achievements
[Elm]: https://elm-lang.org/
[AWS CDK]: https://aws.amazon.com/cdk/
[progressive enhancement]: https://developer.mozilla.org/en-US/docs/Glossary/Progressive_Enhancement
[Playwright]: https://playwright.dev/
[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[MacOS Screenshot app]: https://support.apple.com/en-gb/guide/mac-help/mh26782/mac
[CleanShot X]: https://cleanshot.com/
[Max Elkins]: https://maxelkins.me/
[cliclick]: https://github.com/BlueM/cliclick
[using-kamal-article]: /using-kamal-to-deploy-a-rails-8-app-to-digital-ocean
[Kamal]: https://kamal-deploy.org/
[Render]: https://render.com/
[Heroku]: https://www.heroku.com/
[deploying-rails-v8-to-heroku]: https://github.com/floehopper/example-rails-app/commits/main/
[rails-pr-54765]: https://github.com/rails/rails/pull/54765

:name: week-848
:updated_at: 2025-04-18 10:54:24.706026000 +01:00
:created_at: 2025-04-18 10:54:24.706025000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 848
:extension: markdown
:erb: true
