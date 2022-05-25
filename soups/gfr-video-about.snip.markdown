## GFR Video

This page contains the content from the now archived "about" page for [the service](/gfr-video) we built.

### Key Features

* **Zero vendor lock-in** - We make it easy to stop using the service or to switch to an alternative service.
* **Own the URLs of your videos** - We host your videos on your own domain so they don't need to move if you change provider.
* **Fully customisable open-source video.js player** - Take a look at the <%= link_to 'video.js player designer', 'http://designer.videojs.com/' %> to get an idea of how easy it is to customise.
* **Sensible defaults** - A set of output formats which will work on the majority of browsers.
* **Easily switch to a different video player** - It's straightforward to use another video player e.g. <%= link_to 'MediaElement.js', 'http://mediaelementjs.com/' %>, or <%= link_to 'SublimeVideo', 'http://www.sublimevideo.net/' %>.
* **Transparent/simple pricing** - We make it easy to understand exactly what you're paying for.
* **Reliable technology** - Built on top of Amazon Web Services: <%= link_to 'S3', 'http://aws.amazon.com/s3/' %> for storage, <%= link_to 'ETS', 'http://aws.amazon.com/elastictranscoder/' %> for transcoding, and <%= link_to 'CloudFront', 'http://aws.amazon.com/cloudfront/' %> for distribution.

### Known Limitations

* **Upload speed** - We haven't yet optimised the upload process.
* **Transcoding speed** - We haven't yet optimised the transcoding process.
* **Output formats** - We're currently only encoding to 480p and 720p in 16:9 widescreen format.
* **Access to videos** - Transcoded videos are publicly accessible, but not discoverable.

### Possible Features
* **Support for adaptive bitrate streaming** - e.g. <%= link_to 'HLS', 'http://en.wikipedia.org/wiki/HTTP_Live_Streaming' %> and <%= link_to 'MPEG-DASH', 'http://en.wikipedia.org/wiki/Dynamic_Adaptive_Streaming_over_HTTP' %> to give a better experience on mobile devices.
* **Subtitle support** - Reach as wide an audience as possible by adding subtitles in multiple languages.
* **A Ruby gem and an API** - To provide programmatic upload, management of uploaded videos, and access to the URLs for embed code.
* **Serve your videos over SSL** - We want to make it as simple as possible to have your videos served securely using SSL.
* **Instructions on setting up video.js plugins** - e.g. SD/HD toggle, Google Analytics.
* **Instructions & examples for other video players** - Get up and running with alternative video players with a minimum of fuss.
* **More output sizes** - Create videos at both higher and lower resolutions than those we currently support.
* **Handle audio-only uploads** - Creating podcasts or your own music? Then we can imagine an audio-specific version of this service being just the thing for you.
* **Dropbox integration** - We want to make it as simple as possible for you to get your videos from Dropbox to our video service.
* **Heroku add-on** - We want to make it as simple as possible to integrate the apps you're developing on Heroku with our video service.

:layout: wiki-layout
:is_page: true
:created_at: 2022-05-25 12:39:00 +0100
:updated_at: 2022-05-25 12:39:00 +0100
:page_title: GFR Video - About