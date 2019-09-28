Show and Tell 53
================

A week last Wednesday we held our Show & Tell event at the [Proper Office on Bath Place](https://www.properoffice.com/meeting-rooms/#bath-place). We were joined by some friends and I've written some notes on what we saw below. If you'd like to [join us at the next one](https://gofreerange.com/show-and-tell-events) you'd be very welcome.

## Everyday Ethics

[Chris Zetter](https://chriszetter.com/) is planning a talk on Ethics and how the subject is relevant to developers. Chris said that many of the books he'd looked at about ethics were very philosophical and he found it difficult to relate them to everyday issues. He then passed around a copy of Kirnan's [Everyday Ethics: A case study approach](https://www.amazon.co.uk/Everyday-Ethics-Jean-P-Kirnan/dp/1138052671) which he has found more useful.

<%= image_tag('blog/everyday-ethics.png', alt: 'The front cover of the book "Everyday Ethics"') %>

Chris showed us a couple of the case studies from the book. One case study concerned an employee who has realised that they have been overpaid and is in a dilemma about reporting it to their manager.

We then talked about some of the ethical issues we've faced professionally and shared some ideas with Chris on how he might turn this topic into a talk. We all agreed that it sounds like a really interesting topic for a talk, so fingers crossed Chris will find the time to turn it into one!

## Ray Tracing

[Tuzz](https://twitter.com/chrispatuzzo) has been working through the book [Physically Based Rendering: From Theory To Implementation](http://www.pbr-book.org/) with the [London Computation Club](http://london.computation.club/). To help understand the content he's implemented some ray tracers in Rust.

The first, [starlight](https://github.com/tuzz/starlight), is an implementation of the ray tracer described in the early chapters of the book. Chris decided that following the specification given in the book exactly would be very time consuming, so he's taken some shortcuts in places. He pointed out that the [core algorithm](https://github.com/tuzz/starlight/blob/master/src/integrator/mod.rs#L21) that simulates the rays bouncing around the scene is only around 50 lines of code. The rest of the project handles setting up the scene, defining light sources, modelling the materials of the objects in the scene and writing the output.

Chris then decided to deviate from the book and implement a ray tracer using a different programming style. [moonlight](https://github.com/tuzz/moonlight) uses the [Entity-component-system](https://en.wikipedia.org/wiki/Entity_component_system) design pattern which makes it easier to add behaviour to some of the objects in the scene and therefore create animations. [This video](https://raw.githubusercontent.com/tuzz/moonlight/master/video.mp4) is created by moving the camera through the scene.

Finally, the book defines a "scene language" for describing the location and properties of objects within a rendered scene. Chris [wrote a ruby gem](https://github.com/tuzz/pbrt) to make it easier to pragmatically generate these scene descriptions. He then wrote [vivid](https://github.com/tuzz/vivid/) which is some more ruby code to take scene descriptions and render them using the [official implementation of the renderer from the book](https://github.com/mmp/pbrt-v3). Chris then used this code to generate some animations.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I&#39;m putting out the <a href="https://twitter.com/computationclub?ref_src=twsrc%5Etfw">@computationclub</a> signal in another ray traced animation. <a href="https://t.co/yLnUptvpeb">pic.twitter.com/yLnUptvpeb</a></p>&mdash; Chris Patuzzo (@chrispatuzzo) <a href="https://twitter.com/chrispatuzzo/status/1105588326281682946?ref_src=twsrc%5Etfw">March 12, 2019</a></blockquote>

Chris often joins us at Show and Tell and I'm always really impressed by how he uses side projects as a springboard to learn new things - languages or design patterns, for example. His side projects never seem to have a "throw-away" quality to them either, Chris takes time to write clear READMEs including the motivation behind the project - it's very inspirational.

## No Thank You, Evil!

Ben showed us a small Elm app he's been developing. It speeds up the creation of character sheets for the child-friendly role-playing game [No Thank You, Evil!](http://www.nothankyouevil.com/).

<%= image_tag('blog/no-thank-you-evil.jpg', alt: 'The "No Thank You, Evil!" game box and contents') %>

Ben said that the character generation part of the game was a bit slow and off-putting for his children, and having a quick, clickable character generator was more fun. He's particularly excited that he's managed to collaborate on github with his son for the first time!

We've been using Elm for our [mission patch](https://mission-patch.com) project at GFR and it's really encouraging to see that Ben can now use Elm as his go-to library for developing quick, front-end heavy applications.

## Learning Elm

Go Free Ranger [Roos](/chris-roos) has been getting up to speed with Elm development so that he can work on the [Elm](https://elm-lang.org/) parts of our [mission patch](https://mission-patch.com) codebase. To practice what he's learnt he created a stand-alone application for searching through a list of emojis by keyword. He was able to iterate on the code quickly using [Ellie](https://ellie-app.com/) the code-in-a-browser tool for Elm. He also created a git repository as he went and took us through each commit to show us how to develop and refactor code in Elm.

The emoji search he developed is now integrated as part of the Mission Patch design interface:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">We&#39;ve added emoji search to make it even easier to find the perfect image for your mission patch 🎉 <a href="https://t.co/ABk7W3ThNb">pic.twitter.com/ABk7W3ThNb</a></p>&mdash; mission-patch.com (@mission_patches) <a href="https://twitter.com/mission_patches/status/1111274897014226948?ref_src=twsrc%5Etfw">March 28, 2019</a></blockquote>


<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


:name: show-and-tell-53
:updated_at: 2019-04-01 14:57:24.453800000 +01:00
:created_at: 2019-04-01 14:57:24.453793000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Show and Tell 53
:layout: show-and-tell-layout
:extension: markdown
