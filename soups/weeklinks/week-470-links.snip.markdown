Week 470 - Interesting links
============================

### [Ruby Toolbox rescue](https://github.com/rubytoolbox/rubytoolbox/issues/1#issuecomment-333950079)

I was pleased to read that [Ruby Together][] have offered to sponsor [Christoph Olszowka][]'s work on re-building the [Ruby Toolbox website][]. While I'm not convinced a big re-write is the *best* option, I'm just happy that a Ruby community website is going to survive a bit longer, unlike [what happened to Rubyforge][rubyforge-death]. <%= by('james-mead') %>

[Ruby Together]: https://rubytogether.org/
[Christoph Olszowka]: http://olszowka.de/
[Ruby Toolbox website]: https://www.ruby-toolbox.com/
[rubyforge-death]: https://twitter.com/evanphx/status/399552820380053505


### [DoubleAgent](https://doubleagent.io/)

Almost four years ago, [Chris R built a bookmarklet][build-bookmarklet] to help us explain FreeAgent transactions. Not long afterwards [we extended it and published it][publish-chrome-extension] as [a Chrome Extension][chrome-extension]. We've been making regular use of it ever since. So it was interesting to see that [Andrew Stewart][] has recently launched DoubleAgent to do something very similar, especially as he's charging money for it! Via [Tom S][]. <%= by('james-mead') %>

[build-bookmarklet]: http://gofreerange.com/automating-some-of-the-freeagent-transaction-explanation-process
[publish-chrome-extension]: http://gofreerange.com/chrome-extension-for-explaining-bank-transactions-in-freeagent
[chrome-extension]: https://chrome.google.com/webstore/detail/freeagent-transaction-exp/lgpgdkoopbcppnipcnbodcobjmhagmim
[Andrew Stewart]: https://airbladesoftware.com/
[Tom S]: http://codon.com/


### [One Bite At A Time: Partitioning Complexity](https://www.facebook.com/notes/kent-beck/one-bite-at-a-time-partitioning-complexity/1716882961677894/)

This article by Kent Beck really resonated with me. I've always found it hard to keep a lot of detailed information in my head at one time and so the following quote made me feel better about myself:

> A recent programming project of my own reminded me that just because I can't handle lots of complexity at once, it doesn't mean I can't program.

And I still experience the following scenario way too often:

> My final observation is just how frequently I fall off the complexity wagon. I **want** to be a genius programmer. I **ought** to be able to handle this. **This time it's different**. Then I look up, realize I've been two hours without green tests, revert, take a walk, sit down, and go back to eating one bite at a time.

I really should've learnt my lesson by now! <%= by('james-mead') %>


### [Destroying capitalism, one stately home at a time](http://dougbelshaw.com/blog/2017/12/01/cotech-gathering/)

A short but useful write-up of the [2nd Annual CoTech gathering][cotech-2017] by Doug Belshaw of [We Are Open][]. <%= by('james-mead') %>

[cotech-2017]: https://wiki.coops.tech/wiki/Wortley_Hall_2017
[We Are Open]: http://weareopen.coop/

### [Dealing with surprising human emotions: desk moves](http://larahogan.me/blog/desk-moves/)

Lara Hogan discusses something that I've seen happen in every large company I've worked in - the strong emotions brought up by large scale desk moves. Lara uses this as an example of applying the [BICEPS](https://www.palomamedina.com/biceps) model for understanding human needs in the workplace. I found the article particularly thought-provoking in the context of [worker co-operatives](http://coops.tech/). Discussing the emotional impact of decisions is something we need to be constantly mindful of as we don't have the same management practices Lara suggests to catch things. <%= by('chris-lowis') %>

### [UK's Open Banking to Launch on 13 January 2018](https://www.openbanking.org.uk/about-us/news/uks-open-banking-launch-13-january-2018/)

While I was initially quite excited about this, I've recently discovered that in order to be allowed to use the APIs, you have to be authorised by the FCA which is apparently a process that can take up to 3 months and is almost certainly a costly exercise. Thus these APIs are not designed for you to interact with you own bank account, but for 3rd parties to request access to your account to offer you services.

While I can understand that restrictions need to be in place for accessing other people's accounts, I can't see why there isn't a way to access your own account without having to jump through all the same hoops. <%= by('james-mead') %>

### [At The Café: Conversations on Anarchism](https://theanarchistlibrary.org/library/errico-malatesta-at-the-cafe)

I've been enjoying Errico Malatesta's collection of (fictional) dialogues on topics such as work, property, crime and government.

A friend recently affectionately described Go Free Range as "a company without a mission" and I've been trying to square that with the very real sense of purpose I feel in the day to day act of working cooperatively. It's something that I'd like to try and write some more about in 2018. In this context this quote from At The Café struck me:

> What we would like is for everybody to live in the best possible way: so that everybody with a minimum amount of effort will obtain maximum satisfaction.
>
> I don't know how to give you a theoretical formula which correctly depicts such a slate of affairs; but when we get rid of the social environment of the boss and the police, and people consider each other as family, and think of helping instead of exploiting one another, the practical formula for social life will soon be found.
>
> In any case, we will make the most of what we know and what we can do, providing for piece-by-piece modifications as we learn to do things better.

<%= by('chris-lowis') %>

### [Use any C library from Ruby via Fiddle](http://blog.honeybadger.io/use-any-c-library-from-ruby-via-fiddle-the-ruby-standard-librarys-best-kept-secret/)

I was aware of the [`ffi` gem][ffi-gem], but I didn't realise that Ruby's standard library has included [Fiddle][], a wrapper for `libffi`, since v1.9. Unfortunately, the documentation for Fiddle is pretty sparse, so I found this article and [this other one][fiddle-statfs] invaluable when working on my recent [containers-from-scratch project][]. <%= by('james-mead') %>

[ffi-gem]: https://github.com/ffi/ffi
[Fiddle]: https://ruby-doc.org/stdlib-2.5.0/libdoc/fiddle/rdoc/Fiddle.html
[fiddle-statfs]: https://users.aalto.fi/~tontti/ruby.html#fiddle-statfs
[containers-from-scratch project]: https://github.com/floehopper/containers-from-scratch

:name: week-470-links
:updated_at: 2018-01-15 15:50:48.126536000 +00:00
:created_at: 2018-01-15 15:50:48.126529000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 470 - Interesting links
:extension: markdown
:erb: true
