Week 577
========

Week commencing 3 Feb 2020.

- Chris was on holiday all week, I was on holiday Thursday and Friday and Ben had a couple of days off sick. Leaving James to hold everything together in our absence. Thanks, James! Normal service should resume next week.

- I spent some time working on The University of Oxford project. We're currently using chart.js to plot wavelength vs spectral irradiance of user-supplied spectra. I spiked on normalising the spectral irradiance so that it's easier to visually compare the spectra in a single chart.

- James continued to improve the scheduled tasks we use to backup our Trello boards and Google Drive. These tasks run in containers in AWS and, by default, are created in a private subnet that uses a NAT gateway to connect to the Internet. These NAT gateways are _relatively_ expensive so James has changed the task to run in a public subnet instead. He's also been removing sensitive configuration baked into the container image by using environment variables, IAM roles and the AWS Secrets Manager instead. This is all with the goal of us being able to open source the projects in future. Oh, and he's also been [contributing back to the CDK project][aws-cdk-6076] along the way.

- James has removed Disqus from our website. It was either this or display some kind of annoying cookie banner. Given that we receive very few comments we decided to remove it.

- We started sprint 10 of the Audience Agency project on Tuesday. We started with a discussion about team working which focussed on the idea of reducing the amount of work in progress/upfront thinking that's happening. We've made a couple of small changes to our process and will reflect on them at the end of sprint retrospective.

- We invited another 1000 users to the TAA app on Tuesday morning which is awesome! We're continuing to get some really useful feedback from these early users.

- In terms of functionality, we've been working on displaying an estimated number of visitors in the Audience Report, allowing users to choose the surveys they include in the Audience Report, differentiating between people that didn't answer a survey question vs those that answered to say that they'd prefer not to answer, and investigating why a small number of users aren't being imported from AF1.

[aws-cdk-6076]: https://github.com/aws/aws-cdk/issues/6076

:name: week-577
:updated_at: 2020-02-10 12:28:59.430854000 +00:00
:created_at: 2020-02-10 12:28:59.430842000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 577
:extension: markdown
