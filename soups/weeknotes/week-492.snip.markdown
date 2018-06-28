Week 492
========

This week was a little bit slower due to illness and leave but we made good progress on our client project.

## Modern Slavery Registry

We continued our short sprint for the [Business and Human Rights Resource Centre](https://www.business-humanrights.org/) on their [Modern Slavery Registry](https://www.modernslaveryregistry.org/). [Chris](/chris-roos) continued to get the application ready to migrate to AWS. The registry fetches snapshots of uploaded Modern Slavery statements so that they can be referred to even if the publishing organisation moves or removes them. PDF files are stored as-is while HTML statements are stored as text and as rendered snapshots.

The statements were being stored as binary blobs in a column in the Postgres database. Unfortunately as the registry has grown this has meant that the database has grown to around 3GB - costing a lot to host on Heroku and making it difficult to migrate to AWS. Chris made a first pass at the problem by [reducing the sizes of some of the larger snapshots](https://github.com/bhrrc/modernslaveryregistry.org/commit/e767727c81210ea6e8fecc6ff9dfabbd03efbc94). He then made some changes to allow the app to be run under Vagrant so that he could start experimenting with how to move the binary blobs in the database to S3.

He also [upgraded the application to Rails 5.2](https://github.com/bhrrc/modernslaveryregistry.org/commit/91d2f7616c6b3a027c58e50215f7d5819bee440d) so that we could take advantage of the new ActiveStorage library to handle file uploads. Meanwhile [Ben](/ben-griffiths) continued to work on the [CloudFormation](https://aws.amazon.com/cloudformation/) code we need to provision the infrastructure on AWS.

## Other good things

- We met with a potential client on Tuesday and it looks positive that we'll be able to do some work for them in July.
- We spent some more time on our side project adding some features to a simple web-based application we've written in [Elm](http://elm-lang.org/).
- James went to the [Isle of Wight festival](https://isleofwightfestival.com/).
- I had a chat with our friends at [pilot.works](http://pilot.works/) about a potential Digital Outcomes and Specialists bid.



<!-- add content here -->

:name: week-492
:updated_at: 2018-06-28 14:32:03.700186000 +01:00
:created_at: 2018-06-28 14:32:03.700179000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 492
:extension: markdown
