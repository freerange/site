Week 209
========

[Tom](/tom-ward) and I kicked off the week by completing the code review we'd started preparing for the week before. It was hard to know just how much preparation to do. In the end, I think I spent a little over half a day getting up to speed with the code and making sure I understood at least the fundamentals of what it was doing. Matt, the chap we were helping, arrived at our office at 10:00 on Monday and we spent around five hours going through the code: with discussions ranging from the general architecture of the application to some very specific implementation details. I enjoyed the process and think, and certainly hope, Matt went away happy. I certainly came away with a sense of having completed something, which is something I miss when we're not coding each day.

Monday evening saw [James M](/james-mead), Tom and I take a walk to the [Skills Matter](http://skillsmatter.com/) office for the [LRUG pub quiz](http://lrug.org/meetings/2012/12/20/january-2013-meeting/). We'd put a little bit of sponsorship money toward the event, along with [Unboxed](http://www.unboxedconsulting.com/), [AdRoc](http://adrocgroup.co.uk/) and [vzaar](http://vzaar.com/), which meant we were all able to fill our bellies with pizza and beer; or fact food as it's otherwise known. Neither the team that James M and I were on, nor the team that Tom was on, won anything. I can only assume that this was a careful play by [Murray](http://h-lame.com/) to avoid having to explain why the winners also happened to have sponsored the event. At least, that's the reason I'm going with.

There weren't too many people at the [Slaughtered Lamb](http://www.theslaughteredlambpub.com/) (the [LRUG](http://lrug.org/) pub of choice) afterwards but I did manage to catch up with some old [Headshift](http://www.headshift.com/) colleagues, meet [JB Steadman](http://www.linkedin.com/in/jbsteadman) who's leading the creation of the London office for [Pivotal Labs](http://pivotallabs.com/), and finally meet [Andrew McDonough](https://twitter.com/andrewmcdonough) (Co-founder and CTO of [Tribesports](http://tribesports.com/)) who I've “known” virtually for a while.

I find it interesting that Pivotal Labs are setting up shop in London. It feels like there's generally plenty of work to go around at the moment, but if Pivotal set-up a large enough team then maybe that situation will change... We'll have to probe JB on their plans when we meet for lunch in the near future.

We're continuing our Tuesday chats (first introduced in [week 184](/week-184)), even when we're not all physically located together. I've been recording these on and off since we started. My theory being that there's some interesting material in these conversations that would otherwise be lost in time. Unfortunately, any such material has essentially been lost because the recordings just sit on my laptop. To remedy that, I spent some time last week investigating hosting the audio somewhere more accessible than my hard drive; trying [Dropbox](https://www.dropbox.com/), [Google Drive](http://drive.google.com) and [Amazon S3](http://aws.amazon.com/s3/). Unfortunately, none of these services quite matched what I was after.

* Google Drive doesn't support streaming audio from the web interface. You can use [Drive Tunes](http://drivetunes.org) for this purpose but you have to give it full access to your Google Drive account which made me feel a little uncomfortable.
* Amazon S3 supported streaming .mp3s but not .m4a's (although that might be because I needed to set the content type, or another, http header) but the interface wasn't great.
* Dropbox allows you to stream .mp3's and .m4a's from their web interface, which is great, but it also automatically downloads the audio files to each of our computers, which isn't so great.

It did make me wonder whether you could package this sort of service up, particularly if you partnered with a transcription service (a little more on that below) that made all the audio available as text too. I do also wonder, though, if it's slightly unusual for companies to record their meetings, relying instead on someone taking notes.

As well as investigating audio hosting, I've also spent some time looking into transcription services: It's still easier to find something in the transcription of a conversation, than in the audio recording of the same. Given that the only reliable way to have something transcribed is to pay a fair price, I suspect that we'll have to think of alternatives. My guess is that the best thing would be for someone to take notes during the chat (but I personally find it hard to take notes *and* participate) or for someone to go through the audio afterwards and pull out the main points of interest - which isn't an enviable job.

One of the things we talked about on Tuesday, in relation to [Harmonia](https://harmonia.io/) and product development in general, was [Analytics](http://en.wikipedia.org/wiki/Analytics). I have this idea that Analytics software is only so useful at the moment because users of our products don't always realise that they can really influence the product itself. It's my understanding that some of what I mean by that statement is encompassed in the [Vendor Relationship Management](http://en.wikipedia.org/wiki/Vendor_relationship_management) concept - something I've had a passing interest in since reading the [Cluetrain Manifesto](http://www.cluetrain.com/) a few years ago. It's obvious in hindsight but [James A](/james-adam) highlighted that this concept is exactly what they're trying to get across in their organisation of [Ruby Manor](http://rubymanor.org/) - it's up to the conference attendees to shape the conference into something that they really want.

It was good to hear from our [GDS](http://digital.cabinetoffice.gov.uk/) chums at the beginning of the week. They're after some more development work in the near future and asked if we'd be interested. We spent a few hours on Wednesday looking through and discussing what was required, before going back to [Neil](https://twitter.com/neillyneil) with a quote. Nothing's confirmed yet so we just have to wait to see how that goes. One upshot of the discussion was that we learned that it is possible to have a good quality multi-participant [Skype](http://skype.com) chat. All four of us were in different locations yet the quality was great - something we've not been able to manage when using our office Internet connection.

Tom and I met with a chap on Friday who has a business idea that he's looking to develop. After writing up some notes about the meeting, James A commented that he'd also had a similar idea recently and had even chatted to someone internally about it. This raises a question of how we can speak to potential clients/customers without compromising the projects that we might be looking to work on ourselves. Does anyone else worry about this, and if so what do you do about it?

Finally, James M attended the Reducing Technical Debt class on Thursday and Friday. We haven't spoken in depth about how it went but James did point to this excellent [tweet](https://twitter.com/mfeathers/status/292998788472254464)/[photo](http://i.imgur.com/tWWBWRi.jpg) of his pair, [Nat Pryce](https://twitter.com/natpryce), working on the CVS codebase :-)

And with that, I wish you all a good week.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2013-01-21 17:45:00 +00:00
:updated_at: 2013-01-21 17:45:00 +00:00
:page_title: Week 209
