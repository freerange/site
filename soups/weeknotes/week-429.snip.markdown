Week 429
========

We spent most of our time this week working for our client [GDS](https://gds.blog.gov.uk/) on the [Manuals Publisher](https://github.com/alphagov/manuals-publisher/) project. We opened [20 pull requests](https://github.com/alphagov/manuals-publisher/pulls?q=is%3Apr+created%3A2017-04-03..2017-04-08) during the week. Some of the more interesting ones were:

- [Reduce number of references to manual repositories outside Manual class](https://github.com/alphagov/manuals-publisher/pull/953). This sequence of pull requests significantly reduced the indirection in the code by isolating calls to the `ManualRepository` to a single class. Before we started the project the application attempted to separate the persistence of records from their representation in the code by having, for example, `Manual` and `ManualRecord` classes. In order to join the two together, and to model associations with other classes the code also uses a `ManualRepository`. This pattern is quite non-standard for Rails applications and as a result the separation of the responsibilities of these three classes is not very well respected throughout the codebase. By isolating all calls to the `ManualRepository` to a single place, we're making it easier to replace or [inline](https://refactoring.com/catalog/inlineClass.html) its functionality.

- [Use strong consistency in production Mongoid config](https://github.com/alphagov/manuals-publisher/pull/963). The Manuals Publisher application uses dependencies that are now quite out of date. When we started work on it, for example, it depended on version 2 of the [mongoid](https://github.com/mongodb/mongoid) library - a library which is now at version 6. For developers who switch between applications remembering the differences between versions of libraries is an unnecessary burden. We recently upgraded to `mongoid` version 3 and discovered a change in the default configuration had caused a performance degradation. Switching to using "strong consistency" solved the issue.

- [Update Jenkinsfile to use govuk.buildProject() function](https://github.com/alphagov/manuals-publisher/pull/959). We brought the deployment and build configuration (which runs on Jenkins) into line with the rest of the organisations projects by relying on a shared library.

On Wednesday we also visited Aviation house for a status update with [Paul Bowsher](https://twitter.com/boffbowsh) the Lead Developer responsible for our project. It was interesting to hear more about how the Manuals Publisher project fits in with the strategy for publishing applications. We also spoke to members of the "template consolidation team" who are looking at bringing the best practices they have developed for presenting complex documents to all of the different document types that are published. We wanted to see how the "manuals" the application we are working on fit into the bigger picture.

## Go Free Range ##

At GFR everyone has access to the full financial details of the company and we divide who is responsible for running payroll randomly among the three of us. This means we're all very familiar with the current state of our finances. I'd done some work before the meeting to bring our calculations up-to-date with the [changes in taxation](https://www.freeagent.com/central/whats-changing-new-tax-year/) that came into force on April 6th and prepared some straw-man proposals for how we could pay ourselves next year. We had a good, open discussion about how much we each need based on what's going on in our lives at the moment and then came to a decision we were all happy with.

We ended the week with our regular retrospective and a pint in [The Plough](http://www.taylor-walker.co.uk/pub/plough-bloomsbury/m2605/).

:name: week-429
:updated_at: 2017-04-12 12:03:11.002112000 +01:00
:created_at: 2017-04-12 12:03:11.002102000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 429
:extension: markdown
