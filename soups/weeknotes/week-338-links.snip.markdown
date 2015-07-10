Week 338 - Interesting links
============================

### [Bundler: Inline Gemfiles](http://bundler.io/whats_new.html#inline)

I can see this new Bundler feature being useful when wanting to share simple self-contained code snippets.

Rather than create a Gemfile alongside your Ruby script, you can combine them into a single file with something like:

    require 'bundler/inline'

    gemfile do
      source 'https://rubygems.org'
      gem 'minitest', require: false
    end

    require 'minitest/autorun'

    class MyTest < Minitest::Test
      def test_should_be_true
        assert_equal true, true
      end
    end

{by chris-roos}


### [Feature-based Benefits](http://www.unboxedconsulting.com/blog/feature-based-benefits)

> If you take a feature-based approach to define what the project chunks are then you will be in a stronger position to deliver the most valuable features first, irrespective of which project they’ve been categorised into.

Richard Stobart describes the benefits of delivering software based on the value of features, rather than which project they fall into. This is something we agree with but don't really see very often in practice. I suspect there's something about being able to say a project is completely finished, irrespective of how comparitively valuable its components are, that people are attracted to. {by chris-roos}


### [Thoughtbot's Git Guide](https://github.com/thoughtbot/guides/blob/master/protocol/git/README.md#merge)

We've been talking about the pros and cons of GitHub's "Merge pull request" button recently. James and I are pretty much against it but are seeing it widely used within GDS. We want to try to document our reasons against using it to see if A) they stand up to any kind of scrutiny, and B) (assuming they do stand up) so that we can point at the document when we're talking about it.

Historically we've been fans of the single history master branch, but have recently converted to using feature branches that are rebased and merged to master. Given our conversion, I was interested to read Thoughtbot's approach, which I believe results in them having a single line history in master with no merge commits. {by chris-roos}


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-07-10 11:45:00 +00:00
:updated_at: 2015-07-10 11:45:00 +00:00
:page_title: Week 338 - Interesting links
