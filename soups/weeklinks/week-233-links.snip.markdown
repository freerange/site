Monday Links - 233
============

### [The 25 Most Audacious Companies](http://www.inc.com/audacious-companies)

I was interested to see that quite a few of these seemed to have been picked by virtue of their democratic company structure and/or collaborative culture - from [Morning Star](http://www.inc.com/audacious-companies/leigh-buchanan/morning-star.html), the world's largest tomato processor, where "employees make all the decisions" to [Menlo](http://www.inc.com/audacious-companies/leigh-buchanan/menlo-innovations.html) where they take pair-programming to an extreme. <%= by('james-mead') %>

### [Packer](http://www.packer.io/)

I'm always interested in tools to help build servers and development environments, so it's natural that packer piqued my interest.  Put simply, it aims to make it easy to create machine images across a number of platforms.  Being able to easily build an AMI image, for example, allows you to have an image with your app already pre-installed.  Scaling would then just be a case of launching new instances.  This idea of immutable disposable servers seems to me to be clearly the way things are heading.  Packer takes us a step closer to this goal. <%= by('tom-ward') %>

### [Orca: because building servers shouldn't be a PITA](https://github.com/andykent/orca)

I still find it takes me a while to get my head round the syntax and structure of Puppet and Chef. I'm sure this is mostly because I don't do it often enough, but I'm interested in this project which provides a simpler alternative where you only need to provision a few machines and all on the same OS and platform. <%= by('james-mead') %>

### [How to Use Bookmarklets in Chrome for Mobile](http://www.labnol.org/software/google-chrome-bookmarklets/27894/)

This is a great little trick. I've been using the [bookmarklets app](https://play.google.com/store/apps/details?id=com.kurtchen.android.bookmarklet.free&hl=en) to post to Roosmarks but it doesn't always pick up the title of the page (although that's possibly only a Chrome beta problem), where this appears to work just fine. <%= by('chris-roos') %>

### [New in Pivotal Tracker – Story following and user @mentions](http://pivotallabs.com/story-following-and-user-mentions/)

> It’s now even easier to collaborate with your teammates and keep the right people up to date. We’re very excited to announce Tracker story following and @mentioning!

This is a great addition to Pivotal Tracker. It should make it easier to have a discussion about a story with someone other than the person that requested it. <%= by('chris-roos') %>

### [Keep Your Build Fast with a Timebomb](http://pivotallabs.com/keep-your-build-fast-with-a-timebomb/)

I like this idea. It's really easy for a test suite to increase in size and duration over time. Something like this might/could help you keep an eye on the duration and prevent it from getting too slow in the first place. <%= by('chris-roos') %>

### [What does status=canceled for a resource mean in Chrome Developer Tools?](http://stackoverflow.com/questions/12009423/what-does-status-canceled-for-a-resource-mean-in-chrome-developer-tools)

I've seen this problem a few times when playing with XmlHttpRequest, most recently when trying to upload files to S3 using the [jQuery file upload plugin](https://github.com/blueimp/jQuery-File-Upload). In short, I think you'll see a "(canceled)" status when the server responds with a redirect (a 303 from S3 in my case). You can use Chrome's net internals (chrome://net-internals) to get a more detailed look at what's going on, but I'd recommend checking whether the service is responding with a redirect before diving in to that level of detail. <%= by('chris-roos') %>

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2013-07-01 14:00:00 +01:00
:updated_at: 2013-07-01 14:00:00 +01:00
:page_title: Monday Links - Week 233
