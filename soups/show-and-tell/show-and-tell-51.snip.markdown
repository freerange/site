Show and Tell 51
================

On Wednesday we held our Show & Tell event at a new venue, the [Proper Office on Bath Place](https://www.properoffice.com/meeting-rooms/#bath-place). It was a big room with a huge screen, tea and coffee and a fridge for our own drinks. A rare find in Shoreditch! 6 other people joined James, Ben and I and I've written some notes on what we saw below. If you'd like to [join us at the next one](https://gofreerange.com/show-and-tell-events) you'd be very welcome.

## Generative Transport Maps

[Chris Zetter](https://chriszetter.com/) was recently browsing Wikipedia and noticed that several pages have transport maps that are generated in a surprising way, such as this one of the [Glasgow subway system](https://en.wikipedia.org/wiki/Glasgow_Subway).

<%= image_tag('blog/2019-01-17-glasgow-subway.png', alt: 'The Glasgow Subway') %>

Digging into it Chris discovered that Wikipedia uses a system of icons called [BSicon](https://commons.wikimedia.org/wiki/BSicon) (the BS comes from the German for "railway lines" *Bahnstrecken*) to build these maps. There's a huge [catalogue](https://commons.wikimedia.org/wiki/BSicon/Catalogue) of these icons covering transport by rail, road and waterway.

Chris wanted to try using the icons for some kind of generative art - automatically building believable maps. The icons are designed to fit on a square grid, and Wikipedia authors use a system of macros to write the HTML tables that make up the grid. Chris needed to find which icons could join together in sensible ways to build a map.

His first approach was to take each icon and look at a thin slice of each edge. By doing this he hoped to automatically work out which icons could be placed next to each other. Although this method worked, the huge number of available icons meant it was hard to write a program that could fill enough blank squares in a grid without getting stuck.

His next approach was based on [Ben's](https://gofreerange.com/ben-griffiths) suggestion to use the Wave Function Collapse algorithm and its convenient [JavaScript implementation](https://github.com/mxgmn/WaveFunctionCollapse). This algorithm starts with every possible icon in each of the empty tiles and progressively ["observes" larger and larger areas to reduce their "entropy"](https://github.com/mxgmn/WaveFunctionCollapse#algorithm).

The initial experiments were promising with a limited set of tiles. One of the challenges with applying this algorithm to tiled map generation is that each tile needs to be described in terms of the other tiles it can be adjacent to, which in the case of the full BSicon set is a huge number of possible combinations. Eventually Chris settled on a larger, limited but still interesting set of 20 or so icons. The [Route Map Maker](https://mapmaker.chriszetter.com/) artificially slows down the speed of the algorithm so you can see its progress.

<%= image_tag('blog/2019-01-17-map-maker.gif', alt: 'An animation of Map Maker in action') %>

## Mission Patches

I spoke about a side project the Go Free Range team have been working on in the last few weeks. We wanted to make something to help teams celebrate their successes. One thing we've noticed a few of the teams do that we've worked with in the past year is create a laptop sticker to give to the people who worked on a particular project. We're not sure where this idea originated but we first saw it at the [Government Digital Service](https://www.flickr.com/photos/mn_francis/13622677615) and we noticed something similar while working at Trainline. These stickers are often based on [NASA's mission patches](https://history.nasa.gov/mission_patches.html).

Large teams with designers might be able to design and print something in-house, but we wanted to make it easier for teams of all sizes and skills to create something similar. We've built [mission-patch.com](https://mission-patch.com/) to make the process easier. The heart of the site is a reactive widget we built in [Elm](https://elm-lang.org/).

<%= image_tag('blog/2019-01-17-mission-patch.png', alt: 'A screenshot of the Mission Patch designer') %>

This was the first time I've used Elm and after a fairly steep initial learning curve I've started to really enjoy working with it. The constraints it places on how you [architecture an application](https://guide.elm-lang.org/architecture/) reminds me a bit of working with Ruby on Rails - there's a happy path and if you stick to it you can concentrate on your application instead of worrying about tooling and libraries.

We'd love some feedback on Mission Patch so please [give it a try](https://mission-patch.com/). Purchasing is not yet enabled but if you'd like to test that for us, or have any other feedback [drop us a line](mailto:lets@gofreerange.com).

## Biomorphs

[Ben](https://gofreerange.com/ben-griffiths) talked about a spin-off project he built while working on [mission-patch](https://mission-patch.com). He realised that it was quite difficult to come up with colour themes that worked well, and in particular to discover unusual combinations of colours that we wouldn't normally have come up with. His solution was based on remembering seeing Richard Dawkins demonstrate the Biomorph program he developed to explain evolution and natural selection:

<iframe width="560" height="315" src="https://www.youtube.com/embed/jAy9TIp3qH4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This program generated an initial seed image and then based on random mutations and the user's selections created new images. Ben implemented a version of this that mutated an image using various colour transformation functions from the [tesk9/palette](https://package.elm-lang.org/packages/tesk9/palette/latest/Color) Elm library.

<%= image_tag('blog/2019-01-17-mission-patch-biomorphs.png', alt: 'Variations of colour schemes in Ben's biomorphs application') %>

## Live-coding binary search in Kotlin

[Dmitry Kandalov](https://github.com/dkandalov) is a developer at Springer Nature and works a lot with the [Kotlin programming language](https://kotlinlang.org/). Last year he gave some well-received [conference talks](https://www.youtube.com/watch?v=U-gdJQeOVAk) where he live-coded an application using Kotlin and the [Intellij editor](https://www.jetbrains.com/idea/). He's been working on some new live-coding videos and wanted to get some feedback.

<%= image_tag('blog/2019-01-17-dmitry-live-coding.jpeg', alt: 'Dmitry's screen while live coding') %>

Dmitry used test driven development to live-code an implementation of the [binary search algorithm](https://en.wikipedia.org/wiki/Binary_search_algorithm). He's clearly put in a lot of practice as the session was slick, practically error-free and contained a ton of interesting tips and ideas. We talked a bit about who the intended audience are and what they might be looking to learn and then more generally about programming videos we enjoy watching for learning or, often, just entertainment. I'm really excited to see the final versions of these videos!

## Cloud Development Kit

[James](/james-mead) talked about Amazon's [Cloud Development Kit (AWS CDK)](https://github.com/awslabs/aws-cdk) that he's recently used on a couple of projects to define the [infrastructure as code](https://en.wikipedia.org/wiki/Infrastructure_as_code). The CDK tool allows the infrastructure on AWS to be provisioned and configured based on the definition of a "stack" written in TypeScript.

<%= image_tag('blog/2019-01-17-aws-sdk-code-sample.png', alt: 'An example of CDK code') %>

This stack definition is then transformed to the YAML files needed by [CloudFormation](https://aws.amazon.com/cloudformation/). James explained the advantages of writing CDK code rather than editing YAML files directly. The [TypeScript](https://www.typescriptlang.org/) type-checker comes in really handy because it prevents you from, for example, passing the wrong option objects when configuring a particular service. The CDK language also has some higher-level constructs that help you to do the right thing, for example, when granting a user "read" permission to an S3 bucket in the AWS Console it's easy to forget that they will also need the "list" permission in order to be able to add files. The CDK has helper functions that do both of these things for you and are sensibly named.

James also demoed the handy "diff" command provided by the CDK command line interface. It shows a concise, tabular representation of what changes will be made to your infrastructure when you run the command, and warns you about changes in permissions.

:name: show-and-tell-51
:updated_at: 2019-01-17 13:44:21.063380000 +00:00
:created_at: 2019-01-17 13:44:21.063370000 +00:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Show and Tell 51
:layout: show-and-tell-layout
:extension: markdown
