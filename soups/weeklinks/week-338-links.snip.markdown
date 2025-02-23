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

<%= by('chris-roos') %>


### [Feature-based Benefits](http://www.unboxedconsulting.com/blog/feature-based-benefits)

> If you take a feature-based approach to define what the project chunks are then you will be in a stronger position to deliver the most valuable features first, irrespective of which project they've been categorised into.

Richard Stobart describes the benefits of delivering software based on the value of features, rather than which project they fall into. This is something we agree with but don't really see very often in practice. I suspect there's something about being able to say a project is completely finished, irrespective of how comparatively valuable its components are, that people are attracted to. <%= by('chris-roos') %>


### [Thoughtbot's Git Guide](https://github.com/thoughtbot/guides/blob/master/protocol/git/README.md#merge)

We've been talking about the pros and cons of GitHub's "Merge pull request" button recently. James and I are pretty much against it but are seeing it widely used within GDS. We want to try to document our reasons against using it to see if A) they stand up to any kind of scrutiny, and B) (assuming they do stand up) so that we can point at the document when we're talking about it.

Historically we've been fans of the single history master branch, but have recently converted to using feature branches that are rebased and merged to master. Given our conversion, I was interested to read Thoughtbot's approach, which I believe results in them having a single line history in master with no merge commits. <%= by('chris-roos') %>


### [Streamio FFMPEG](https://github.com/streamio/streamio-ffmpeg)

This claims to be a "simple yet powerful Ruby ffmpeg wrapper for reading metadata and transcoding movies". I thought it might be a useful alternative to [Amazon Elastic Transcoder](http://aws.amazon.com/elastictranscoder/) for our [GFR Video](https://video.gofreerange.com) service. Also it looks as if [StreamIO](https://streamio.com/) might be offering something similar to GFR Video, although I struggled to find much detail about their service on their website. <%= by('james-mead') %>


### [Moving Past the Scaling Myth](https://michaelfeathers.silvrback.com/the-myth-of-scaling)

This article by Michael Feathers calls out the ridiculousness of the "Does agile scale?" question. It also referenced a book about self-managing organizations, [Reinventing Organisations](http://jarche.com/2014/05/reinventing-organizations-review/), which caught my eye. <%= by('james-mead') %>


### [Postpositive Particles](http://tutor.bestlatin.net/grammar/postpositives.htm)

I was talking to someone the other day about certain special words, like "enim" that have to be the second word in a Latin sentence. I was ridiculously smug to discover this article, because it meant that I had remembered correctly! <%= by('james-mead') %>


### [VLF](https://en.wikipedia.org/wiki/Very_low_frequency)

Watching one of the recent lightning storms in London recently led me to read more about the science behind the VLF experiments that I ran on an [Antarctic research station](http://antarctica.ac.uk/about_bas/our_history/stations_and_refuges/faraday.php) in the 90s.

VLF [whistlers](https://en.wikipedia.org/wiki/Whistler_(radio)) are caused by some of the radio frequencies emitted by a lightning strike escaping through the ionosphere and travelling along the earth's magnetic field lines, returning through the ionosphere into the other hemisphere. During "flight" lower frequencies travel slower than higher ones and when translated into audio frequencies by a VLF receiver, you hear the [characteristic descending tone of a whistler](https://www.youtube.com/watch?v=FeuI8AJMIxU).


### [Announcing Lotus v0.4.0](http://lotusrb.org/blog/2015/06/23/announcing-lotus-040.html)

I have high hopes for [Lotus](http://lotusrb.org/) and it's good to see that development is still active. I'm looking forward to hearing more about it from the author, [Luca Guidi](http://lucaguidi.com/) at [Brighton Ruby Conf](http://brightonruby.com/) a week on Monday. <%= by('james-mead') %>


### [Flip Flop Operator in Ruby](http://nithinbekal.com/posts/ruby-flip-flop/)

I was very surprised to come across this feature of Ruby the other day and I enjoyed [showing it to the London Computation Club](https://github.com/computationclub/computationclub.github.io/wiki/Elements-of-Computing-Systems-Chapter-11c#asides) earlier this week. <%= by('james-mead') %>


### [Git Interactive Rebase - Exec](http://git-scm.com/docs/git-rebase#_interactive_mode)

The other day, [Tom S](http://codon.com/) mentioned the `exec` "command" in the todo list for `git rebase --interactive`. Recently [Chris](/chris-roos) showed me how he was using it to ensure the tests passed after every commit in a feature branch. Since then I've discovered the `--exec` command line option which makes it even easier to do the same thing. <%= by('james-mead') %>


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-07-10 11:45:00 +00:00
:updated_at: 2015-07-10 15:45:00 +00:00
:page_title: Week 338 - Interesting links
:erb: true
