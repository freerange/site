Week 295
========

The office was a hive of activity on Monday, because we had the [Hookline][] team visiting for the day. We also had _two_ Tom's in the office - [Tom Stuart][] and Chris' friend, Tom Bell. It was also a day to celebrate, because Chris finally managed to sort out our [PRS][] and PPL licence - double yay!

This week we've mainly been working on our internal "video" project - making it easy to transcode and host videos - so I thought I'd take the opportunity to tell you a bit more about it...


## Video project

### Getting started

We started by putting together a very minimal prototype and then iterating on that while constantly thinking about how we'd want to use it if we were hosting videos ourselves e.g. on gofreerange.com or on our own websites. Although we started of with some idea that this _might_ evolve into a paid-for service, we initially put that to one side to focus on making something _useful_.

For the moment we're using Amazon Web Services to provide most of the infrastructure: [Elastic Transcoder][] (for video encoding), [S3][] (for video storage) and [CloudFront][] (for a CDN in front of S3); although we're hosting the Rails app on our Linode VPS. We can imagine being able to offer similar solutions with different infrastructure providers, but we've decided that's out-of-scope for the moment.

### Monetization

More recently we've spent a bit of time investigating how we might charge for the service. One of our aims is avoid any significant financial risk. The most significant costs are likely to be the AWS charges and if we were "re-selling" these services then the most obvious financial risk is that a customer is slow to pay (or fails to pay) our charges and we are left covering the AWS fees that they have incurred.

[Amazon DevPay][] and [AWS Marketplace][] provide a way to sell services running _on top of_ AWS services and in particular they allow you to charge the customer based on their usage of the underlying AWS services e.g. you can charge a fixed fee or a percentage on top of the AWS costs. This seems ideal, especially as they take care of the billing for you. Unfortunately to do this you need to have a US bank account and a US tax identification number. These requirements have put us off this approach for now.

We also looked at building a [Heroku add-on][], but it looks as billing for add-ons is done in arrears, so we'd be at risk of the same negative cashflow situation as above.

### USP

We then worked out that in any case, we'd like users to _own_ their own assets and probably even the URLs to those assets. We even think this could be some sort of [USP][] for the service. Anyway, we're now working on a way to make it easy for users to setup the necessary AWS infrastructure and have our service take care of orchestrating the transcoding.

We're pretty happy with how things are progressing and it's been good to get stuck into some development as well as play at being product owners.


## Show and Tell

We had another of our Show and Tell evenings at GFRHQ on Wednesday evening and Chris has kindly [written up some notes][Show and Tell]. I really enjoyed the evening.

We're trying to encourage a few more people to come along - it's nice to have as wide a range of opinions as possible. The thing I especially value is the informal and non-judgemental atmosphere in which to discuss ideas.


## Sales pipeline

We decided we ought to get a bit more organised about prospective client work and to that end we've set up a new Trello board. We're planning on using this new board in a slightly different way than we use other boards i.e. each column will represent a stage in the sales pipeline and cards will move from left to right as we get closer to making a "sale".

It's early days yet, but I found it helpful to get a bit of an overview of where we're at. I should add that we're in the market for interesting projects, so if you have something in mind, please do [get in touch][]!


## Open source

We chatted a bit about the future of [Mocha][]. Like many owners of open-source projects, I'm struggling to find the time and motivation to continue to work on the project in my free time. We've agreed to spend a day working on the project in the next couple of weeks and to take things from there.


Until next time.

-- James.



[Hookline]: http://hookline.tv/
[Tom Stuart]: http://codon.com/
[PRS]: http://www.prsformusic.com/
[PPL]: http://www.ppluk.com/
[Elastic Transcoder]: http://aws.amazon.com/elastictranscoder/
[S3]: http://aws.amazon.com/s3/
[CloudFront]: http://aws.amazon.com/cloudfront/
[Amazon DevPay]: http://aws.amazon.com/devpay/
[AWS Marketplace]: https://aws.amazon.com/marketplace
[Heroku add-on]: https://addons.heroku.com/
[USP]: http://en.wikipedia.org/wiki/Unique_selling_proposition
[Show and Tell]: /show-and-tell-5
[get in touch]: /contact
[Mocha]: http://gofreerange.com/mocha/docs/


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-09-15 18:10:00 +01:00
:updated_at: 2014-09-15 18:10:00 +01:00
:page_title: Week 295
