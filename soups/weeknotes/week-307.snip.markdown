Week 307
========

Howdi, folks.

James and I spent another four days at [FutureLearn][]. We both did quite a bit of pairing with various people in the team during the week, which we both really enjoy. I hope other people get as much out of it - we're aware that we promote pairing quite a bit but never want to force anyone to do it.

In addition to our normal development duties we both spent a day on FutureLearn tech support and QA. Both these roles are shared by the development team, and people are randomly selected each week to ensure that everyone takes part. I think this is a great idea. Being on tech support in particular, really gives you an idea of the sort of problems our users might be facing.

[Ricardo][] and I spent some time investigating a Missing Template exception that had made its way to [Honeybadger][]. Having investigated various routing options (see my [Rails routing gist][] for more) I came to the conclusion that we should probably be using constraints in our routes to restrict the number of URLs that resolve to the same content. This is in a similar vein to using the `only` (or `except`) options to avoid missing template errors when we don't implement one of the standard controller actions. I don't recall using constraints before but I'm fairly sure I'll be using it in future now that I understand a little more about it.

[James M][] (a different one!) and I spent some time adding [JSHint][] to our build process. This sits alongside [Rubocop][] and detects problems with our JavaScript that might trip us up.

We finished the week with sprint review and a few beers at [The Fellow][], which was splendid.

## GFR

We spent our day at GFR preparing for our Christmas party and continuing to discuss what to do with all our office furniture now that we know we're moving out in January. We've decided that we're going to dispose of the old tables and chairs that we inherited with the office, donate the two smaller sofas to the British Heart Foundation and put the remaining items in storage until such time that we have a new office.

We brought [Show and Tell][] forward a week to avoid a clash with our Christmas party. We weren't quite sure how many people were going to turn up but I think we ended up with about 6 of us in the end. James is writing this up in more detail and we'll get that published soon.

James and I took a look at [Containerville][] as a potential new office on Friday morning. These shipping containers are around a third the size of our current office and around a quarter of our current monthly office costs! We like them but we're not sure whether the lack of light might become a bit of a problem.

Until next time.

-- Chris

[Containerville]: http://estateoffice.com/containerville/
[FutureLearn]: https://www.futurelearn.com/
[Honeybadger]: https://www.honeybadger.io/
[James M]: https://twitter.com/jamesmockett
[JSHint]: http://jshint.com/
[Rails routing gist]: https://gist.github.com/chrisroos/f9d539773542da79a583
[Ricardo]: http://ricardolopes.net/
[Rubocop]: https://github.com/bbatsov/rubocop
[Show and Tell]: /show-and-tell-events
[The Fellow]: http://thefellow.co.uk/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2014-12-11 16:00:00 +00:00
:updated_at: 2014-12-12 11:00:00 +00:00
:page_title: Week 307
