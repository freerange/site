Week 424
========

Hello world! It's my first time writing the Go Free Range
weeknotes. There's a few reasons why we write these notes: they serve
as a useful reference for us when we're looking back, they provide a
moment to reflect on the week and how we approach and feel about
certain situations, and we hope they are interesting to our friends,
clients and onlookers.

James and I started the week working from the Barbican centre (in
particular the Benugo cafe in the Barbican cinema). It's a quiet and
fairly comfortable place, but suffers from slightly patchy Wifi
reception. While Chris R enjoyed a day in Bath with some friends, we
spent unfortunately too long working out why I couldn't deploy changes
to this website. My SSH keys were not being forwarded on to Github, so
the server we deploy the site to couldn't fetch the latest code.

It turns out that this
is
[due to a change with how MacOS Sierra integrates](https://developer.apple.com/library/content/technotes/tn2449/_index.html) with
`ssh-agent`, which we eventually resolved by adding the following
lines to my `~/.ssh/config`

```
  AddKeysToAgent yes
  UseKeychain yes
```

A bit frustrating but it's good to know that Sierra is keeping up to
date with the best practices of the upstream OpenSSH project.

We carried on with a bunch of tasks related to Go Free Range taking me
on as a new member such as making sure I was added to our pension plan
so that we are in compliance with
the
[auto-enrolment rules](https://www.gov.uk/workplace-pensions/about-workplace-pensions),
and sorting out our payroll.

On Tuesday Chris R joined us at The Office Group
Holborn. [Harmonia](https://harmonia.io), the system we use to
randomly and fairly distribute tasks to our members, chose me to file
our Q1 VAT returns - a task made surprisingly straight forward thanks
to the documentation James and Chris have written in the past.

We
[discussed with our CoTech friends](https://www.loomio.org/d/8huKDznq/cotech-retreat-2017) about
organising a retreat later in the year. It was great to catch up with
some of the other members at [Open:2017](https://2017.open.coop/) and we think we'll continue to
build momentum by getting some of the other tech coops together later
in the year.

On Wednesday James and Chris worked from home and I spent the
afternoon at the British Library after catching up with a friend for
lunch. The library is a fairly comfortable place to work but can get
fairly busy. I was lucky to snag a comfortable chair and desk and
managed to get quite a lot done. We
published
[week links for week 424](http://gofreerange.com/week-424-links) and
organised our
next [Show & Tell event](http://gofreerange.com/show-and-tell-events).

On the way home I thought a bit about how we
use [Trello](https://trello.com) to manage tasks. I'd struggled to
understand why some of the things in our todo list were there and on
Thursday morning James and Chris explained a few of the tasks to me
and we decided to think a bit about whether we want to spin out some
project-focused boards to keep some of our ideas out of the day-to-day
view we use in Trello.

We went to Aviation House to meet Jack who is handling the contract
for the work we are doing
at
[GDS](https://www.gov.uk/government/organisations/government-digital-service) and
went through a few procedural details. I've never visited Aviation
House before and it was fun to see some of the many whiteboards and
post-it-notes that I know from their detailed blog posts. I also
bumped into an old friend from my days at BBC Music who is now working
there.

The three of us went to a meeting with a potential client. It was a
good discussion and while we've not yet committed to work together we
were able to help them out by talking through their project ideas and
sharing some advice with them. After the meeting we sent over a few
links to projects and ideas that we think are relevant to their
work. We retired to the pub at the end of the day and continued a
slightly more lubricated discussion about how we work and what we want
to achieve in the coming year.

We've been thinking a bit about where we want to work. In a lot of
ways we miss the offices we had at Worship Street (where I used to
spend the occasional day working on my Web Audio side projects before
I joined Go Free Range). They were quiet, comfortable and allowed us
to host meetups and have visitors. We decided to take a look at one of
the dedicated offices that The Office Group have in
their
[St. Stephen Street](http://www.theofficegroup.co.uk/office/2-stephen-street/) premises. A
four-person office we looked at was bright and spacious - but felt a
little bit too much of a commitment at the moment. Instead we decided
to upgrade our membership of TOG in order to have access to a quieter,
more comfortable "co-working" space and a locker to store some of our
stuff. This feels like a good compromise at the moment and has the
advantage that we can work close to our current client. We'll review
this in the coming months.

We finished the week by reallocating some of our shares so that we all
have an equal amount. My Friday afternoon trip to the dentist
proceeded a disrupted journey home due to
an
[unexploded WW2 bomb](http://www.bbc.co.uk/news/uk-england-london-39151023) found
near the Overground line.

Until next week!

:name: week-424
:updated_at: 2017-03-08 16:33:00 +01:00
:created_at: 2017-03-08 16:33:00 +01:00
:render_as: Blog
:kind: blog
:draft: false
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 424
:extension: markdown
