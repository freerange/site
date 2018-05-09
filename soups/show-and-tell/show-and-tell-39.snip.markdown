Show and Tell 39
================

[Tom S][tom-stuart] and [Ben G][ben-griffiths] joined [James][james-mead] and I for our 39th Show & Tell in Dec 2017.

[ben-griffiths]: https://twitter.com/beng
[james-mead]: /james-mead
[tom-stuart]: http://codon.com/

---

## RSpec's Verifying Doubles

![Tom talking about Verifying Doubles](/images/blog/2017-12-13-show-and-tell-39-tom-s.jpg)

Tom explained how he updated the [FutureLearn][futurelearn] tests to use [RSpec's Verifying Doubles][rspec-verifying-doubles] after a recent upgrade to RSpec 3. Verifying Doubles are similar to standard doubles but with the added benefit of verifying that the stubbed methods exist on the object they're being stubbed on.

Tom's using the `instance_double('Foo')` syntax (as opposed to `instance_double(Foo)`) which toggles verification based on whether the `Foo` constant is defined. This allows the tests to run quickly in isolation but with the added benefit of verification when run in the context of the application (i.e. when all the dependencies are loaded).

Tom's ended up disabling verification in their Rails view specs. There were a number of tests that he couldn't get to work with double verification. He initially disabled verification for those tests (using [`without_partial_double_verification`][rspec-without-partial-verification]) but decided that the cost of having to think about when to disable it didn't justify the benefit of having it enabled.

Shortly after merging the changes to master they caught a problem that would've otherwise probably made it to production. A column was renamed in a migration which broke some code making use of `find_by_<old_column_name>`. This `find_by` method was being stubbed in a test which would've continued to pass had the double verification not complained about the unknown method.

The discussion reminded James M of [OO-Matron][oo-matron] by Nat Pryce, although I'm afraid I no longer recall what the similarities were.

[futurelearn]: https://www.futurelearn.com/
[oo-matron]: https://blog.magpiebrain.com/2004/07/27/oo-matron/
[rspec-verifying-doubles]: http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#verifying-doubles
[rspec-without-partial-verification]: http://rspec.info/blog/2017/05/rspec-3-6-has-been-released/#mocks-withoutpartialdoubleverification

---

## Teaching 3D

![Ben talking about 3D rendering](/images/blog/2017-12-13-show-and-tell-39-ben-g.jpg)

Ben spoke about an alternative way of teaching people about 3D modelling. Unfortunately, because the event was 6 months ago and because of my lack of subject knowledge, my notes no longer make any sense to me and so I'm not going to be able to do this any justice. Sorry, Ben!

:name: show-and-tell-39
:updated_at: 2018-01-05 16:53:45.970409000 +00:00
:created_at: 2018-01-05 16:53:45.970408000 +00:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 39
:layout: show-and-tell-layout
:extension: markdown
