Week 527
========

This week Chris and I continued work on the [Modern Slavery Registry](https://www.modernslaveryregistry.org/) project for our client the  [Business and Human Rights Resource Centre](https://www.business-humanrights.org/).

We decided at the beginning of the short project that we needed to do some refactoring of the data model to make it easier to implement the user-facing features we've been asked to add. Currently a modern slavery statement can only be associated with a single company, but many companies publish statements that [cover a large number of subsidiaries](https://www.modernslaveryregistry.org/companies/9083-serco-group-plc/statements/31146). At the moment these additional companies are captured in a plain text field which makes it difficult to validate the uniqueness of their names, and makes implementing free-text searching more complicated. The BHRRC are hoping to receive a list of companies that *should* be reporting under the legislation and to add that to their database - this will allow campaigning groups to identify which companies are not fulfilling their requirements and put some pressure on them to do so. We decided to model these associated companies using database relationships, which is taking a little longer to unpick than we'd hoped. However, we did manage to add some content-management features the team needed, and add a per-industry filter to an infographic. We're hoping to wrap up the remaining work next week.

Meanwhile Ben and James had planned to continue work for our (other) client [Ctrl Group](https://www.ctrl-group.com/) but James was unfortunately struck down with a lurgy, so we've decided to postpone for a few days until we're all back fighting fit.

:name: week-527
:updated_at: 2019-02-25 14:00:38.676503000 +00:00
:created_at: 2019-02-25 14:00:38.676485000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 527
:extension: markdown
