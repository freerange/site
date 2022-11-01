Mocha v2 release
=======

This major version bump of the Ruby mock object library, [Mocha](https://mocha.jamesmead.org/), includes some fairly significant changes. So I wanted to expand a bit on the [release notes](https://github.com/freerange/mocha/blob/c5cf3249d9706f3470cbfcfd76e97b4bae87a3d0/RELEASE.md#200) and give some more detailed guidance on factors to consider when upgrading.

{::options toc_levels="2" /}

* Table of Content
{:toc}

*TL;DR: If you're using a non-ancient version of Ruby, you're using a non-ancient test library version, you've already upgraded to Mocha v1.16.0, and you've fixed all the Mocha deprecation warnings, then the worst that should happen when you upgrade is that you'll see some new deprecation warnings!*

## Strict keyword argument matching

Previously Mocha parameter matching always considered a positional `Hash` as exactly equivalent to a set of keyword arguments. However, in Ruby v3, positional arguments and keyword arguments have been separated and, in Ruby v2.7, behaviour that would be different in Ruby v3 is flagged by deprecation warnings. See [this article](https://www.ruby-lang.org/en/news/2019/12/12/separation-of-positional-and-keyword-arguments-in-ruby-3-0) for more details on the separation of positional and keyword arguments in Ruby v3.

To address this a new configuration option ([Configuration#strict_keyword_argument_matching=](https://mocha.jamesmead.org/Mocha/Configuration.html#strict_keyword_argument_matching=-instance_method)) has been introduced in Mocha v2. This option is available in Ruby v2.7 upwards.

In Mocha v2 the configuration option defaults to `false`, but in a future version of Mocha it will default to `true`. When the option is set to `true`, Mocha parameter matching considers a positional `Hash` and a set of keyword arguments as *different* even if their "keys" and "values" are exactly the same, i.e. the parameter matching is stricter and some invocations which previously matched may no longer match.

When the configuration option is set to `false`, parameter matching that would behave differently if the option were set to `true` is flagged by Mocha deprecation warnings. Once all these deprecation warnings are addressed, the configuration option can safely be set to `true`.

It's important to address this issue, because otherwise you may end up with passing tests that give you a false sense of security. See the examples below.

### Keyword argument syntax

An area of possible confusion is the Ruby syntax that distinguishes between a positional `Hash` and a set of keyword arguments. In particular the use of [hash rockets](https://en.wikipedia.org/wiki/Fat_comma) ("=>") does **NOT** imply a positional `Hash`. Instead what matters is whether the "keys" and "values" are surrounded by braces ("{ ... }").

The following code defines a method that in Ruby v3 expects to be called with a single keyword argument. That method is then called four times, twice with the correct keyword argument and twice with a positional `Hash` including a key with the correct name. You might be surprised that the 2nd call (i.e. `foo(:bar => 1)`) is passing a keyword argument.

    def foo(bar:); p bar; end

    # Method called with correct keyword argument
    foo(bar: 1) # => 1
    foo(:bar => 1) # => 1

    # Method called with positional Hash
    foo({ bar: 1 }) # => ArgumentError: wrong number of arguments (given 1, expected 0; required keyword: bar)
    foo({ :bar => 1 }) # => ArgumentError: wrong number of arguments (given 1, expected 0; required keyword: bar)

### Example with relaxed matching

The parameters in the expectation include a set of keyword arguments, but the parameters in the invocation include a positional `Hash`. With strict matching disabled, these parameters match the expectation and the test passes. However, when `Example#foo` is invoked in production code in Ruby v3 an `ArgumentError` is raised, i.e. the passing test does not highlight that `Example#foo` must be called with a set of keyword arguments.

    class Example
      def foo(a, bar:); end
    end

    class ExampleTest < MiniTest::Test
      def test_foo
        example = Example.new

        # The parameters in the expectation include a set of keyword arguments
        example.expects(:foo).with('a', bar: 'b')

        # The parameters in the invocation include a positional Hash
        # These parameters match the expectation and the test passes
        example.foo('a', { bar: 'b' })
      end
    end

    example = Example.new
    example.foo('a', { bar: 'b' }) # => ArgumentError in Ruby v3

 Note, however, that a deprecation warning is displayed:

> Mocha deprecation warning at example_test.rb:NN:in \`test_foo': Expectation defined at example_test.rb:MM:in \`test_foo' expected keyword arguments (:bar => "b"), but received positional hash ({:bar => "b"}). These will stop matching when strict keyword argument matching is enabled. See the documentation for Mocha::Configuration#strict_keyword_argument_matching=.

### Example with strict matching

With strict matching enabled, the parameters no longer match the expectation and the test fails. This test failure highlights that `Example#foo` must be called with a set of keyword arguments.

    Mocha.configure do |c|
      c.strict_keyword_argument_matching = true
    end

    class Example
      def foo(a, bar:); end
    end

    class ExampleTest < MiniTest::Test
      def test_foo
        example = Example.new

        # The parameters in the expectation include a set of keyword arguments
        example.expects(:foo).with('a', bar: 'b')

        # The parameters in the invocation include a positional Hash
        # These parameters no longer match the expectation and the test fails
        example.foo('a', { bar: 'b' })
      end
    end

    # When Example#foo is invoked in production code:
    example = Example.new
    example.foo('a', { bar: 'b' }) # => ArgumentError in Ruby v3


## Removal of deprecated functionality

A bunch of deprecated functionality has been removed in Mocha v2. As long as you've previously upgraded to Mocha v1.16.0 and fixed all the deprecation warnings you shouldn't have any trouble.🤞

* It's no longer possible to pass [`API#mock`](https://mocha.jamesmead.org/Mocha/API.html#mock-instance_method), [`API#stub`](https://mocha.jamesmead.org/Mocha/API.html#stub-instance_method) or [`API#stub_everything`](https://mocha.jamesmead.org/Mocha/API.html#stub_everything-instance_method) a single symbol argument to create a mock object responding to a method named according to that symbol argument. Such an argument is used to name the mock object itself; any stubbed methods and return values should be setup by passing a `Hash` into these methods or by calling [`Mock#expects`](https://mocha.jamesmead.org/Mocha/Mock.html#expects-instance_method) or [`Mock#stubs`](https://mocha.jamesmead.org/Mocha/Mock.html#stubs-instance_method).
* If [`Expectation#yields`](https://mocha.jamesmead.org/Mocha/Expectation.html#yields-instance_method) or [`Expectation#multiple_yields`](https://mocha.jamesmead.org/Mocha/Expectation.html#multiple_yields-instance_method) have been used to specify that a stubbed method should yield then the stubbed method must be invoked with a block otherwise a `LocalJumpError` will be raised.
* The `Configuration#reinstate_undocumented_behaviour_from_v1_9=` method has been removed. If you have addressed the deprecation warnings for `API#mock`, `API#stub`, `API#stub_everything`, `Expectation#yields` and `Expectation#multiple_yields` as explained above then this configuration option is redundant.
* The `Configuration.allow`, `Configuration.warn` and `Configuration.prevent` methods have been removed. Use [`Mocha.configure`](https://mocha.jamesmead.org/Mocha.html#configure-class_method) and/or [`Mocha::Configuration.override`](https://mocha.jamesmead.org/Mocha/Configuration.html#override-class_method) instead.
* The `mocha/setup.rb` mechanism has been removed. Use one of the [supported installation mechanisms](https://mocha.jamesmead.org/index.html#installation) instead.
* The [Ruby on Rails](https://rubyonrails.org/) plugin mechanism has been removed. Use one of the [supported installation mechanisms](https://mocha.jamesmead.org/index.html#installation) instead.
* A [`StubbingError`](https://mocha.jamesmead.org/Mocha/StubbingError.html) is now raised when stubbed methods are invoked in a test other than the one in which they were defined. This is to avoid unintended interactions between tests and hence unexpected test failures. A test should clean up any state that it introduces.

## Dropping of support for older versions of Ruby, minitest & test-unit

Mocha v2 drops support for older versions of [Ruby](https://www.ruby-lang.org/), [test-unit](https://rubygems.org/gems/test-unit/) and [minitest](https://rubygems.org/gems/minitest/).

More specifically Mocha v2 only supports:

* Ruby v2.0 and upwards. In particular Ruby v1.9 is no longer supported. Note that support for Ruby v1.9.3 ended on [23 Feb 2015](https://www.ruby-lang.org/en/news/2014/01/10/ruby-1-9-3-will-end-on-2015/).
* Gem versions of test-unit from v2.5.1 (released on 05 Jul 2012) upwards. Versions of test-unit from the Ruby v1.8 standard library are no longer supported.
* Versions of minitest from v3.3.0 (released on 27 Jul 2012) upwards.

## Acknowledgements

Many thanks to the following:

* [Nick Koh](https://wasabigeek.com/) for all his hard work on the strict keyword argument matching functionality.
* [Paul Battley](https://po-ru.com/) and [Murray Steele](http://hlame.com/) for testing preview releases of Mocha v2 on sizeable codebases.
* [Kelvin Gan](https://www.chao-xian.co.uk/), [Ollie Treend](https://ollie.treend.uk/), [Dilwoar Hussain](https://dilwoarhussain.com/), and the rest of the [GDS](https://gds.blog.gov.uk/) developer team for helping me test preview releases of Mocha v2 on the sizeable [alphagov/whitehall](https://github.com/alphagov/whitehall) codebase.
* My [Go Free Range](https://gofreerange.com/) colleagues, [Chris Lowis](https://blog.chrislowis.co.uk/) and [Chris Roos](https://gofreerange.com/people#chris-roos), for funding a lot of my time working on Mocha, for reviewing code & documentation and for just generally being very supportive.

_This article was <a rel="canonical" href="https://jamesmead.org/blog/2022-11-01-mocha-v2-release">originally published</a> on James' blog._

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2022-11-01 14:10:00 +00:00
:updated_at: 2022-11-01 14:10:00 +00:00
:page_title: Mocha v2 release
:canonical_url: https://jamesmead.org/blog/2022-11-01-mocha-v2-release
