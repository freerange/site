* Nested <ul> for blog navigation side-bar (list-of)
* Page titles - especially defaults which I think I've lost
* Snip tags within pages
* HAML pages
* Asset pipeline?
* Sitemap
* RSS feed
* Do we need both/either of "gfr" & "fr" snips
* Consistent naming of snip files & templates - underscores not hyphens?
* Do we need public_keys snip
* Only use one of HTML & HAML - I suggest we use HTML
* Should atom feed include S&T events (don't think it currently does) - kind=blog
* Should atom feed include author attribution, Disqus comment & navigation side-bar sections?
  * I think this is happening because Vanilla::AtomFeed is rendering the
    snip within the blog-template
* Consider using Rails atom_feed helper method - no dependency on `ratom` gem
* Should we be using `Time.now` as a default in the atom entry ID?
  * Maybe better to fail fast?
* Validate RSS/Atom feed
* Clarify use of created_at & updated_at - how are they used?
  * in RSS/Atom feed
  * in sort order on various index pages
* Make URLs in atom feed content absolute, i.e. include protocol & host
  * It's possible Feedburner does this automatically
  * c.f. https://github.com/lazyatom/vanilla-rb/blob/d632db587235722cab79d5dd07515e8252277ec5/lib/vanilla/atom_feed.rb#L66-L82
* Remove vanilla-related code
* Work out how we want to deploy the app
* Do we need the timmy JS stuff in project layout?
* Fail fast if included snip not found
* Use Rails recipe for recap deployment
* Use Rails.env vs RACK_ENV
* url_to method is non-standard
* Use template/builder approach for sitemap & atom feed?
* Check mocha & recap docs index pages are in sitemap - they won't show up in development, because they rely on server directory structure and publication mechanisms of those gems
* Escape content HTML in Atom feed (validation?)
