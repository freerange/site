## Required changes to match existing version of site

* Use Rails recipe for recap deployment if necessary

## Problems with existing version of site

* Do we need the timmy JS stuff in project layout?
* Nested <ul> for blog navigation side-bar (list-of)
* Do we need both/either of "gfr" & "fr" snips
* Consistent naming of snip files & templates - underscores not hyphens?
* Do we need public_keys snip
* Should we be using `Time.now` as a default in the atom entry ID?
  * Maybe better to fail fast?
* Fail fast if included snip not found
* RSS/Atom feed - validation warnings

## Possible improvements

* Remove duplication across layouts
* Use standard url_to method or at least distinguish custom url_to method from it
* Only use one of HTML & HAML - I suggest we use HTML
* Consider using Rails atom_feed helper method - no dependency on `ratom` gem
* Use template/builder approach for sitemap & atom feed?
* Use asset pipeline?
* Consider replacing blog_renderer_test
* Remove unused assets e.g. most of Javascript?
* Consider reinstating project image rendering
