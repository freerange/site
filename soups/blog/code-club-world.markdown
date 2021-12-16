Code Club World - Our project with the Raspberry Pi Foundation
=======

This year we've spent most of our time working with the Raspberry Pi Foundation (RPF) on their new project Code Club World. Our involvement in the project has now come to an end, after the RPF transitioned to a fully in-house team to continue work on the project. We really enjoyed working on this project and it was one of the most interactive and visually fun things we've helped build, so we thought we'd share some of our personal highlights with you.

We were lucky to work with a very talented team at RPF whose skills complimented ours. Product Manager Laura and designer Louise worked with us day-to-day while learning technologist Rik supported the team with learning design and paedagogy.

The Raspberry Pi Foundation run a national programme of Code Clubs. Volunteer-led extra curricular clubs for children aged 7-14 where they can learn about coding and digital making by working on coding projects. During the pandemic that started in 2020 these Code Clubs were unable to run. To address some of what was lost, RPF decided to build something new to help children who were stuck at home start coding even if they didn't have the support of code club volunteers and peers. We wanted something that would act as a fun, game-like introduction to programming with a block-based programming language (the first stages of the Code Club curriculum use the MIT Scratch programming language) that would also give children something to make and share with their friends and family.

Code Club World is a virtual world of coding activities. It runs in the browser (including on mobile devices) and is built using ReactJS with a Ruby on Rails backend. We helped design and build the "world" itself and 4 fun "starter activities" that let children use a block-based programming language to design an avatar to represent them in the virtual world, to create a sharable T-shirt for their avatar to wear and create music for their avatar to dance to.

Here's a few highlights!

## A map of Code Club World

- SVG in general

## Dancing robots

In the [Robo Boogie](https://codeclubworld.org/activities/dance/new) activity you can write a program to make your avatar dance to music. We wanted the instructions in this program to be at a high level ("arms down", "high splits" rather than "rotate arm 32 degrees") because the learning objectives of the activity are to introduce sequences of instructions, looping, and randomness rather than the details of animation.

To achieve this we wrote some code to allow the avatar SVG to be [rigged](https://en.wikipedia.org/wiki/Skeletal_animation) in Figma (the design tool Louise used for the project) and for that information to be extracted and converted into JavaScript code.

- prototyping tool
- extracting from figma
- using your music in the dance (big feature request)
- spotlight stuff

## Design a T-Shirt

- iteration based on user feedback

## Make some music

- web audio
- sound design
- love will tear us apart
- iteration (melody and drum blocks)

# Thanks

Joel
Chris P
Moira
Wider RPF team

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:created_at: 2021-12-16 16:40:00 +00:00
:updated_at: 2021-12-16 16:40:00 +00:00
:page_title: Code Club World - Our project with the Raspberry Pi Foundation
