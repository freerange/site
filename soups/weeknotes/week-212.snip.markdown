Week 212
========

This week we have mostly been working on adding internationalisation support to [Inside Government](https://www.gov.uk/government).

## Inside Government

We started out with a bit of a whiteboard session to talk through various options, before splitting up to spike on the different approaches we'd discussed. This was a really useful exercise as it allowed us to rule out some of the less suitable options before going too far in a certain direction.

After exploring the problem by manually implementing our own solutions, we looked for libraries that might do some/most of the work for us. It looked like [Globalize3](https://github.com/svenfuchs/globalize3) offered most of what we were after so [James M](/james-mead) and I spent some time investigating before committing to use it.

We did hit a couple of problems with Globalize3 - it didn't work out of the box with our use of [PaperTrail](https://github.com/airblade/paper_trail) and the [dirty tracking](https://github.com/svenfuchs/globalize3/blob/master/test/globalize3/dirty_tracking_test.rb#L31) doesn't work quite as we'd expect. We solved the first of these problems by removing PaperTrail from the project: we were only making light use of it which made it trivial to replace it with a hand-rolled solution. We worked around the second problem by changing the way in which we determined whether the slug of a document should be updated.

While James M and I were working on adding multi-lingual support to the main documents in our codebase, [Tom](/tom-ward) investigated Right to Left language support and [James A](/james-adam) explored what happened when we rendered text in a language that our [New Transport](http://digital.cabinetoffice.gov.uk/2012/07/05/a-few-notes-on-typography/) typeface didn't support. These were both things that we'd identified as being risky so it was good to get confidence that neither one of them was going to cause too much of a problem.

James A also started the work required to make the templates support multiple languages. The challenging part of this is working out how we're going to make it easy for people to update these translations. James tried [localeapp](http://www.localeapp.com/) which looks great and appeared to do everything we'd need. Unfortunately, for a couple of different reasons, it's not going to be suitable for use by the people doing the translations. James took the problem away and has come up with a little CSV to YAML tool that'll allow the translators to use something like Excel, which we believe they're more comfortable with.

## Stories

[Ross](https://twitter.com/rossferg) came over on Tuesday and we spent a good couple of hours trying to generate the stories to cover the majority of the internationalisation work. Getting the first few stories down was relatively painless but the further into the future we tried to imagine the harder it was to come up with sensible stories. I can see the appeal of having a relatively full set of stories so that you have some idea of the scope of the work, but I think I'm more comfortable concentrating on the stories we know we need right now, and relying on it being easier to come up with additional stories in the next iteration.

## Remote working

James A was working from Aberdeen on Monday and Tuesday and James M was in Oxford on Thursday and Friday. This gave us a good opportunity to test making the remote peeps feel more like they're in the office. One thing that's been working quite well is to have Skype permanently running on an old laptop (thanks, [Kalv](http://gofreerange.com/kalvir-sandhu)) that people out of the office can video call in to. Our shiny new [Snowball microphone](http://bluemic.com/snowball/) makes this work really well and you definitely get much more of a sense of that person being around; certainly much more than you do when relying on [Campfire](http://campfirenow.com/) alone.

James M and I also spent the best part of two days remote pairing. We've used the Mac's iChat/screenshare app in the past but we had problems getting the audio to work when we tried it most recently. Instead, we used [Skype](http://www.skype.com/en/) for audio/video and [Screenhero](http://screenhero.com/) for screen sharing. I think this worked really well: Screen Hero is great and the additional video feed definitely adds something over just having an audio channel. Finally, we tried replacing Skype with [Google Hangouts](https://tools.google.com/dlpage/hangoutplugin) as an experiment to see whether we could use [Chromebooks](http://www.google.co.uk/intl/en/chrome/devices/) to represent the people out of the office. As far as I'm concerned, it worked really well and I'm confident that Chromebooks would suffice.

And with that, I'm going to get back to getting my hands dirty with internationalisation.

I hope you all have the very best of weeks. Until next time. Chris.

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2013-02-11 13:00:00 +00:00
:updated_at: 2013-02-11 13:00:00 +00:00
:page_title: Week 212
