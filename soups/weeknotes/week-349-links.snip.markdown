Week 349 - Interesting links
============================

### [Utter Disregard for Git Commit History](http://zachholman.com/posts/git-commit-history/)

I found this interesting as I think it gives some insight into GitHub's preferred workflow which focuses much more on the pull request and much less on individual commits. {by chris-roos}


### [“Merge pull request” Considered Harmful](http://blog.spreedly.com/2014/06/24/merge-pull-request-considered-harmful/)

In contrast to the link above, one of the ActiveMerchant maintainers explains how he's moved away from using GitHub's "Merge pull request" button and toward using `git am` to apply the commits from a pull request. I find it interesting that he puts the commits straight into master rather than modifying them in a local branch and then merging that. {by chris-roos}


### [The git pickaxe](http://www.philandstuff.com/2014/02/09/git-pickaxe.html)

Phil explains how good commit messages make it possible to use the [git pickaxe][git-pickaxe] to efficiently find information about a line of code. I think this is really useful but it's something you can easily lose if you prioritise the pull request over individual commits (as suggested in Zach's post). {by chris-roos}


### [Otto](https://ottoproject.io/)

This is the latest open-source product from HashiCorp and claims to be the "successor to [Vagrant][]". I like the sound of having all the applications on my development machine in their own local virtualized development environments, although I do wonder whether there's a noticeable performance penalty.

Using the same toolchain to manage deployments also sounds appealing - apparently it uses [Terraform][] under the hood, which was something [Tom H][] mentioned at the [last Show & Tell][]. {by james-mead}


### [Tom Taylor: Interviewed about his CityCyclist app](http://pages.rapha.cc/survey/tom-taylor)

I enjoyed reading about how [CityCyclist][] works and how Tom built it. {by james-mead}


### [Ruby Virtual Machine Internals and Investigating Variable Scope](http://techblog.shutl.com/2015/09/ruby-virtual-machine-internals-and-investigating-variable-scope/)

I wasn't very interested in the actual example in this article, but I was interested to see how easy it is to obtain the YARV VM bytecode instructions for a bit of Ruby source code using RubyVM::InstructionSequence's [.compile](http://ruby-doc.org/core-2.2.3/RubyVM/InstructionSequence.html#method-c-compile) and [#disassemble](http://ruby-doc.org/core-2.2.3/RubyVM/InstructionSequence.html#method-i-disassemble) methods. {by james-mead}


### [Apache nifi](https://nifi.apache.org/)

Looks like it might offer an open-source alternative to the now dead [Yahoo! Pipes][], although I'm not sure anyone is offering a hosted version as yet. {by james-mead}


### [Adapt](http://timharford.com/books/adapt/)

I'm a big fan of Tim Harford's [More or Less][] and I like the sound of this book of his which argues that the world has become far too unpredictable and profoundly complex for ready-made solutions and expert opinions:

> Instead, we must adapt -- improvise rather than plan, work from the bottom up rather than the top down, and take baby steps rather than great leaps forward.

Sounds like a book politicians should be reading. {by james-mead}


### [Lakeland 50 legend: Harry Johnson](http://www.montane.co.uk/news/montane-lakeland-100-50-lakelandlegend-harry-johnson)

A little inspirational link to finish with: Read an interview with 80 year old Harry who finished the [Lakeland 50][lakeland-50] race this year (50 miles of the Lake District taking in around 3000m of ascent). I love the support he receives as he comes over the finish line. {by chris-roos}


[git-pickaxe]: https://www.kernel.org/pub/software/scm/git/docs/gitdiffcore.html#_diffcore_pickaxe_for_detecting_addition_deletion_of_specified_string
[lakeland-50]: http://www.lakeland100.com/the-lakeland-50
[Pragmatic Bookshelf]: https://pragprog.com/
[Vagrant]: https://www.vagrantup.com/
[Terraform]: https://terraform.io/
[CityCyclist]: http://www.citycyclistapp.com/
[Yahoo! Pipes]: https://nifi.apache.org/
[More or Less]: http://www.bbc.co.uk/programmes/b006qshd
[Tom H]: http://www.thattommyhall.com/
[last Show & Tell]: /show-and-tell-16


:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-09-25 14:45:00 +01:00
:updated_at: 2015-09-25 14:45:00 +01:00
:page_title: Week 349 - Interesting links
