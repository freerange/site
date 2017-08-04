Monday Links - Week 250
==================

### [Chromello for Trello](https://chrome.google.com/webstore/detail/chromello-for-trello/fconmkoajclilefnnpmfkcpfbicnppkj?hl=en)

I've only recently started using [Trello](https://trello.com/) in anger and am seriously considering migrating some of my workflow from Google Tasks and [Fargo](http://fargo.io/). I've only just started exploring the third party tools available for Trello and this one seems pretty good - it's a Chrome extension that makes adding a new card to any of your boards really easy. <%= by('chris-roos') %>


### [An investigation in testing `render :partial` with `assert_template`](https://gist.github.com/chrisroos/7153418)

[Melinda](http://missgeeky.com/) and I paired on tidying up some of the rspec view specs in our current project. We came away with some recommendations, one of which was to test that partials are being rendered by using `expect(view).to have_rendered('<name-of-partial>')`. While good for the simple case, this approach does have a couple of gotchas that I've explored in this gist: Namely that it won't work as you'd expect if you use the either the `:object` or `:collection` options of `render :partial`. <%= by('chris-roos') %>


### [Tweakpoints](http://adactio.com/journal/6044/)

I read this after it was mentioned by [Barry](https://twitter.com/barrymcgee) on our current project. Reading this and the related "[The In-Between](http://www.markboulton.co.uk/journal/theinbetween)" post made me realise that while I was using the term, 'breakpoint', I didn't actually know what it meant. And now I do. <%= by('chris-roos') %>


### [Google Street View Hyperlapse](http://vimeo.com/63653873)

I came across the term Hyperlapse after watching this excellent "[Louisville In Motion](http://vimeo.com/76161556)" video. A little googling lead me to this great video built from images taken by the Google Street View cameras. While certainly not the same, the idea of combining images from an existing source reminded me of the [timelapse video I made by grabbing images from the harbour webcam in my home town](http://chrisroos.co.uk/blog/2009-01-13-24-hours-of-ramsgate-outer-harbour). <%= by('chris-roos') %>


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2013-10-28 18:30:00 +00:00
:updated_at: 2013-10-28 18:30:00 +00:00
:page_title: Monday Links - Week 250
