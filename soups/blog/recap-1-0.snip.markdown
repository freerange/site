Recap 1.0
=========

It was way back in [week 138](/week-138) that we first mentioned tomafro-deploy.  Almost a year later, and with a name change along the way, I'm pleased to announce the 1.0 release of [recap](https://github.com/freerange/recap).

In case you don't know, recap is an opinionated set of Capistrano recipes, designed to replace the default capistrano deployment.  Its main features are:

  - Using git to manage releases (no current, releases and shared directories).
  - Doing the minimum work on each deploy (only running bundle install if the bundle has changed).
  - Giving each app a dedicated account on the server, that owns all of that application's files and processes.
  - Making it easy to set configuration environment variables
  - Built-in support for foreman (defining application processes) and bundler

There's still a lot more to add.  Two things I'd like are running different processes on different machines (i.e. the job queue on one machine, unicorn on another) and support for different staging environments.  Even without these features, we've been using it successfully for several months.  You can seen it in action [on my website](https://github.com/tomafro/tomafro.net/blob/lanyon/Capfile), [in sauron](https://github.com/freerange/sauron/blob/master/Capfile) and even [on this site](https://github.com/freerange/site/blob/master/Capfile).

Please try it out and let us know what you think.  You can find the code [on github](https://github.com/freerange/recap), and the documentation at [gofreerange.com/recap/docs](/recap/docs).

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: tom-ward
:created_at: 2012-05-04 15:05:00 +00:00
:updated_at: 2012-05-04 15:05:00 +00:00
:page_title: Introducing Recap
