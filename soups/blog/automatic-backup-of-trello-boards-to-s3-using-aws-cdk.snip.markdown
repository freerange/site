Over the last year or so, I've been using the [AWS CDK][] to setup AWS infrastructure for a number of internal [Go Free Range][] projects and I thought I'd try to write a bit about my experiences.

I started off by converting an existing project which backed up our company [Trello][] boards to an AWS S3 bucket. This was originally a relatively simple Ruby script which ran as a cron job on our [Linode][] VPS. The script used the Trello API (via `Net::HTTP`) to list the company boards and then downloaded a single large JSON blob for each board. It then used the the Ruby version of the [AWS SDK][] to save each JSON blob to a file in a versioned S3 bucket.

At around that time a Ruby runtime had been introduced for AWS Lambda functions, so I decided to give that a go. The first thing I had to work out was how to trigger a Lambda function to execute on a cron-like schedule. It took me a while to figure out the best way to do this, but eventually I worked out I could use a [Schedule Expression][] for a CloudWatch Rule.

Next I realised that I couldn't just move the whole of the existing Ruby script into the new Lambda function, because it would almost certainly timeout. And in any case, long-running Lambda functions aren't really in the spirit of [server-less computing][]! Anyway, after a number of false starts, I split the script up into a function to _enumerate_ the relevant Trello boards and another to _backup_ an individual Trello board to S3. The former is invoked by a scheduled CloudWatch event and for each Trello board it publishes a message to an [SNS Topic][] using the AWS SDK.

The second Lambda function is subscribed to the SNS Topic so that an instance of the function is invoked for each Trello board. The function fetches the JSON blob for the board identified by the SNS message and saves it to an S3 bucket in much the same way as the original script did. Thus the work fans out from one initial function to multiple secondary functions.

<img src="<%= image_path('blog/aws-cdk-trello-backup.svg') %>" width="100%" alt="Automatic backup of Trello boards to S3 using the AWS CDK">

Previously if a cron job failed on our VPS, it would email us via [Postfix][]. While I could view the CloudWatch logs for the Lambda functions to spot any errors in the new system, I couldn't immediately see a way to replicate the original behaviour, because with my new Lambda function "fan-out" architecture there was no easy way to know when all backup functions had completed successfully. However, I'll save that for another blog post!

If you're interested you can find [the source code on GitHub][trello-backup].

_This article was <a rel="canonical" href="https://jamesmead.org/blog/2020-03-30-automatic-backup-of-trello-boards-to-s3-using-aws-cdk">originally published</a> on James' blog._

[AWS CDK]: https://docs.aws.amazon.com/cdk/latest/guide/home.html
[Go Free Range]: https://gofreerange.com/
[Linode]: https://www.linode.com/
[Trello]: https://trello.com/
[AWS SDK]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/welcome.html
[Schedule Expression]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
[SNS Topic]: https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/SNS/Topic.html
[Postfix]: http://www.postfix.org/
[server-less computing]: https://en.wikipedia.org/wiki/Serverless_computing
[trello-backup]: https://github.com/freerange/trello-backup

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2020-03-30 16:40:00 +00:00
:updated_at: 2020-03-30 16:40:00 +00:00
:page_title: Automatic backup of Trello boards to S3 using the AWS CDK
:canonical_url: https://jamesmead.org/blog/2020-03-30-automatic-backup-of-trello-boards-to-s3-using-aws-cdk
