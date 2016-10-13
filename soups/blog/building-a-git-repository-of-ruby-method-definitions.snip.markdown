Building a Git repository of Ruby method definitions
====

As [Chris][] mentioned in the [notes from last week][week-269-method-log], I've come up with an idea for a useful way to represent the history of Ruby method definitions.

I've [hacked together a script][hacky-script] to walk through *all* the commits in a repository extracting *all* the method definitions using the Ruby parser code I already had. The script builds a new "shadow" repository with a commit for each commit in the original repository, but constructing a "file" for each method definition.

Thus the script turns the method definition for `Foo::Bar#baz` into the "file" `Foo/Bar/#baz.rb` and the one for `Foo.bar` into `Foo/.bar.rb`. I know this sounds crazy, but by doing this it means that a number of Git tools just work and give interesting results.

I've run the script against the [Mocha repository][] so you can see what I mean. If you click the "Show Diff Stats" button on [this commit page][commit-with-renamed-methods] then you can see which methods have been added, modified & changed. You can even see methods that have been moved and/or renamed!

<img src="/images/blog/github-commit-diff-stat-renamed-methods.png"/>

You can also see the [history of an individual method on GitHub][github-method-history] or the patch version using `git log --patch` on your local machine. This is actually the same functionality as `method_log` itself already provides, but it solves the speed problem that I mentioned in my [earlier article][further-work].

<img src="/images/blog/method-signature-git-log-patch.png"/>

I think it would be trivial to run the script against a repository and then add an after-commit hook to update the "shadow" repository after each commit to keep it up-to-date. It would also be possible to link the commits in the "shadow" repository to those in the original repository.

Anyway, hopefully that's some food for thought. I'd love to hear what you think.


[Chris]: /chris-roos
[week-269-method-log]: /week-269#method-log
[hacky-script]: https://github.com/freerange/method_log/commit/c204b231da164b4068d9bb0d9c56ac04a2d95146
[Mocha repository]: https://github.com/freerange/mocha
[commit-with-renamed-methods]: https://github.com/freerange/mocha.methods/commit/142ad22dfaabf4947cf4ad4f3f4d47c8725fb190
[github-method-history]: https://github.com/freerange/mocha.methods/commits/master/Mocha/Expectation/%23method_signature.rb
[further-work]: /tracing-the-git-history-of-a-ruby-method#further-work

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-03-16 00:45:00 +00:00
:updated_at: 2014-03-16 00:45:00 +00:00
:page_title: Building a Git repository of Ruby method definitions
