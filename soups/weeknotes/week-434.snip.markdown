Week 434
========

While Chris R was away on a well-deserved break in Barcelona this week,
James & I continued with our project to refactor and standardise Manuals
Publisher for our client GDS, although I had to take a couple of days out
to deal with plumbing issues.

James and I decided to work together
from some of the [TOG offices](https://www.theofficegroup.co.uk/)
around Kings Cross. We tried both
the
[Stanley Building](https://www.theofficegroup.co.uk/office/the-stanley-building/) and
the
[Kings Cross East Side](https://www.theofficegroup.co.uk/office/east-side/) co-working
locations.

## GDS

We
merged
[11 pull requests](https://github.com/alphagov/manuals-publisher/pulls?utf8=%E2%9C%93&q=is%3Apr%20closed%3A2017-05-08..2017-05-12) this
week.

A number of these pull requests were related to isolating the code
which talks to the Publishing
API
[behind an adaptor](https://github.com/alphagov/manuals-publisher/pull/1084). James
made this refactoring easier by introducing some integration-level
tests to ensure that whatever we did to the code still resulted in the
correct requests being made to the API. This allowed us
to
[inline some code](https://github.com/alphagov/manuals-publisher/pull/1085) into
the newly introduced class and simplify it.

Rails projects often adopt a "presenter" pattern which takes a model
instance and allows it to be serialised to HTML and other formats
depending on the context of where it is
used. We
[converted some of the existing "renderers"](https://github.com/alphagov/manuals-publisher/pull/1069) in
the code base to a style of presenter object that is common in other
applications at GDS. This allowed us to simplify the code and remove
some indirection.

We also took time
to
[make sure our code linting](https://github.com/alphagov/manuals-publisher/pull/1070) behaved
the same way in development as it does on the continuous integration
server.

A recent change to how Github pull request reviews work slightly
hampered our workflow this week. We're used to rebasing a pull request
against master and force-pushing before merging it using the "merge" button in the
Github UI. The recent change means that when Github detects the "new"
commits (their SHA has changed after rebasing), it dismisses any
existing review. This seems like a sensible thing to do in certain
stricter context, but we found it slightly awkward to have to
constantly request a "re-review" when merging a large number of pull
requests. It turns out that this behaviour is configurable by an
organisation administrator, so we'll investigate whether we can have
it turned off next week.

## GFR

- We
  [hosted our monthly show and tell event](http://gofreerange.com/show-and-tell-32) on
  Wednesday evening.
- We decided to join [SolidFund](http://solidfund.coop/) - the Worker
  Coop Solidarity Fund. SolidFund makes grants available to
  organisations that support cooperatives, helps coops who land on
  hard times generally supports industrial democracy and collective
  ownership. The decisions about how the collective money should be
  distributed are made by members.
- We helped test
  a [new community discussion group](https://community.coops.tech/)
  for [CoTech](http://coops.tech/). There's already been a lot of
  interesting discussion on the site, and we've been impressed with
  how well the software seems to work. CoTech is self-hosting the open
  source version of
  the [Discourse software](https://www.discourse.org/). The hard work
  was done by our friends
  at [WebArchitects](https://www.webarchitects.co.uk/). If you need
  help with a similar installation, be sure to look them up.

:name: week-434
:updated_at: 2017-05-17 09:59:29.189425000 +01:00
:created_at: 2017-05-17 09:59:29.189419000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 434
:extension: markdown
