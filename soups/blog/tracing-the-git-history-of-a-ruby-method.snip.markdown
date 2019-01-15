Tracing the Git history of a Ruby method
====

*TL;DR* I've built an [experimental tool][method_log] to display the git history of a single Ruby method definition.

Here's a demo of it in action against the [Mocha][] codebase [^1] showing the history of the `Mocha::Expectation#with` method. Note that you should be able to scroll down through the history.

<iframe style="overflow: hidden" src="/assets/blog/2015-04-12-method-log-showterm-replacement.html" width="650" height="480"></iframe>

## Introduction

Many years ago I remember using [VisualAge for Java][] which had a built-in version control system called [ENVY/Developer][] which considered each *method definition* as a [versioned component][Mastering ENVY/Developer - Software Components]. I've often wondered how feasible it would be to generate a more [semantic diff][] from the commits in a file-based version control system.

Anyway, a couple of the talks and the ensuing discussions at a [conference on Software Archeology][] earlier this year gave me the impetus to explore some possibilities in this area. In particular I was keen to develop something that I thought I would find useful in my day-to-day work on large long-lived Ruby code bases.

I decided to focus on the idea of displaying the history of a single Ruby method definition. It's possible to achieve something akin to this using the [git pickaxe][] or even a sequence of calls to `git blame`, but I was curious to see whether I could make something a little more sophisticated.

In his Software Archeology talk, "Process Echoes in Code", [Michael Feathers][] demonstrated his [Delta Flora][] library. This uses the [Ripper][] standard library to parse Ruby source code and identify "method events" for each commit i.e. what methods have been added, removed or modified. A batch process runs through all the commits and saves these method events to a CSV file. This method event data is later analysed in various interesting ways.


## Parsing Ruby

I was most interested in Delta Flora's [MethodFinder][Delta Flora MethodFinder] class which does the actual parsing and it formed a useful starting point for my work. However, early on I noticed that it only handled _instance_ method definitions and not _class_ method definitions. I quickly ran into trouble when I tried to extend it to support class method definitions. Part of the problem was that the MethodFinder uses low-level parser events (i.e. `kw`, `const`) to detect the _beginning_ of various constructs, but high-level parser events (i.e. `def`, `class`, `module`) to detect the _end_ of the same constructs.

As far as I could tell this was due to limitations in Ripper. So I decided to have a bit of a look around at other Ruby parsers. In the end I found the [parser gem][] which provides callbacks _around_ various constructs (i.e. `class`, `module`, `def`) including ones relating to class method definitions (i.e. `defs`, `sclass`).

This made it a bit easier to consider extending the MethodFinder to handle class methods, but it turns out there are a lot more ways to define class methods than there are ways to define instance methods e.g.:

    # example 1
    class Foo; end

    def Foo.bar; end

    # example 2
    class Foo
      def self.bar; end
    end

    # example 3
    class Foo
      class << self
        def bar; end
      end
    end

Also the "definee" in each of these cases can be _any_ Ruby expression. Most commonly it will either be `self` or a class or module defined within the current scope.

At this point I did start to wonder whether the effort of supporting all these (somewhat edge) cases was worthwhile, but some of the work we've been doing at the [Little Schemer Book Club][] had made me curious about programming language parsers and interpreters and so I pressed on regardless. By [modelling Ruby's constant lookup mechanism][] and enhancing my [MethodFinder][MethodLog MethodFinder] class I think I've built a reasonably robust way of extracting method definitions from Ruby source code.

Initially the code raised an exception if a constant could not be found, but then I realised that this implied that I couldn't always parse a single file in isolation, so instead I had the code implicitly define missing constants.

I recognise that this MethodFinder doesn't handle all scenarios, particularly not methods defined at run-time. However, I'm not sure there are many more scenarios it would actually be _possible_ to handle using only *static* analysis. I did briefly contemplate changing tack and doing some kind of dynamic analysis based on inspecting the residual `ObjectSpace` left after running all of a project's tests, but I decided I'd reached my yak-shaving limit and sanity prevailed.

Another limitation of this MethodFinder is that, unlike Delta Flora, it doesn't consider RSpec tests as "method definitions". Delta Flora uses a [regular-expression-based parser][] to do this, but I think it ought to be possible to use the parser gem and its `send` event to detect invocations of the RSpec methods like `describe` and `it`.


## Querying Git

As I mentioned above, Delta Flora runs a batch process to build a "database" of method events which can then be queried. The batch process does this by shelling out to various `git` commands. For my use case, I'm only interested in the history of a _single_ method, so I wondered whether I could get away with querying the git repository directly rather than having to build a separate "database". I'd read some good things about the [rugged gem][] which provides Ruby bindings to [libgit2][] and I thought this would be a good opportunity to try it out.

I was quite keen to have [acceptance tests][] that commit source files to a real git repository and fortunately this turned out to be [fairly straightforward][]:

* Write the source code to the repository as a blob.
* Add that blob's SHA and the path of the source file to an instance of a `Rugged::Index`.
* Write the index to the repository as a `Rugged::Tree`.
* Create a commit in the repository using that tree.

Querying the repository is even more straightforward. The code just "walks" through the commits starting from the latest commit and "walks" through all the blobs in the commit's tree, building up the file paths and looking up the source code in the repository. Then it was a simple matter of wiring all this up in combination with a [library to obtain a diff][diffy gem] of the method body in each significant commit in order to pass some basic acceptance tests.

So far so good!


## Optimisations

When I pointed the tool at the repository for a large Rails app, I wasn't surprised to discover that it took *ages* to run. So it was time to do some optimisation.

One simple improvement was to only consider parsing source files that contained the method name. Although this also includes files where the method is invoked (not just those where it is defined), it significantly reduces the number of files we need to parse.

Once the method definition has been found, we can assume that the method definition has not changed if the file containing it has not changed i.e. if the SHA for the same path is unchanged. This means we can quickly discard commits that are of no significance.

A smaller improvement was to only lookup the source for a file in the repository at the point where it's actually needed i.e. for text searching or parsing.

Lastly, I decided that in most cases there isn't much point in going further back in time once we find the commit where a method is defined. So I changed the default behaviour to stop at this point, but provided a flag to continue if required.

Unfortunately these optimisations have made the code a bit more convoluted than I would like - I think some of my abstractions might be a bit wrong - but for the moment I've run out of energy to tidy things up any further. I thought it was better to publish what I've got so far and see whether anyone finds it useful.


## Further work

I have a bunch of ideas that could make use of the MethodFinder functionality, so I think it might be worth extracting this into its own gem, e.g. having a pre-commit hook to annotate commit messages with method events, and enhancing GitHub source file pages to have links to a "method log".

A possible optimisation would be to stop parsing a file at the point where the method definition is found - at the moment the whole file is always parsed.

Running the tool against a very large repo (e.g. Rails) is still very slow, so I suspect in the end it might be necessary to build a "database" of method metadata vs commits.

While writing this article, I came across the undocumented `Rugged::Diff` class - it might be better to use this rather than the [diffy gem][] that I'm using at the moment.

At the moment the code delves rather too deeply into the innards of the parser gem i.e. it calls `Parser::Source::Buffer#decompose_position` to determine the last line number of the method definition. It would probably be better to submit a patch to the parser gem to make the last line available directly on `Parser::Source::Buffer`.

It might be nice to convert this tool a git extension. Simply renaming the binary to `git_method_log` and ensuring it is present in the user's `PATH` would be enough to make it available as a `git method-log` command, but it might be nicer to extend the existing `git log` command itself with extra command line switches.


## Feedback

I'd love people to try out the tool and let me know what you think - you can add a comment below or add an issue to the [project on GitHub][method_log].


## Acknowledgments

Many thanks to [Chris Roos][], [Tom Stuart][], [Joel Chippindale][], [Chris Lowis][], [Murray Steele][], [Paul Battley][], and [Rob Chatley][] for various conversations about this stuff.


[^1]: We have to set the Ruby version to 1.8 so that some of the source code in older commits in the Mocha repository is parsed successfully.


[method_log]: https://github.com/freerange/method_log
[Mocha]: https://mocha.jamesmead.org
[semantic diff]: http://martinfowler.com/bliki/SemanticDiff.html
[VisualAge for Java]: http://en.wikipedia.org/wiki/IBM_VisualAge
[ENVY/Developer]: http://c2.com/cgi/wiki?EnvyDeveloper
[Mastering ENVY/Developer - Software Components]: http://books.google.co.uk/books?id=ld6E19QIMo4C&lpg=PP1&pg=PA24
[conference on Software Archeology]: http://ticosa.org/
[git pickaxe]: http://www.philandstuff.com/2014/02/09/git-pickaxe.html
[Michael Feathers]: https://twitter.com/mfeathers
[Delta Flora]: https://github.com/michaelfeathers/delta-flora
[Ripper]: http://ruby-doc.org/stdlib-2.0.0/libdoc/ripper/rdoc/Ripper.html
[Delta Flora MethodFinder]: https://github.com/michaelfeathers/delta-flora/blob/master/method_finder.rb
[parser gem]: https://github.com/whitequark/parser
[Little Schemer Book Club]: http://lanyrd.com/2014/little-schemer-book-club-march/
[modelling Ruby's constant lookup mechanism]: https://github.com/freerange/method_log/blob/master/lib/method_log/scope.rb
[MethodLog MethodFinder]: https://github.com/freerange/method_log/blob/master/lib/method_log/method_finder.rb
[regular-expression-based parser]: https://github.com/michaelfeathers/delta-flora/blob/master/spec_finder.rb
[rugged gem]: https://github.com/libgit2/rugged
[libgit2]: https://github.com/libgit2/libgit2
[acceptance tests]: https://github.com/freerange/method_log/blob/master/spec/api_spec.rb
[fairly straightforward]: https://github.com/libgit2/rugged#writing-to-a-repository
[diffy gem]: https://github.com/samg/diffy
[Chris Roos]: /chris-roos
[Tom Stuart]: https://twitter.com/tomstuart
[Joel Chippindale]: https://twitter.com/joelchippindale
[Chris Lowis]: https://twitter.com/chrislowis
[Murray Steele]: https://twitter.com/hlame
[Paul Battley]: https://twitter.com/threedaymonk
[Rob Chatley]: https://twitter.com/rchatley


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-03-11 11:24:00 +00:00
:updated_at: 2014-03-11 11:24:00 +00:00
:page_title: Tracing the Git history of a Ruby method
