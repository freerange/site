We learnt quite a bit while helping [FutureLearn][] with their video player and wondered how easy it would be to glue some components together to create something similar to existing full-stack video services.

To this end we've created a Rails app which uses AWS [Elastic Transcoder][] to transcode videos and AWS [S3][] & [CloudFront][] to host & distribute the transcoded videos. We provide instructions on how to setup the [VideoJS player][] on your website and we plan to provide instructions for other open-source players.

We think it's important that the user owns their own URLs so we make it easy to host the video assets on your own domain. We're committed to avoiding any kind of vendor lock-in. You can read more about GFR Video on its ["about" page][About GFR Video].

[FutureLearn]: https://www.futurelearn.com/
[Elastic Transcoder]: http://aws.amazon.com/elastictranscoder/
[S3]: http://aws.amazon.com/s3/
[CloudFront]: http://aws.amazon.com/cloudfront/
[VideoJS player]: http://www.videojs.com/
[About GFR Video]: https://video.gofreerange.com/about

:kind: project
:display_name: "GFR Video"
:url: https://video.gofreerange.com
