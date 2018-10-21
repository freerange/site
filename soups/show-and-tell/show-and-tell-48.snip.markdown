Show and Tell 48
================

One night in September, an intrepid group ([Ben G][], [James A][], [Tom S][] and me) gathered in our office deepest darkest in Whitechapel.

## Twilio - James M

### Company voicemail

We managed to do without a company phone number for many years, mainly by using email, Skype, and occasionally giving out individual personal mobile phone numbers. However, the latter is definitely far from ideal and I decided to see whether we could use [Twilio][] to set up a company phone number.

Obtaining a phone number from Twilio is very straightforward and it costs just $1 per month, excluding the cost of making or receiving calls. Having obtained a number, we have to decide how to handle incoming calls. Initially we contemplated randomly putting the call through to one of our mobiles at random, but in the end we decided to handle calls with a simple voicemail service.

To achieve this I constructed a [voicemail Twimlet][] URL and added a web hook handler to our phone number to point at the URL. This way incoming calls are sent straight to voicemail and any messages recorded are emailed to us as an MP3 attachment. The email address we use is one that we *all* monitor and so if an urgent message is received, there's a good chance that one of us will respond.

[Twilio]: https://www.twilio.com
[voicemail Twimlet]: https://www.twilio.com/labs/twimlets/voicemail


### Company conference call

This was a bit more of an experiment. Over the years we've tried quite a few ways to have mulit-way audio/video conferences when some of us were working remotely, but they've never worked very well. So I thought I'd have a go at setting up an audio conference call number using Twilio to see whether that worked any better.

I obtained a second phone number from Twilio and initially I hosted the necessary [TwiML][] handler in a Twilio "bin", but as I added functionality I ended up moving the code over to our [company website][], which is a Rails app.

Most of the relevant code is in the [ConferencesController][] and [its associated view templates][templates-dir]. Any incoming call to the conference call line is routed via a web hook and POSTs to the `ConferencesController#create` action. Since the initial request does not have the `Digits` parameter set, the request is redirected to the `#auth` action and [its associated TwiML template][auth-template] which when rendered prompts the caller to enter a PIN.

Once the caller has entered a PIN, the request is redirected back to the `#create` action with the PIN stored in the `Digits` parameter. The PIN is checked against a value stored in an environment variable and if it's not correct the request is redirected to the `#auth_fail` action and [its associated TwiML template][auth-fail-template] which when rendered informs the caller that the PIN was incorrect and allows them to try again.

If the PIN was correct, then [the TwiML template for the `#create` action][create-template] is rendered which [sets up a conference call][twiml-conference] with some appropriate hold music.

[TwiML]: https://www.twilio.com/docs/voice/twiml
[company website]: /
[ConferencesController]: https://github.com/freerange/site/blob/97def08716be601a2e0b99a8b36a5053f61bba61/app/controllers/twilio/conferences_controller.rb
[templates-dir]: https://github.com/freerange/site/tree/97def08716be601a2e0b99a8b36a5053f61bba61/app/views/twilio/conferences
[auth-template]: https://github.com/freerange/site/blob/97def08716be601a2e0b99a8b36a5053f61bba61/app/views/twilio/conferences/auth.xml.erb
[auth-fail-template]: https://github.com/freerange/site/blob/97def08716be601a2e0b99a8b36a5053f61bba61/app/views/twilio/conferences/auth_fail.xml.erb
[create-template]: https://github.com/freerange/site/blob/97def08716be601a2e0b99a8b36a5053f61bba61/app/views/twilio/conferences/create.xml.erb
[twiml-conference]: https://www.twilio.com/docs/voice/twiml/conference


## Sailing boat catalogue - James M

I was recently looking for a comprehensive list of sailing boat specifications so I could find all the designs with certain characteristics. The most comprehensive dataset I found was on [SailboatData.com][], but the website is pretty clunky and doesn't provide a very sophisticated searching capability.

So I set about [scraping the pages][scrape], [parsing them from the crazily nested HTML tables][parse], and finally [inserting them into a SQLite database][insert]. I then used Simon Willinson's excellent [datasette][] to expose the data as a local website with a powerful search capability.

This gave me exactly what I needed, so I've stopped at that point. However, it is tempting to publish the datasette website so other people can use it. But I'm not sure about the legalities of that nor whether I want to take on the responsibility of keeping the data up-to-date.

[SailboatData.com]: http://sailboatdata.com/
[scrape]: https://github.com/floehopper/yacht-database/blob/108f22d7df155f767d23fda20bd2a257e81ee956/scrape.rb
[parse]: https://github.com/floehopper/yacht-database/blob/108f22d7df155f767d23fda20bd2a257e81ee956/parse.rb#L5-L137
[insert]: https://github.com/floehopper/yacht-database/blob/108f22d7df155f767d23fda20bd2a257e81ee956/parse.rb#L139-L337
[datasette]: https://github.com/simonw/datasette


## Patchbay - James A

* https://github.com/ssbc/patchbay - An alternative Secure Scuttlebutt client interface that is fully compatible with Patchwork

* https://www.scuttlebutt.nz/
* https://github.com/dominictarr/scuttlebutt
* Gossip protocol?
* SSB
* Patchwork, Patchbay, Patchfoo
* https://www.scuttlebutt.nz/faq/basics/patchwork-vs-scuttlebutt.html
* https://github.com/ssbc/patchwork - A decentralized messaging and sharing app built on top of Secure Scuttlebutt (SSB)


## Negative numbers - Tom S



## Show & Tell 49

We'll be hosting our 49th Show & Tell on Wednesday, 17th October. Please [get in touch](/contact) if you'd like to join us.

-- James


[Ben G]: /ben-griffiths
[James A]: http://lazyatom.com/
[Tom S]: http://codon.com/

:name: show-and-tell-48
:updated_at: 2018-10-12 15:32:14.875506000 +01:00
:created_at: 2018-10-12 15:32:14.875504000 +01:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 48
:layout: show-and-tell-layout
:extension: markdown
