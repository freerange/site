How to backup Google Drive to S3 using the AWS CDK
=======

_An AWS CDK project to schedule the backup of a shared folder in Google Drive to Amazon S3 using a scheduled Fargate task on Amazon ECS to run `rclone sync`_

Way back in [the Before Time], I did some work to automate a couple of our recurring manual [Harmonia] tasks. One of these was the task to back up our shared [Google Drive] to [Amazon S3]. Prior to this we'd been running the [`rclone sync`] command manually on one of our local machines. One significant downside of this was that we each needed to have a local copy of all the files (~17GB), so I was keen to come up with an automated solution running in the cloud.

Unlike with our [Trello backup], it wasn't obvious to me how we could split the work up into tasks short enough to run as [AWS Lambda] functions. Also, although it was interesting from an educational point-of-view, I felt as if the orchestration/coordination complexities introduced by splitting up the Trello backup tasks had been overly cumbersome. So I decided to explore the idea of spinning up some compute to execute a script in one go much more like how a [cron job] would run on a traditional server.

I was (and still am) enjoying using the [AWS CDK] and so after a bit of research, I decided to use the [`ScheduledFargateTask`] construct which is one of the higher-level patterns made available in the CDK. This construct meant that it was relatively straightfoward to spin up a container on [Amazon Elastic Container Service (ECS)] at regular intervals and execute a shell script on that container.

## Scheduled Fargate Task

The task needed **access to** the internet, but there was no need for it to **be accessible from** the internet. I could've run it on a private subnet, but this would've meant I'd need either a NAT Gateway (expensive) or to run a NAT Instance on [Amazon EC2] (maintenance/complexity overhead). Since the tasks only run for a few minutes every week I was willing to sacrifice the extra security provided by a private subnet in favour of a simpler/cheaper system where the tasks run on a public subnet.

However, at that point `ScheduledFargateTask` only ran if its VPC had a private subnet - if there was no private subnet available, an error was reported. So I decided to take the opportunity to contribute to the AWS CDK project and opened [a pull request to allow ECS tasks to run on a public subnet][pr-6624] which was released in [v1.29.0]. I really enjoy contributing to open-source projects like this - it's a really good way to get a deeper understanding of how it all works.

Having incorporated that change, I used [`ecs.ContainerImage.fromAsset`] to define the container image using [a local `Dockerfile`]. This installs `rclone` on an Ubuntu base image and copies [a backup script] and associated [rclone configuration] files into the home directory. This means you need the [Docker CLI] available locally when you run `cdk deploy` so it can build the container image and push it up to [Amazon Elastic Container Registry] ready for use by ECS.

It turned out that using the `rclone sync` command on a Google Drive folder containing so much data needs quite a bit of CPU and memory, but it was easy to increase this from the default of ¼vCPU & ½GB to [4vCPU & 16GB] so that the command ran very quickly. Even though this is pretty beefy, given that it only runs for a few minutes once a week, the cost is negligible.

The task is scheduled using the [`CronOptions`] interface. Configuration is supplied to the container via environment variables using [dotenv]. Credentials for Google Drive are supplied via [Secrets Manager]. Those for the S3 bucket are made available via the IAM role assigned to the ECS Task and used by `rclone` with the [`env_auth`] option set to `true`.

The task is monitored with the excellent [Healthchecks] service which we were already using for the Trello backup. This is effectively a [dead man's switch] which alerts us if the script doesn't complete successfully at a given frequency and within a defined grace period.

## Reflections

Two years on, I'm really happy how this turned out. Once I'd got the backup running successfully, we've only had one failure which was due to a recent change to the Google Drive API requiring a newer version of `rclone`. This meant I had to dive back into the code again to fix it, but I found it pretty easy to find my way around again partly because there's not actually very much code!

The source code for the whole CDK project is [available on GitHub].

[the Before Time]: https://www.urbandictionary.com/define.php?term=The+Before+Time
[Harmonia]: https://harmonia.io/
[Google Drive]: https://www.google.com/drive/
[Amazon S3]: https://aws.amazon.com/s3/
[`rclone sync`]: https://rclone.org/commands/rclone_sync/
[Trello backup]: /automatic-backup-of-trello-boards-to-s3-using-aws-cdk
[AWS Lambda]: https://aws.amazon.com/lambda/
[cron job]: https://en.wikipedia.org/wiki/Cron
[AWS CDK]: https://aws.amazon.com/cdk/
[`ScheduledFargateTask`]: https://docs.aws.amazon.com/cdk/api/v1/docs/@aws-cdk_aws-ecs-patterns.ScheduledFargateTask.html
[Amazon Elastic Container Service (ECS)]: https://aws.amazon.com/ecs/
[pr-6624]: https://github.com/aws/aws-cdk/pull/6624
[`ecs.ContainerImage.fromAsset`]: https://docs.aws.amazon.com/cdk/api/v1/docs/@aws-cdk_aws-ecs.ContainerImage.html#static-fromwbrassetdirectory-props
[v1.29.0]: https://github.com/aws/aws-cdk/releases/tag/v1.29.0
[a local `Dockerfile`]: https://github.com/freerange/google-drive-backup/blob/19a065b9bfebe8a7a4cbdc9f3739d628261d9f2c/local-image/Dockerfile
[a backup script]: https://github.com/freerange/google-drive-backup/blob/ffc52080da5de7b780ba6b50352d0147ffad793e/local-image/home/backup.sh
[rclone configuration]: https://github.com/freerange/google-drive-backup/blob/ffc52080da5de7b780ba6b50352d0147ffad793e/local-image/home/rclone.conf
[Amazon Elastic Container Registry]: https://aws.amazon.com/ecr/
[Docker CLI]: https://docs.docker.com/engine/reference/commandline/cli/
[4vCPU & 16GB]: https://github.com/freerange/google-drive-backup/blob/ffc52080da5de7b780ba6b50352d0147ffad793e/lib/google-drive-backup-stack.ts#L30-L31
[`CronOptions`]: https://docs.aws.amazon.com/cdk/api/latest/docs/@aws-cdk_aws-applicationautoscaling.CronOptions.html
[dotenv]: https://www.npmjs.com/package/dotenv
[`env_auth`]: https://rclone.org/s3/#authentication
[Secrets Manager]: https://aws.amazon.com/secrets-manager/
[Healthchecks]: https://healthchecks.io/
[dead man's switch]: https://en.wikipedia.org/wiki/Dead_man%27s_switch
[Amazon EC2]: https://aws.amazon.com/ec2/
[available on GitHub]: https://github.com/freerange/google-drive-backup

_This article was <a rel="canonical" href="https://jamesmead.org/blog/2022-05-18-how-to-backup-google-drive-to-s3-using-the-aws-cdk">originally published</a> on James' blog._

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2022-05-18 17:46:00 +00:00
:updated_at: 2022-05-18 17:46:00 +00:00
:page_title: How to backup Google Drive to S3 using the AWS CDK
:canonical_url: https://jamesmead.org/blog/2022-05-18-how-to-backup-google-drive-to-s3-using-the-aws-cdk
