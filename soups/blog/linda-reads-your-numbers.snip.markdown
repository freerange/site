Linda reads your numbers
==========

*UPDATE 3rd May 2011.* We've taken this down for the foreseeable future.  I do think there's some merit in a service like this but it didn't generate enough interest to warrant us maintaining it just now -- Chris.

As mentioned in our [previous post][previous] last week we took a step back from client delivery so that we could play with ideas and new technologies. Whilst [Timmy][timmy] was being built in one corner of the office, [Chris][chris] and I worked on a different idea involving calling a phone number to read out our important contacts.

Some of us in the office have been in situations where our phone has run out of battery and we've been unable to obtain an important number that we've needed. Yeah, sure, some of us sync contacts out to the web but when you're stuck somewhere without internet cafés or out late where everything is closed, you're stuck.

So with this problem in mind we built a thing - [Linda reads your numbers][linda]. This is a really basic service allowing you to define contacts and allow you to hear them when calling a number.

![Linda reads your numbers][linda-screenshot]

You can sign up to the [app][linda] for free and enter up to 10 important contacts. When you call the 0844 704 1542  number, enter your phone number and PIN you can get Linda to read out your numbers!

There is a lot more we could've done with it but we've decided to push it out now so we can hear what you think of it.

Calls to the number are charged at 5p a min on landlines and whatever your mobile company charge for 0844 numbers. We don't make any money from this number, it's a number provided by [voipuser.org](http://voipuser.org) for free.

We had fun building this by learning how to hook up VOIP services to Ruby. For this app we used [Asterisk](http://www.asterisk.org/) as the open source PBX and hooked it up to [Adhearsion](http://adhearsion.com/) and [Rails](http://rubyonrails.org/) to manage the dialpan and contacts. We will write up in another post a bit more on how this was set up and what we learned.

Go forth and [set up your contacts][linda] so that you too can get Linda to read your numbers.

[fr]: /
[linda]: http://linda.gofreerange.com
[timmy]: /timmy
[chris]: http://chrisroos.co.uk/
[previous]: /say-hello-to-timmy-printface
[SIP]: http://en.wikipedia.org/wiki/Session_Initiation_Protocol

[linda-screenshot]: <%= image_path('blog/linda-reads-numbers-screen.png') %>

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: kalvir-sandhu
:created_at: 2011-04-12 17:10:00 +01:00
:updated_at: 2011-05-03 18:21:54 +01:00
:page_title: Linda reads your numbers
:erb: true
