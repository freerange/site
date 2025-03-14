# What have we been doing? (Summer 2024 edition)

We’ve had a busy 2024 so far. We’ve worked on 3 projects with 3 different clients, made a bit of progress on 2 internal projects and tried to take care of ourselves and each other. We’ve got a little bit of downtime now so we thought it would be a good time to share what we’ve been doing. We’re always happy to chat about current or future projects, [drop us a line](mailto:lets@gofreerange.com) any time.

## NESTA - Visit a heat pump

NESTA brought us in for a couple of short sprints to work on their [Visit a heat pump](https://app.visitaheatpump.com/) service. This service helps people who are considering fitting a heat pump in their own home find other people who have already done so. They can then arrange a visit to find out more.

<%= image_tag('blog/2024-08-06-visit-a-heat-pump.png', alt: 'A screenshot of the Visit a heat pump site. Showing a list of hosts to visit in Bristol and a map of where they are') %>

We added a bunch of new features including improved search, email notifications for hosts and visitors and support for new location types such as installer showrooms. We also helped the team get ready for increased traffic by improving application scalability and security.

The initial version of Visit a heat pump was built in Rails, and we didn’t see a reason to change that. We were able to deliver value quickly by keeping the architecture of the application simple and relying on Heroku to handle the services we needed.

## GOV.UK - Access & Permissions

We teamed up with [dxw](https://www.dxw.com/) to provide a multi-disciplinary team to help with work on the GOV.UK publishing system. This system is used across government in many different departments and organisations to publish content to GOV.UK.

In particular we worked on the [Signon](https://github.com/alphagov/signon) application. Signon is used to authenticate users before they have access to the various publishing apps. It serves an important role, but is the kind of software that should mostly be used infrequently and should get out of the user’s way as soon as possible so that they can get on with their work. As a consequence the design of the admin features of the application had gone a little bit unloved over the years. We spent some time refreshing the design and usability of the site to use the [GOV.UK Design System](https://design-system.service.gov.uk/).

We also helped improve the security of the system by rolling out two-factor authentication to its thousands of users.

Signon, like many of the applications that make up the GOV.UK publishing platform, is built in Ruby on Rails, so we were right at home.

## The Raspberry Pi Foundation - Code Editor for Education

We joined a team at the Raspberry Pi Foundation to help build a new [Code Editor for Education](https://editor.raspberrypi.org/en/education) tool. We worked on a number of new features to make their existing web-based IDE suitable for classroom use.

<%= image_tag('blog/2024-08-06-code-editor-for-education.png', alt: 'A screenshot of the Code Editor for education landing page. Has the stap-line: "Same great code editor, soon to be in your classroom"') %>

The application is built using a React front-end and a Rails backend. We’re at home in both of these technologies so we were able to work on features end-to-end.

## jam.coop - online music store co-operative

We started building [jam.coop](https://jam.coop) last summer as a side-project. We wanted to see if it would be possible to create a co-operatively-owned platform for musicians to sell their music directly to their fans, allowing them to keep more of the money they make and have a say in how the platform is run. Some of the alternatives out there can be pretty [hostile](https://en.wikipedia.org/wiki/Criticism_of_Spotify) to musicians and the [people who work there](https://jacobin.com/2023/12/bandcamp-music-streaming-sale-tech-workers-union-layoffs-organizing).

<%= image_tag('blog/2024-08-06-jam.png', alt: 'A screenshot of the jam.coop site. Has the stap-line: "A new music platform. For us" and shows a grid of album artwork for sale on the site.') %>

At Go Free Range we always tell potential clients that it’s possible for a small team to deliver working software quickly and regularly by keeping things simple, choosing appropriate technology and having a good, pragmatic process. Sometimes it’s a good idea to put our money where our mouths are and build a real working product to make sure we can still do it!

jam.coop is built using Rails and uses [Hotwire](https://hotwired.dev/) to keep things snappy and provide some nice front end features, such as the music player embedded on each album page. We’ve used Stripe to provide the credit card processing and built a nifty transcoding backend to provide different downloadable music formats. We decided to try out [render](https://render.com/) for hosting and so far that’s been a positive experience.

Client work has kept us too busy to devote significant time to working on jam.coop this year, but fortunately the site doesn’t require too much maintenance to keep it ticking along.

## Mission Patch - celebrate success with stickers

We built [mission-patch.com](https://mission-patch.com/) to allow teams to design and print NASA-style mission patch laptop stickers to celebrate their successes. Nearly 300 teams have done so so far. This year we integrated with [Diginate](https://diginate.com) so that our stickers can be nicely printed and drop-shipped directly to you. Diginate have been developing an API to make this easier and we were happy to be one of the first to use it and help them iron out some issues.

<%= image_tag('blog/2024-08-06-mission-patch.png', alt: 'An example mission patch sticker. Circular, with a thick bezel and a rocket image in the middle. Around the bezel are the words "Team. Stickers. Smiles. mission-patch.com 2024".') %>

We also made some changes to the tech stack. We decided to move the backend processing of stickers and order from a “serverless” approach based on AWS CDK to a Rails app. We also shifted from Netlify to Render and took advantage of [Render’s Monorepo support](https://docs.render.com/monorepo-support) to host and deploy the frontend Svelte app and backend Rails app. We’re planning to write a bit more about this later.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:created_at: 2024-08-06 11:20:00 +00:00
:updated_at: 2024-08-06 11:20:00 +00:00
:page_title: What have we been doing recently?
:erb: true
