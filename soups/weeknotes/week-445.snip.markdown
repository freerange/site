Week 445
========

We spent most of the week at the TOG co-working space in Bloomsbury. The closure of [our favourite lunch spot](https://www.tripadvisor.co.uk/Restaurant_Review-g186338-d6002435-Reviews-Giovanni_s-London_England.html) for the summer holiday meant we were forced to venture more than 5 minutes afield for sustenance. We enjoyed a particularly good lunch at the [Lowlander](http://www.lowlander.com/) on Monday and on Wednesday evening we met our friends for a pint at [The City Pride](http://www.cityprideclerkenwell.co.uk/) in Farringdon.

When not eating or drinking we were making the most of being together by getting stuck into work for our client. The migration of all of the uploaded assets (PDFs and other documents) on [GOV.UK](https://www.gov.uk/) from self-hosted infrastructure to Amazon's S3 service continues. This week we spent some time with [Terraform](https://www.terraform.io/) the "infrastructure as code" system that GOV.UK [use to provision](https://github.com/alphagov/govuk-terraform-provisioning) their AWS stack. We [created a bucket and some policies](https://github.com/alphagov/govuk-terraform-provisioning/pull/125/files) using Terraform and helped get that deployed and tested.

Meanwhile we brought some more of the Asset Manager application's dependencies up to date including [the linter](https://github.com/alphagov/asset-manager/pull/91), [MongoDB ORM](https://github.com/alphagov/asset-manager/pull/88) and [Ruby version](https://github.com/alphagov/asset-manager/pull/83).

:name: week-445
:updated_at: 2017-08-18 12:39:11.672533000 +01:00
:created_at: 2017-08-18 12:39:11.672522000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 445
:extension: markdown
