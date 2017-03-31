Week 428
========

This week we divided our time between working for our
client [GDS](https://gds.blog.gov.uk/) on the Manuals Publisher
project and working on our own Go Free Range projects. We're still
based mostly out of the Office Group co-working space on Bloomsbury
Way although we took advantage of our ability to work anywhere this
week by working a couple of days at home. Chris R has been on leave
with his family in Iceland.

## GDS

One of the great things about working on GDS projects is that a lot of
the code is available for anyone to look at on Github. This week we
opened
[15 pull requests](https://github.com/alphagov/manuals-publisher/pulls?utf8=%E2%9C%93&q=is%3Apr%20created%3A2017-03-27..2017-04-01). There's
still quite a bit of simple renaming refactoring to do in the code
base, although because of Ruby's dynamic nature and the large number
of classes and files these renames can be quite time-consuming.

We've identified that the application currently deals with 3 main
domain concepts. "Manuals" are comprised of multiple, ordered
"Sections" which can have a number of file "Attachments". We've slowly
been
[renaming methods and variables](https://github.com/alphagov/manuals-publisher/pull/919) to
make the code reflect the domain. I think this is starting to pay off
as it is becoming much easier to see what the individual controller
actions do, for example.

The application publishes to an API, but also stores state in a local
MongoDB database. In the medium term we'd like to "fully migrate" the
application so that it talks only to the API - but in the meantime
we've been stuck on a old version of the library that interacts with
MongoDB. We decided to take on some work
to
[upgrade to a more recent version](https://github.com/alphagov/manuals-publisher/pull/928) of
this library (and made
the
[configuration of the connection](https://github.com/alphagov/manuals-publisher/pull/936) more
consistent with other GDS applications along the way). It took us a
little while to realise that these changes had broken the deployment
process in the integration environment, so we're investigating how to
get those notifications.

The application was originally written using some dependency injection
techniques that are not particularly idiomatic in Rails
applications. The use of these makes it harder for people to
understand the application and are less relevant now that the scope of
the application has become simpler. Where we can
we've
[removed things like the "repository registry"](https://github.com/alphagov/manuals-publisher/pull/926).

Towards the end of the week James and I started to spike an approach
to simplify the code further by start with
a
[controller action](https://github.com/alphagov/manuals-publisher/blob/33bee7df0/app/controllers/manuals_controller.rb#L22) and
work our way in. The app currently makes a distinction between classes
that talk to MongoDB, objects that represent domain concepts, and
"repositories" and "marshallers" which combine the two. We're trying
to bring some of those concepts together in a more idiomatic way.

## GFR

A couple of weeks ago we started having
short
[retrospectives](https://en.wikipedia.org/wiki/Retrospective#Software_development) on
a Friday afternoon. Although these kind of meetings are most
frequently used with software development projects, we've found the
format of talking about what has gone well and less well and how to
improve useful in making changes to our process. As a result we've
started to use [Harmonia](http://harmonia.io/) to remind us to work
through our Trello "inbox" each day so that we keep on top of incoming
ideas and communications.

At last weeks retrospective we also decided
to
[write a blog post](http://gofreerange.com/cooperating-with-fairmondo)
on our work with fellow cooperative Fairmondo UK.

Our accountant has started making up our annual accounts and he's been
asking us some questions.

If you'd like to see what we've been reading this
week
[take a look at our week links](http://gofreerange.com/week-428-links). Have
a great weekend!

:name: week-428
:updated_at: 2017-03-31 15:56:43.129945000 +01:00
:created_at: 2017-03-31 15:56:43.129935000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 428
:extension: markdown
