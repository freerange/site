Week 344 - Interesting links
============================

### [The Language of Modular Design](http://alistapart.com/article/language-of-modular-design)

Chatting to [Chris Lowis](http://chrislowis.co.uk) over lunch today reminded me about this excellent article by [Alla](http://www.craftui.com/). She talks a lot about the importance of coming up with good names for UI components and making sure your team has a [common understanding of those names](http://martinfowler.com/bliki/UbiquitousLanguage.html). Great stuff! {by james-mead}


### [git_snip](https://github.com/htanata/git_snip)

I haven't tried this out in anger yet, but it's supposed to safely clean up obsolete branches on your Git repository. In particular it's supposed to cope with branches which have been merged on a remote (e.g. GitHub). Apparently it does this by using [`git cherry`](https://www.kernel.org/pub/software/scm/git/docs/git-cherry.html) (as opposed to [`git cherry-pick`](https://www.kernel.org/pub/software/scm/git/docs/git-cherry-pick.html)), a useful looking Git command which I hadn't come across before. {by james-mead}


### [ActiveSupport::Testing::TimeHelpers](http://api.rubyonrails.org/classes/ActiveSupport/Testing/TimeHelpers.html)

I hadn't noticed that these [Timecop](https://github.com/travisjeffery/timecop)-esque methods (e.g. `#travel`) are now built in to Rails itself. I'm not a huge fan of using Timecop, so I have mixed feelings about this, but it's interesting none-the-less. {by james-mead}


### [ruby-values-traversals](https://github.com/npryce/ruby-values-traversals)

In this library, [Nat Pryce](http://www.natpryce.com/) has extended the [Values gem](https://github.com/tcrayford/Values) with first-class traversals. He also had a fork of the Values gem in which he'd implemented Haskell-esque Lenses, but that seems to have disappeared now. Anyway, I'd never heard of these things before and so I plan to read up about them. Apparently [this video](https://www.youtube.com/watch?v=cefnmjtAolY) is a good crash course. {by james-mead}


### [git-remote-dropbox](https://git.io/dropbox)

> This [Git remote helper](https://www.kernel.org/pub/software/scm/git/docs/gitremote-helpers.html) makes Dropbox act like a *true* Git remote. It maintains all guarantees that are provided by a traditional Git remote while using Dropbox as a backing store. This means that it works correctly even when there are multiple people operating on the repository at once, making it possible to use a Dropbox shared folder as a Git remote for collaboration.

This looks interesting, but I'm not sure what I'd use it for! Maybe backups of my GitHub repositories...? {by james-mead}


### [Deft](https://github.com/npryce/deft/wiki/Quickstart-Guide)

This is an issue tracking tool which stores issues in plain-text files so you can keep them alongside your source code i.e. in the same repo. I've seen it before, but I came across it again, because someone has released a primitive OSX GUI app for it called [Tracksuit](https://github.com/kingsleyh/tracksuit). {by james-mead}


### [Brighton Homebrew Website Club](https://adactio.com/journal/9350)

[Jeremy Keith][jeremy-keith] is starting a [Homebrew Website Club][hwc] in Brighton. If you're interested in the [IndieWeb][] and can get to Brighton then this would be a great event to get involved in. It makes me think about trying to start one in London again. {by chris-roos}


### [This is how you shut down a service](http://ntlk.net/2015/08/13/this-is-how-you-shut-down-a-service/)

I've never used [This Is My Jam][this-is-my-jam] but it sounds like they're handling the shutting down of their service better than most. Via [Nat Buckley][]. {by chris-roos}


### [Plus codes in Google Maps](http://google-latlong.blogspot.co.uk/2015/08/plus-codes-new-way-to-help-pinpoint.html)

I linked to [Google's Plus Codes][pluscodes] in our [links for week 332][week-332-links]. I wondered at the time how successful they might be so was interested to read that they've added support for reading them in Google Maps. They only have support for parsing the codes at the moment to I wonder whether this is a bit of a trial to see whether people actually use them before they possibly add support for generating them too. {by chris-roos}


[hwc]: https://indiewebcamp.com/Homebrew_Website_Club
[indieweb]: https://indiewebcamp.com
[jeremy-keith]: https://adactio.com/
[pluscodes]: https://plus.codes/
[this-is-my-jam]: https://www.thisismyjam.com/
[week-332-links]: /week-332-links
[Nat Buckley]: http://ntlk.net/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-08-21 15:25:00 +01:00
:updated_at: 2015-08-21 15:25:00 +01:00
:page_title: Week 344 - Interesting links
