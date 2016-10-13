Week 303
========

A slightly later than planned overview of the things that kept us busy during week 303.

## GFR Video

* We've configured [Semaphore][] as our continuous integration service for this project.

* I spent all too long investigating [multipart uploads][] to S3. We wondered whether splitting larger files in the browser and then uploading them in parallel chunks would improve the overall upload speed. Unfortunately, after a fairly non-scientific experiment, that doesn't seem to be the case. You can follow along with my experiment in the [exploring-browser-based-file-uploads-to-s3 repo][].

* James spent a while investigating using multiple ETS jobs to transcode a video into multiple output formats. We thought this might speed up the transcoding process but, just as with my experiments into uploading, it turned out not to be the case. We think this is probably because AWS now [parallelise multiple outputs within a single job][]:

  > Over the last couple of months we have quietly raised the level of parallelism within the service. If your job includes more than one type of output, work proceeds in parallel, up to the limit of 30 outputs per job.

## Office

* We continued our discussion about office space in 2015. We had a good number of responses to the emails and had a good chat with Tom S and [Tom T][]. We're still interested in the idea of forming some kind of co-operative to take on the lease for a shared office space. Unfortunately, we don't think it's going to be possible with our current office so we're now almost certainly resigned to being out of here in January 2015.

## Social

* We hosted the [Computation Book Club][] on Tuesday. We had a good turnout with around 14 people showing up. I'd read the first chapter of [NAND to Tetris][] but hadn't managed to do any of the exercises so was pleased to be able to spend some time going through them as a group. The next meeting is on Tuesday 25th November - [sign up on Lanyrd][] if you're interested in joining.

* [James M][] and [Tom S][] headed to the Pivotal offices on Wednesday to see [Joel][] speak about Continuous Delivery.

## GFR Admin

* We tidied up our Sales Pipeline Trello board now that we've agreed to take on more client work.

* James updated our [FreeAgent sanity check repo][] to make it clear that it's deprecated. This sort of work isn't exciting but it feels like the right thing to do in order to avoid misleading people that might stumble across the repository in future.

* I've added Harmonia tasks to prompt us to download invoices when they become available. Downloading the invoices normally happens as part of our weekly FreeAgent task but we're hoping that splitting them out will reduce the amount of time it takes to complete the larger FreeAgent task.

* We investigated hosting a [Gollum wiki][] to make some of our private wiki content public. It looked as though there was going to be some work involved in getting Gollum set-up which caused us to re-evaluate what we were really after. What we really want is a way to make some of our content public, and we have a way to do that using our site. So that's what we're going to do.

* James took advantage of the discounted price of [Najaf Ali's security workshop][] by purchasing a copy.

[Computation Book Club]: http://london.computation.club/
[exploring-browser-based-file-uploads-to-s3 repo]: https://github.com/chrisroos/exploring-browser-based-file-uploads-to-s3
[FreeAgent sanity check repo]: https://github.com/freerange/free_agent_sanity_check
[Gollum wiki]: https://github.com/gollum/gollum
[James M]: /james-mead
[Joel]: http://joelchippindale.com/
[multipart uploads]: http://aws.amazon.com/blogs/aws/amazon-s3-multipart-upload/
[Najaf Ali's security workshop]: http://lists.lrug.org/pipermail/chat-lrug.org/2014-October/010605.html
[NAND to Tetris]: http://www.nand2tetris.org/
[parallelise multiple outputs within a single job]: https://aws.amazon.com/blogs/aws/amazon-elastic-transcoder-updates/
[sign up on Lanyrd]: http://lanyrd.com/2014/london-computation-club-nand2tetris-meeting-2/
[Semaphore]: https://semaphoreapp.com/
[Tom S]: http://codon.com/
[Tom T]: http://tomtaylor.co.uk/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2014-11-07 17:00:00 +00:00
:updated_at: 2014-11-11 14:00:00 +00:00
:page_title: Week 303
