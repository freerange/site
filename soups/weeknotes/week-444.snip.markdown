Week 444
========

Happy Friday everyone!

We built up a head of steam this week with our work on improving how assets are stored for [GOV.UK](https://www.gov.uk/). As I outlined [last week](http://gofreerange.com/week-443) we're helping them to migrate uploaded assets (for example [maps attached to travel advice](https://www.gov.uk/foreign-travel-advice/colombia) or the [spring budget](https://www.gov.uk/government/publications/spring-budget-2017-documents)) to Amazon's AWS S3 service.

We are working towards a "[walking skeleton](http://alistair.cockburn.us/Walking+skeleton)" to test the end-to-end process of uploading assets, storing them from S3 and then serving them to the user. This will help us to uncover any problems earlier, and give us confidence that our proposed approach will work. We'll also be able to get all of the necessary credentials and connections in place early, which will help us to iterate.

We tackled the problem on three fronts:

1. We [updated the Terraform configuration](https://github.com/alphagov/govuk-terraform-provisioning/pull/125) to provision the S3 bucket we need and to set up a user with the correct permissions.
2. We [made sure the environment variables our application needs](https://github.com/alphagov/govuk-puppet/pull/6137) were added to the application servers using Puppet; and
3. We [modified the asset manager](https://github.com/alphagov/asset-manager/pull/74) application so that it stores assets to S3 and allows them to be optionally served from S3 for testing purposes.

We spent a bit of time debugging why the application on the integration servers wasn't picking up the environment variables we set. In doing so we discovered a useful trick: on Unix-like systems you can inspect the environment that a given process is running in by looking at the file stored in `/proc/<pid>/environ` where `<pid>` is the process ID of the, in this case, [Unicorn](https://bogomips.org/unicorn/) server running the application. This showed us that we needed to restart the application in a particular way in order for it to pick up the new environment.

On Thursday we shared our work so far with [Daniel](https://twitter.com/danielroseman) at GDS and got some useful feedback. It feels like we're close now to having something working that we can develop further.

Also on Thursday I met up with former Free Ranger [James Adam](http://lazyatom.com/) at Outlandish's office in Islington. [Outlandish](https://outlandish.com/) have recently taken over the lease on an empty floor in their building and want to turn it in to a co-working and event space for [CoTech](http://coops.tech/) members and other small tech businesses. We're interested in being a part of this project and are considering taking some space there. Outlandish threw a fun office-warming party and invited a lot of interested people to take a look.

In other CoTech activity, we stewarded a [Loomio discussion](https://www.loomio.org/d/W8r3ASkl/allow-greennet-to-join-cotech) to allow a new member to join the network. While the outcome was a little unsatisfactory, it was positive that we can use [Loomio](https://www.loomio.org/) to have nuanced, difficult discussions and come to a collective decision about how to proceed. We're going to work hard on clarifying the membership criteria for CoTech so that hopefully this process becomes much simpler in the future.

Along the way Chris wrote a [fantastic summary](http://gofreerange.com/show-and-tell-34) of our recent Show and Tell event *and* shared some [delicious links](http://gofreerange.com/week-444-links).

Have a very good weekend, won't you?

:name: week-444
:updated_at: 2017-07-21 17:20:31.016432000 +01:00
:created_at: 2017-07-21 17:20:31.016421000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 444
:extension: markdown
