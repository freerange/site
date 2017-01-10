Show and Tell 14
================

This meeting was postponed at the last minute from Wednesday, 8th July, to Tuesday, 15th July, partly because we didn't quite get our act together in time and partly because we thought that the [Tube strike][] might upset people's travel plans.

Possibly as a result of the last minute change in plan, the meeting was quieter than usual with only five of us in attendance.

## Method Log

I kicked off proceedings by demonstrating a recent bit of work I've done with [method_log][]. This built on the work I did last year to [build a Git repository of Ruby method definitions][building-a-git-repository-of-ruby-method-definitions] in which Ruby source files are statically parsed and each individual method definition is written into a file based on its namespace and method name e.g. the definition for `Foo::Bar#baz` is saved to `Foo/Bar/#baz.rb`.

This produces a Git repository with a rich semantic structure which can be interrogated using standard Git tools. e.g. it's possible to use the `--follow` option on `git-log` to track the history of a method implementation as it moves around the codebase.

In my recent bit of work, I wrote a script designed to be run as a [Git post-commit hook][git-post-commit-hook] which [incrementally builds a semantically structured commit][method-log-post-commit] for every commit to the `master` branch. Rather than create a separate Git repository for these semantic commits, I added them to an orphan `method-log` branch in the same repository [as suggested by James A][orphan-branch-suggestion].

I got some useful feedback from people, particularly regarding how best to have the semantic commits reference their corresponding commits in `master`, but it does feel as if the project might be more of academic, rather than practical, interest.


## Smalltalk Method Finder

All this talk about method definitions reminded [Ben G][] of the [Smalltalk Method Finder][]. He demonstrated how you can use a particular syntax to ask what method should be called on a given object to get a given result e.g. entering `'eureka' . 'EUREKA'` suggests that you should call the `*String asUpperCase` method on `'eureka'` to get `'EUREKA'`.

While this seems really clever, Ben showed us that the implementation takes a rather brute-force approach.

After the meeting I was interested to discover that someone has built a similar [Method Finder for Ruby][].

Anyway, the whole thing reminded me a bit of Tom's [Hello, Declarative World][] demo from the last meeting.


## Receipt Printer

Ben has recently wired up a receipt printer to a [Raspberry Pi][] at home. The Pi polls a [Slack][] channel and, when a new message appears in the channel, a light flashes on the printer and then, when you push a button, the message is printed.

Ben's inventive eldest son came up with the idea of enclosing the printer and Pi in a Lego frame with Lego figures strategically positioned to make it look like a [giant printing press][].

The Slack channel acts as a nice aggregating API for the printer. My favourite application of this API is a "Dad's coming home" button on Ben's smartphone, implemented using [IFTTT's Do Button][]. When Ben pushes the button, a message is sent to the Slack channel to tell Ben's kids that he's on his way home.

Another application is to receive messages left by visitors to a [Geocache][Geocaching] which Ben has positioned on a street near his house. The cache is registered on the [geocaching.com][] website and visitors can post messages there.

Unfortunately the site doesn't have anything as simple as an RSS feed, so in an effort to avoid writing or hosting any code, Ben has wired up a complicated pipeline of services to turn the receipt of a notification email into the posting of a message into the Slack channel.

I may've got the sequence wrong, but I think it went something like this:

* Gmail filter to add a label to notification emails from geocaching.com
* [IFTTT][] recipe to forward emails with the label to an email address for an instance of [Zapier's email parser][]
* An IFTTT or [Zapier][] recipe to send parsed data to the Slack channel

Just to round this off, here are a couple more tweets containing photos of the printer:

* [Lego printing press possibly overmanned - by a mermaid, two cyborgs and a punk wearing a knight's helmet](https://twitter.com/beng/status/605850876100476928)
* [Ariel's in charge of the messaging machine. Nova's useless at security. Here comes a shifty-looking armed Manta Ray](https://twitter.com/beng/status/618196821823881216)

## Composing Functions

[Tom S][] showed us a [Ruby feature request for composition of Procs][ruby-issue-6284]. The original request was made over 3 years ago, but despite [early positive feedback from Matz][ruby-issue-6284#note-11], the discussion seems to have descended into the [bike shed][bike-shedding] and then petered out.

Tom pointed out that about a month ago, [London Computation Club] attendee, [Paul Mucur], came up with what looks like a sensible implementation of the feature. Paul has submitted patches and opened a [pull request][ruby-pull-request-935], but there doesn't seem to have been much of a response from the Ruby maintainers.

I was quite surprised to learn that although there's been a [Ruby repository on GitHub][ruby-on-github] for some time, it's still only a mirror of a [Subversion][] repository. This makes pull requests a bit meaningless.

Thanks to Tom for giving us this interesting glimpse into how one might go about getting a new feature into the Ruby language.

Until next time.

-- James


[Tube strike]: http://www.theguardian.com/uk-news/2015/jun/18/london-biggest-tube-strike-10-years-night-shift-pay
[method_log]: https://github.com/freerange/method_log
[building-a-git-repository-of-ruby-method-definitions]: /building-a-git-repository-of-ruby-method-definitions
[git-post-commit-hook]: https://www.kernel.org/pub/software/scm/git/docs/githooks.html#_post_commit
[orphan-branch-suggestion]: http://gofreerange.com/building-a-git-repository-of-ruby-method-definitions#comment-1288565310
[method-log-post-commit]: https://github.com/freerange/method_log/commit/937ccc2cce93c62ccd195c8f98a05c73dd951ab2
[Tom S]: http://codon.com/
[ruby-issue-6284]: https://bugs.ruby-lang.org/issues/6284
[ruby-issue-6284#note-11]: https://bugs.ruby-lang.org/issues/6284#note-11
[bike-shedding]: https://en.wikipedia.org/wiki/Parkinson%27s_law_of_triviality
[London Computation Club]: http://london.computation.club
[Paul Mucur]: http://mudge.name/
[ruby-pull-request-935]: https://github.com/ruby/ruby/pull/935
[ruby-on-github]: https://github.com/ruby/ruby
[Smalltalk Method Finder]: http://pharo.gforge.inria.fr/PBE1/PBE1ch2.html#x8-190009
[Hello, Declarative World]: /show-and-tell-13#hello-declarative-world
[Method Finder for Ruby]: http://citizen428.github.io/methodfinder/
[Ben G]: https://twitter.com/beng
[giant printing press]: https://twitter.com/beng/status/601890039681982465
[IFTTT's Do Button]: https://ifttt.com/products/do/button
[Geocaching]: https://en.wikipedia.org/wiki/Geocaching
[geocaching.com]: https://www.geocaching.com/
[IFTTT]: https://ifttt.com/
[Zapier's email parser]: https://parser.zapier.com/
[Raspberry Pi]: https://www.raspberrypi.org/
[Zapier]: https://zapier.com/
[Slack]: https://slack.com/
[Subversion]: https://subversion.apache.org/

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-07-20 15:44:00 +01:00
:updated_at: 2015-07-20 17:59:00 +01:00
:page_title: Show and Tell 14
:layout: show-and-tell-layout
