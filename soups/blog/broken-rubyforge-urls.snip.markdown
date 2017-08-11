Broken Rubyforge URLs
=====================

For many years Rubyforge hosted the majority of Ruby libraries - it provided subversion repositories, mailing lists, bug tracking, documentation hosting and much more. However, in recent years it was definitely showing it's age and [about 4 years ago it was shutdown][rubyforge-shutdown].

Unfortunately this meant that many of the links to Ruby gem documentation from existing blog posts and even pages on [rubygems.org][] were broken. In an effort to fix this, [Tom Stuart][] started [this project][rubyforge-redirects] to crowd-source new URLs for Ruby gem documentation and setup redirects in the hope that [Ruby Central][], the owners of the `rubyforge.org` domain, might be persuaded to run an instance of the project on the domain.

At this point my memory goes a bit hazy and I can't seem to find any documentary evidence of what actually happened, but I'm pretty sure someone ([Tom Copeland][]?) setup some redirects for a number of projects including [Mocha][] - although I don't think they actually used [rubyforge-redirects][] to do this. Given that redirects were now in place, I have to confess that my interest waned.

However, recently I was disappointed to [discover][copeland-tweet] that even these redirects seem to have disappeared. Indeed, although Ruby Central still seem to own the domain, the domain isn't responding to HTTP traffic at all.

Many historical blog posts and even current gem pages still link to `rubyforge.org` URLs, e.g. the "Documentation" link on the [Rack gem page][rack-gem]. As Tim Berners-Lee said, ["cool URIs don't change"][cool-uris], so it feels like a real shame that all these URLs have died.

I've tried contacting Ruby Central folk via Twitter and [email][ruby-central-email] to see whether they'd be open to the idea of a community-led project (like Tom's) taking over the domain to keep these URLs alive, but I haven't had any reply.

[rubyforge-shutdown]: https://twitter.com/evanphx/status/399552820380053505
[rubygems.org]: https://rubygems.org/
[Tom Stuart]: http://codon.com/
[rubyforge-redirects]: https://github.com/tomstuart/rubyforge-redirects
[Ruby Central]: http://rubycentral.org/
[rack-gem]: https://rubygems.org/gems/rack/
[copeland-tweet]: https://twitter.com/floehopper/status/889589392335138816
[ruby-central-email]: https://twitter.com/floehopper/status/889589392335138816
[cool-uris]: https://www.w3.org/Provider/Style/URI.html
[Mocha]: http://gofreerange.com/mocha
[Tom Copeland]: https://thomasleecopeland.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2017-08-11 12:22:00 +01:00
:updated_at: 2017-08-11 12:22:00 +01:00
:page_title: Broken Rubyforge URLs
:draft: true
