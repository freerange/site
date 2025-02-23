Week 298 - Interesting links
============================

### [Tunnels - HTTPS to HTTP proxy](https://github.com/jugyo/tunnels)

I've been using this to serve a local Rails app over SSL using [Pow][]. Browsers will complain about the certificate but it's good enough to ensure that we're not getting any mixed content problems. <%= by('chris-roos') %>


### [New Interface for Google Takeout](http://googlesystem.blogspot.co.uk/2014/09/new-interface-for-google-takeout.html)

I use the [Google Drive Client][] to ensure that I have copies of my Drive data stored on my laptop as well as online. That works great for regular files but not so well for native Drive files (e.g. Docs and Sheets) as the Client stores them as links rather than files containing the data.

To reduce the risk of losing potentially important information should I lose access to my Drive, I've also been using [Google Takeout][] to regularly backup the content of my Drive. This backup contains all native Drive files exported in Microsoft/Open Office compatible formats (docx and xlsx, for example).

This new version of Takeout allows you store the backup in Google Drive itself. Assuming you're running the Drive Client then the process of storing backups of all your Drive data just became a little bit easier. <%= by('chris-roos') %>


### [Refactoring Ruby with Monads - Tom Stuart](https://www.youtube.com/watch?v=J1jYlPtkrqQ)

I struggled a bit with the Barcelona Ruby Conference superhero (?) background, but this 30-minute video is well worth a watch. [Tom][Tom Stuart] carefully walks you through a bunch of easy to understand Ruby code and then explains how it turns out you've just been using monads without realising it. Sneaky, but neat! <%= by('james-mead') %>


### [The problem with estimates part 2 - all cost, no value](http://www.energizedwork.com/weblog/2014/09/the-problem-with-estimates-all-cost-no-value)

This article talks about the asymmetry in cost/value estimation i.e. most teams put a lot of effort into producing estimates of the cost of a feature, but very little into estimating the value of that feature. <%= by('james-mead') %>


### [CDN acceptance testing for GOV.UK](https://gdstechnology.blog.gov.uk/2014/10/01/cdn-acceptance-testing/)

This is an excellent detailed write-up of how GDS wrote a set of automated tests around their CDN with a view to replacing it. I particularly like the fact that in doing so they have accurately characterised the behaviour of the existing CDN and even uncovered some bugs. <%= by('james-mead') %>


### [Display #Anchors Chrome extension](https://chrome.google.com/webstore/detail/display-anchors/poahndpaaanbpbeafbkploiobpiiieko/related)

I usually try to link to a specific section/paragraph on a page if I can. In fact one of my pet hates is HTML pages containing structured text that have *no* in-page anchors. This plugin doesn't address my pet hate, but it does make it much easier to _find_ any existing in-page anchors. <%= by('james-mead') %>


[Google Drive Client]: https://tools.google.com/dlpage/drive
[Google Takeout]: https://www.google.com/settings/takeout
[Pow]: http://pow.cx/
[Tom Stuart]: http://codon.com/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-10-03 09:52:00 +00:00
:updated_at: 2014-10-03 09:52:00 +00:00
:page_title: Week 298 - Interesting links
:erb: true
