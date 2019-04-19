Show and Tell 54
================

[James][james-mead] and I were joined by [Paul][paul-battley], [Rob C][rob-chatley], [Rob D][rob-dupuis] and [Tom S][tom-stuart] for Show & Tell last night. We held it in a large meeting room in our office building which seemed to work well.

[james-mead]: /james-mead
[paul-battley]: https://po-ru.com/
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://twitter.com/robd
[tom-stuart]: https://twitter.com/tomstuart

## Scaling training courses

Rob C has developed and recently delivered a software development training course to a large organisation. It's a 4 day course and is delivered to about 15 people at a time. The organisation is keen to extend the training to around a thousand of its staff and Rob is wondering how to do it given that it's not practical in its current format: it'd require him to run a course a week for over a year in order to get everyone through! He was interested in whether anyone had any ideas about how he could scale it.

There was some good discussion about various approaches Rob might take; including making it all available online, recording and selling the course lectures along with some support material, training members of the organisation to deliver the course, and employing/training external people to deliver the course. The advantage of the latter is that it'd be possible to use those same people to deliver the course at other organisations. I don't think there was a clear winner but hopefully it all gave Rob something to think about.

As a slight aside, Rob D highlighted that Rob C has somewhat made it his mission to improve the state of software development: through his work teaching software development at Imperial and now through training courses delivered to development teams in large organisations. Good on you, Rob!


## JPEGs and the Discrete Cosine Transform

Tom S demoed software he's written to help visually explain how the [Discrete Cosine Transform][dct] (DCT) is used to compress images in JPEG compression. He's preparing to give a lightning talk at work and was interested in some initial feedback from the group to help shape the talk.

I had no idea how image compression worked and found Tom's illustration and explanation really useful. Tom shows how transforming the image data into another representation allows you to remove the equivalent of a number of pixels from the image, without compromising the quality in the way that simply removing pixels would.

Tom's visualisation software is written in [React][reactjs]. He's used the newer [React Hooks API][react-hooks-api] that allows for a more functional style; which meant that the code remained fairly maintainable despite the complexity.

[dct]: https://en.wikipedia.org/wiki/Discrete_cosine_transform
[reactjs]: https://reactjs.org/
[react-hooks-api]: https://reactjs.org/docs/hooks-reference.html


## Shamisen notation

Paul showed us a library he's written that adds [Shamisen][shamisen] notation to [Lilypond][lilypond]. Frustrated by the hard-to-read handwritten scores often used, and the lack of decent tooling, Paul decided to do something about it :-)

Lilypond's architecture made it relatively easy to implement all the notation required to generate legible scores. Lilypond can also output transcribed music as [MIDI][midi]: a feature that Paul used to to audibly check his transcription of a piece he'd learnt from his teacher.

[Paul explains more in his blog post][poru-shamisen] and also shares some free pieces he's transcribed on his [shamisen.space site][shamisen-space]

[lilypond]: http://lilypond.org/
[midi]: https://en.wikipedia.org/wiki/MIDI
[poru-shamisen]: https://po-ru.com/2019/03/04/shamisen-tablature-with-lilypond
[shamisen-space]: https://shamisen.space/
[shamisen]: https://en.wikipedia.org/wiki/Shamisen


## Blue/green deploys

I was hoping to demonstrate [blue/green deploys][blue-green-deploys] using [Elastic Beanstalk][aws-eb]. We used it on the [Modern Slavery Registry website][msr] and I'd been quite impressed by how it worked. Unfortunately I didn't leave myself enough time to prepare a demo and so we had to settle with a bit abstract chat about it instead.

I'll make more of an effort to actually prepare for demonstrating this next time.

[aws-eb]: https://aws.amazon.com/elasticbeanstalk/
[blue-green-deploys]: https://martinfowler.com/bliki/BlueGreenDeployment.html
[msr]: http://www.modernslaveryregistry.org/


## Platform coops

There seems to be a bit of buzz about [Platform Coops][platform-coop] at the moment. I think I understand the theory (e.g. wouldn't it be great if Uber drivers had some control of the company and a share in the profits) but can't quite see how it works in practice. We've spoken about it a few times internally and wonder whether there's a small service we can build that would allow us to test how such a platform would work in reality. Most recently we've been wondering whether some kind of event site (e.g. something like [upcoming][upcoming]) might be a good candidate. We had a bit of a discussion about the idea but I think it's fair to say there wasn't much enthusiasm for it. We came to the conclusion that it's probably not related closely enough to how an individual earns a living to make them want to get involved in the service over and above using it to list their event. There were some alternative ideas that came out of the discussion that I'm keen to think/talk about further.

[platform-coop]: https://en.wikipedia.org/wiki/Platform_cooperative
[upcoming]: https://upcoming.org/


## Show & Tell 55

We'll host our next Show & Tell on 15th May. [Email us][email-us] if you'd like to be added to the mailing list so that you're notified of [upcoming events][show-and-tell-events].

[email-us]: mailto:lets@gofreerange.com
[show-and-tell-events]: /show-and-tell-events

Until next time.

-- Chris

:name: show-and-tell-54
:updated_at: 2019-04-18 15:08:25.668614000 +01:00
:created_at: 2019-04-18 15:08:25.668604000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 54
:layout: show-and-tell-layout
:extension: markdown
