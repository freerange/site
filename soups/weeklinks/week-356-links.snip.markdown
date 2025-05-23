Week 356 - Interesting links
============================

### [Documenting Architecture Decisions](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)

We've been introduced to these Architecture Decision Records (ADRs) at [GDS][gds]. They've been introduced to a number of projects (e.g. [stagecraft][stagecraft-github], [publishing-api][publishing-api-github] and [backdrop][backdrop-github]) and we've been encouraged to use them to record some of the significant decisions in [Smart Answers][smart-answers-github] (e.g. for the [removal of Smartdown][smart-answers-pr-2053]). I think our natural preference would be to record this sort of information (albeit not quite in this format) in our commit notes, although that can inevitably be quite hard to discover later. So far I quite like the idea of these ADRs and will be interested to see whether we end up using them on future projects. <%= by('chris-roos') %>


### [HTML Tidy](http://www.html-tidy.org/)

This is the successor to the original [HTML Tidy][w3-html-tidy]. The original comes pre-installed on Mac OS X but you can get the later version using [Homebrew][homebrew] (`brew install tidy-html5`). I'm in the process of converting my static blog from [Webby][webby] to [Jekyll][jekyll] and am using HTML Tidy to normalise the output of each version so that I can use `diff` to work out what I still have to convert. <%= by('chris-roos') %>


### [colordiff](http://www.colordiff.org/)

> The Perl script colordiff is a wrapper for 'diff' and produces the same output but with pretty 'syntax' highlighting. Colour schemes can be customized.

I'm used to having 'syntax' highlighted diffs when using `git diff` but miss it when I'm using plain old `diff`. This script gives me nicely coloured diffs in the terminal. <%= by('chris-roos') %>


### [A Client Project, Two Years Later](https://robots.thoughtbot.com/a-client-project-two-years-later)

I really like this idea of going back to a project you worked on some time ago to find out how they've found working with your code and then writing about it. I'd like to try doing something like this for projects we've worked on. <%= by('james-mead') %>


### [From Bedrooms to Billions](http://www.frombedroomstobillions.com/)

> A 2014 documentary film by British filmmakers Anthony & Nicola Caulfield that tells the story of the British video games industry from 1979 to the present day. The film focuses on how the creativity and vision of a relatively small number of individuals allowed the UK to play a key, pioneering role in the shaping of the billion dollar video games industry which today dominates the modern world's entertainment landscape.

This documentary film and its [companion book](http://readonlymemory.vg/shop/book/britsoft-an-oral-history/) sound fascinating. <%= by('james-mead') %>


### [Fighting Uber's Death Star with a Rebel Alliance of co-op platforms](http://boingboing.net/2015/11/03/fighting-ubers-death-star-wi.html)

I like really the idea of cooperative alternatives to the death stars of Uber, Airbnb, Facebook, etc. And this article makes it sound like an achievable possibility. <%= by('james-mead') %>


### [The Others](https://storify.com/mseckington/the-others)

This was the improvised adventure story tweeted by [Melinda](https://missgeeky.com/) throughout the day on Hallowe'en. I thought it was impressively intricate, especially given how she ["pretty much just started tweeting on Saturday without any real plan on how the story would evolve"](http://missgeeky.com/2015/11/03/the-others-behind-the-scenes/). Look out for part 2! <%= by('james-mead') %>


[backdrop-github]: https://github.com/alphagov/backdrop/tree/master/doc/arch
[gds]: https://www.gov.uk/government/organisations/government-digital-service
[homebrew]: http://brew.sh/
[jekyll]: https://jekyllrb.com/
[publishing-api-github]: https://github.com/alphagov/publishing-api/tree/master/doc/arch
[smart-answers-github]: https://github.com/alphagov/smart-answers
[smart-answers-pr-2053]: https://github.com/alphagov/smart-answers/pull/2053
[stagecraft-github]: https://github.com/alphagov/stagecraft/tree/master/doc/arch
[w3-html-tidy]: http://www.w3.org/People/Raggett/tidy/
[webby]: https://github.com/TwP/webby

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-11-10 16:30:00 +00:00
:updated_at: 2015-11-10 16:30:00 +00:00
:page_title: Week 356 - Interesting links
:erb: true
