Week 508
========

We've spent most of the week working with [DXW][dxw] and others on a project for [CCS][ccs], although we also managed to squeeze in some work for [Raising IT][raising-it], on the [Modern Slavery Registry][modern-slavery-registry] website migration and experimenting with outsourcing some admin.

## CCS

We've had an enjoyable but intensive week working on the CCS project with DXW which included our first Show & Tell on Wednesday. It was particularly satisfying to be able to demo working software after just 3 days development.

We're part of the team made up of CCS, DXW, [Rowe IT][rowe-it] and some independent contractors. I'm really impressed by the way everyone has come together so easily despite not having worked together before. There seems to be a real focus on delivery within the team which makes it so much easier to make progress.

We've been making more use of our office recently and have enjoyed being able to host [Paul][paul-battley] and one of the DXW designers, Ming.

We've been using [appear.in][appear-in] for remote meetings with multiple participants (e.g. daily standups) which has been working really well.

## Raising IT

[Chris][chris-lowis] spent another couple of hours working with Raising IT. He's been helping them make sense of some of their data and it sounds as though it's worked well from both sides. We've not really hired ourselves out as individuals before so it's a bit of an experiment to determine whether it's something we want to do more of.

## Modern Slavery Registry

We've been slowly migrating the website to AWS over the past month or two. I thought it was all done until we started seeing some exceptions from processes that couldn't get a connection to the database. It turns out that [Elastic Beanstalk][aws-elastic-beanstalk] configures [Puma][puma] to use between 8 and 32 threads while the database configuration set the pool size to 5. Increasing the pool size appears to have fixed the exceptions we were seeing so hopefully it really is done now...

## Week notes

[James][james-mead] has done a great job of filling in some week note gaps that have appeared over the past few months. Thanks, James.

## Virtual assistant

We've started experimenting with outsourcing some of our admin tasks. [Liz][liz-griffiths] has kindly agreed to get stuck into our [Harmonia][harmonia]/[Trello][trello] process to take on some of the company admin tasks. Our hope is that outsourcing some of this work will free us up a bit to focus on some of more potentially valuable activities we want to do as a company.

Until next time.

-- Chris


[appear-in]: https://appear.in/
[aws-elastic-beanstalk]: https://en.wikipedia.org/wiki/AWS_Elastic_Beanstalk
[ccs]: https://www.gov.uk/government/organisations/crown-commercial-service
[chris-lowis]: /chris-lowis
[dxw]: https://www.dxw.com/
[harmonia]: https://harmonia.io/
[james-mead]: /james-mead
[liz-griffiths]: https://twitter.com/elderberry
[modern-slavery-registry]: https://www.modernslaveryregistry.org/
[paul-battley]: http://po-ru.com/
[puma]: http://puma.io/
[raising-it]: https://www.raisingit.com/
[rowe-it]: http://www.roweit.co.uk/
[trello]: https://trello.com/

:name: week-508
:updated_at: 2018-10-12 18:01:27.487831000 +01:00
:created_at: 2018-10-12 18:01:27.487823000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 508
:extension: markdown
