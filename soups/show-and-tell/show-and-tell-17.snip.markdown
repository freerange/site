Show and Tell 17
================

A select group of four gathered at GFRHQ on Wednesday, 14th October. Despite the reduced numbers we still found plenty of things to show and tell.


## Temperature visualisation

[James S][]'s girlfriend grew up in Dubai and so isn't used to London temperatures. In particular the numerical values don't mean much to her and she's never sure what clothes to wear.

To try to help with this, James has built a little [AngularJS][] application to display today's forecast temperatures using horizontal bars of colour. He's using the classic colour "map" of blue representing cold and red representing hot. The idea is that his girlfriend will be able to tell at a glance how warm it's going to be that day and dress accordingly.

The app uses [OpenWeatherMap's API][openweathermap-api] to obtain the temperatures. It was interesting to see the innards of an Angular app - Chris & I haven't spent much time looking at any of the JavaScript MVC frameworks.


## Aerial photograph

[Chris][]'s attention had been grabbed by this [historical aerial photograph of Liverpool Street station and Spitalfields market][historical-aerial-photograph] taken in 1947. He pointed out the bridge over the railway line at the east end of Worship Street which most people don't realise is a bridge, because it's surrounded by buildings.

[Ben][] explained that many of the large buildings which have been built over the railway line have bridge-like cantilevered foundations.

Chris had had a bit of a play around with [annotating the photograph][annotated-aerial-photograph] using CSS absolute positioning to pinpoint specific features and link through to Google Maps.

He'd also managed to generate a [very similar image of what the area looks like today][google-earth-image] using the Google Earth feature in Google Maps. This led Ben to suggest working out how to transform the historic image into the modern one to yield some kind of morphing animation.


## Diary analysis

As well as writing his own work day notes and [company week notes][notes-for-week-351], amazingly Chris finds the time to keep a personal diary. Recently he's been playing around with analysing his diary writing habits. For example, he's used a spreadsheet to create a simple graph of his daily word count over time in the hope that he might see some interesting patterns.

He'd already thought about doing some [sentiment analysis][], but asked us whether we had any other ideas. I think we came up with a few ideas, but the only one I can remember is measuring the size of the vocabulary used in each post over time. If anyone else has got ideas, I'm sure Chris would be keen to hear them.

## Meaningful sizes

Chris has been thinking about illustrating the size of things by comparing them with recognisable features on a Google Map:

> The size of "3 football pitches" would mean more to me if I could see it in relation to a known thing - my house, for example

Ben mentioned Berg's [Dimensions project][] which did something along these lines, although unfortunately [howbigreally.com][] doesn't seem to be live anymore...


## Backing up an S3 bucket

In our work with [Hookline][], we wanted a way to backup their audio tracks which we were storing in an AWS S3 bucket. I demonstrated what we ended up doing:

* Enabled [versioning][s3-versioning] on the S3 bucket
* Setup [cross-region replication][s3-cross-region-replication] to another versioned bucket
* Configured a [lifecycle rule][s3-object-lifecycle-management] on the backup bucket to move objects to Glacier after 0 days to save on storage costs

I had investigated quite a few different options, but they were all a lot more complicated than this. In the end I was pretty happy with how simple this was to setup.


## Obfuscating audio track URLs

Something else we needed to do on the Hookline project was to obfuscate the URLs for audio tracks. We've currently got a relatively simple JavaScript solution which we demonstrated to the assembled throng. But we wondered whether there was a better way. Ben suggested using a cookie to sign the requests so that URLs can't be shared, so we might explore that.

Anyway, that was the end of the showing and telling for this month.

Until next time,

-- James.

[James S]: https://www.linkedin.com/pub/james-smyth/91/781/310
[AngularJS]: https://angularjs.org/
[openweathermap-api]: http://openweathermap.org/api
[Chris]: /chris-roos
[historical-aerial-photograph]: http://www.britainfromabove.org.uk/image/EAW011141
[Ben]: https://twitter.com/beng
[annotated-aerial-photograph]: https://jsfiddle.net/bxtg9fe3/embedded/result/
[google-earth-image]: https://www.google.co.uk/maps/@51.520265,-0.0870261,705a,20y,90h,41.52t/data=!3m1!1e3
[Dimensions project]: http://berglondon.com/projects/dimensions/
[Hookline]: http://hookline.tv/
[s3-versioning]: http://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html
[s3-cross-region-replication]: http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html
[s3-object-lifecycle-management]: http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html
[notes-for-week-351]: /week-351
[sentiment analysis]: https://en.wikipedia.org/wiki/Sentiment_analysis
[howbigreally.com]: http://howbigreally.com

:render_as: blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-10-16 15:25:00 +01:00
:updated_at: 2015-10-16 15:25:00 +01:00
:page_title: Show and Tell 17
