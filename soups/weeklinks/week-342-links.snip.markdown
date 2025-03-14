Week 342 - Interesting links
============================

###[Government Service Design Manual - Design Patterns](https://www.gov.uk/service-manual/user-centred-design/resources/patterns/index.html)

This section of the manual and its associated [Hackpad wiki][] looks as if it contains a wealth of useful material about user interface design, much of which is probably relevant to our work on [Smart Answers][]. <%= by('james-mead') %>

[Hackpad wiki]: https://designpatterns.hackpad.com/List-of-design-patterns-0eUk1OdHvql
[Smart Answers]: https://github.com/alphagov/smart-answers


### [Spreadsheets are code: EuSpRIG conference](https://blog.scraperwiki.com/2015/07/eusprig/)

I found David McKee's write-up of a spreadsheet conference (!) really interesting:

> The conference reminded me particularly of one simple fact about spreadsheets that often gets ignored: [Spreadsheets are code](http://www.slideshare.net/Felienne/spreadsheets-are-code-online)

I was particularly interested to learn about [Array Formulae](https://support.google.com/docs/answer/3093275?hl=en) which was a new one on me. <%= by('james-mead') %>


###[Copy-Paste Tracking: Fixing Spreadsheets Without Breaking Them](http://homepages.cwi.nl/~storm/publications/iclc2015.pdf)

On a related note, this paper suggests that if you track the copying & pasting of formulae in a spreadsheet and then propogate edits to any of the copies to all the other copies, you can introduce better abstraction into a spreadsheet without complicating the user experience. <%= by('james-mead') %>


### [The Next Big Thing?](http://www.davefarley.net/?p=254)

Apparently fast, non-volatile memory is likely to be available in the not too distant future. This article talks about what implications that might have on how we design software applications. <%= by('james-mead') %>


### [Circuit Simulator](http://lushprojects.com/circuitjs/)

Having worked through the early chapters of the [NAND to Tetris][] book with the [London Computation Club][], I was interested to see this open-source HTML5/JS electronic circuit simulator. <%= by('james-mead') %>

[NAND to Tetris]: http://www.nand2tetris.org/
[London Computation Club]: http://london.computation.club


### [Git 2.5, including multiple worktrees and triangular workflows](https://github.com/blog/2042-git-2-5-including-multiple-worktrees-and-triangular-workflows)

The `git worktree` command looks interesting. In our work with Smart Answers, I've occassionally found myself creating a second working copy of the repository in order to run some tests while continuing to work in the original copy. It sounds like the `git worktree` command would simplify this process slightly. <%= by('chris-roos') %>


### [Self-Destructing Email](http://mail.delicious.com/)

This looks kinda interesting, from the folks at [Delicious][].

From the FAQ:

> The Dmail chrome extension encrypts your message locally on your computer. The encrypted body of the message is sent to Dmail's servers, while the decryption key and a link are sent to the intended recipients through Gmail. Neither Dmail nor Gmail gets both the encrypted message and the decryption key, so only the sender and intended recipients can read the message legibly.

The [Delicious blog post][dmail-blog-post] explains that the product was born out of their "own personal experience sending and trying to protect sensitive information via email". I think it's great when things are born out of frustration/necessity and am interested in seeing whether this takes off.

<%= by('chris-roos') %>

[Delicious]: https://delicious.com/
[dmail-blog-post]: http://blog.delicious.com/2015/07/whats-new-with-delicious/


### [Popular Times Added to Google's Local Search Cards](http://googlesystem.blogspot.co.uk/2015/07/popular-times-added-to-googles-local.html)

I can imagine this coming in handy if you're trying to find a slightly quieter time to visit a popular attraction.

The blog post suggests that the data comes from people that have activated Location History on their mobile device. While the data is being used here to provide a useful service, I can also imagine certain groups being interested in using the data to spot suspicious patterns of activity in non-touristy places. <%= by('chris-roos') %>


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-08-07 13:12:00 +01:00
:updated_at: 2015-08-07 13:12:00 +01:00
:page_title: Week 342 - Interesting links
:erb: true
