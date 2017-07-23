## Problems with existing version of site

* Nested <ul> for blog navigation side-bar (list-of)
* Consistent naming of snip files & templates - underscores not hyphens?
* Do we need public_keys snip
* Should we be using `Time.now` as a default in the atom entry ID?
  * Maybe better to fail fast?
* RSS/Atom feed - validation warnings
* Consider hiding "partial" snips, e.g. "work", "company_info"

## Possible improvements

* Remove duplication across layouts
* Use standard url_to method or at least distinguish custom url_to method from it
* Consider using Rails atom_feed helper method - no dependency on `ratom` gem
* Use template/builder approach for sitemap & atom feed?
* Use asset pipeline?
* Consider replacing blog_renderer_test
* Remove unused assets e.g. most of Javascript?
* Consider reinstating project image rendering
* Extract Google Analytics account ID into env var
* Simple HTTP caching
