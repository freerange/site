Working Remotely
========

There's no point accepting the burden of being your own boss if you don't actually take advantage of the perks. And one of those perks is not being bound to any particular schedule, least of all _nine-to-five_ at the same desk for 48 weeks in the year. For the last month I took advantage by working from two distinct remote locations: Aberdeen[^aberdeen] and Austin[^austin].

Working remotely is a four dimensional problem, so first let's consider the first three: **space**.


[The Northern Lights&hellip;][nothern-lights]
--------------------

Working from Aberdeen is only marginally different from working from home; it's just a question of geography.

<img width="100%" src="http://distilleryimage3.s3.amazonaws.com/d10380ca2a4611e1a87612313804ec91_7.jpg" title="Warm greetings from Aberdeen" />

In case you've never had the pleasure of doing so, allow me to outline the principle benefits of working out of the office:

- If you're not being productive, you can take a break and do something different.
- If you *are* being productive, there are (probably) less people around to disrupt your flow.
- If you get hungry you can fetch a snack with your entire kitchen at your disposal.
- You can work in your underwear. Lying to you about this is not doing you any favours anymore.

Some of those benefits are the [yin to their own yang][yinyang]. Because it's easy to take a break when you're not being productive, it's easy to use that as an excuse to avoid even trying to be productive. The same goes for the kitchen (and it's worse with all the delicious food that's around over Christmas!).

But the biggest problem of all is that _communication_ gets harder. _Much_ harder.

### Ill Communication

We use a group chat tool, and are signed into it almost all the time, but it doesn't work passively. Even with the most diligent colleagues in the world, they aren't sitting awaiting your next dispatch, and it's not surprising that sometimes a question goes for five or ten minutes without answer.

What compounds this is that *you* don't know if they really are busy, or if they're discussing your question in, y'know, the "real" world, or if they've read it and are just ignoring it. Working remotely is not for the paranoid.

You also miss out on any of the spontaneous conversations that might happen in the "real" world[^meatspace], which may or may not get summarised over email or chat. If pair programming is an intense tool for spreading knowledge about software, spontaneous conversations are transient ultra-pairing that spreads knowledge about the company.


### Not even a new problem

[James M][] already knows all about this; not living in London, he's worked remotely on a reasonably regular basis for years now.

<img width="100%" src="http://gofreerange.com/images/blog/skype.png" title="Keep talking" />

I'm sure that pair programming (among other things) helps the remote worker feel a bit more connected to the rest of the company, but it's not a rich conduit for all the other communication that might be going on, from ambient glances[^glancing] to actual in-depth discussions.

We've experimented with a few tools to ameliorate this issue, including having a constant Skype connection open, but nothing has really stuck. At the moment, we have a camera in the office[^camera] which allows the remote _Free Ranger_[^nickname] to at least see if there's anyone in the office to get hold off, and limited ability to overhear what they might be talking about, but it's still very much one-way. If you want get someone's attention, you're relying on their periodic attention to the group chat. It's not great and I'm really interested in what we can do to improve this.


### What do to about it?

Perhaps this is simply [the Law of the Instrument][hammer] in operation, but I feel like there's a reasonably lightweight software solution to this, potentially augmented by a bit of hardware for serious attention grabbing. My colleagues will not be surprised to hear that I think it would be quite simple to build this using _Project Codename: PissWhistle_[^pisswhistle]. Perhaps we'll find out in the next few months.


What remains is the fourth dimension: **time**.


[The Stars At Night, Are Big And Bright&hellip;][deep-in-the-heart-of-texas]
----------

Working from Austin is not like working from Aberdeen, because now we have the smug whimsy of _The Sun And Its Incessant Rotation Around The Earth_ to reckon with. No matter how long you spend shaking your skinny fist at that irrepressible ball of fire, it's not going to rise in Austin at the same time as it does in London.

When I'm in Austin, I start work just as you are wiping the afternoon tea's clotted cream from your chin. I've just finished breakfast and you're already thinking about dinner. I'm getting up to speed with the day's work while you are winding down, day-dreaming about a tepid, nut-brown ale&hellip; You get the idea.

In many ways this situation is similar to remote working from the same timezone, with each challenge only slightly magnified. Communication is harder because now it's _actually very likely_ that nobody is around. The temptation to slack off is easier to indulge because, similarly, there's nobody even in the group chat to notice that you're not working. The kitchen is even more tempting because the food in Austin is _freaking delicious_!

<img width="100%" src="http://distilleryimage5.s3.amazonaws.com/dd722664399011e19e4a12313813ffc0_7.jpg" title="A January stroll in Summer clothing" />

And it was 23&deg; in January. At the _start_ of January. Try sitting in front of a laptop while that meteorological paradox plays out on your outside deck.


### Qualitative shift

However, it's possible the exacerbation of those conditions is actually useful, because it prompts a qualitative shift in the interaction. Rather than wondering why nobody is replying to a question, I don't go to that tool as often, but use email instead, anticipating a response the next morning[^email].

During the couple of hours which did overlap, I _think_ I made better use of; for example, focussing on emails whose responses required input from other people, or discussing higher-level aspects of our projects and leads. It's also possible that the people in London also shifted their behaviour slightly and were, perhaps, more responsive during that window of overlap than they might otherwise have been. I'm curious if this was real, or just my perception.

### [Stop&hellip; Hypothesis time][hammer-break]

I have a hypothesis (well, many, but here's one) about one aspect of how our group dynamic operates, and I think it's relevant here.

Because nobody is "in charge", and because we all directly involved in building the software our clients pay for, it's normal that everyone is working away quietly to develop some feature or other. After all, that's what we are being paid to do, and that's more or less where our passion lies. We didn't get into this to manage projects or juggle cash-flows, after all.

But as you pause, having completed a piece of work or other, the perception that others are still working makes _you_ feel like what you ought to do is pick up the next feature and get to work on it. After all, our principle goal is to build this system, and so manifesting that in a text editor is the most appropriate use of time. 

<img width="100%" src="http://distillery.s3.amazonaws.com/media/2011/01/06/e4a43e38297641a885d835929a0db26f_7.jpg" title="Working hard." />

I believe there are two assumed principles in operation here:

1. _Everyone else is busy, so I should be busy too._
2. _Emitting software artefacts is the most important thing to be doing._

These form a subtle feedback loop of sorts, which conspire against doing anything that isn't a part of the flow of building software. This includes the obviously uninteresting chores like invoicing, VAT returns, and so on, but also impacts dealing with clients and leads, and making decisions about the company in general. I find this interesting enough to want to leave exploring it for another occasion[^maybe-only-me], but I bring it up now because I suspect something similar operates when people are working remotely.

I believe that there is an implicit assumption that _if I'm OK, You're OK_, and that if _I_ and working away without any worries in the office, then _you_ are probably happily working away wherever you are too.

There's no way text-based chat allows us to pick on the concerned expression which would otherwise prompt stepping away from the coalface. It's just not a very rich communication channel.

### Anyway

These are just a few thoughts that I've been bouncing around. As I've said before, remote working is always going to be a part of the way we work here at [Giant Frock Romp](/), so it's always going to be worthwhile exploring how it works and how we might improve it.

I'm back again on Friday with the weeknotes, so I'll leave this there for now.

Adieu, blogfolk!

-- James


[^aberdeen]: Familial home; see {l week-153}
[^austin]: Current location of my other half; see {l week-154}
[^meatspace]: Every time I type this, reader, I'm resisting the urge to type "meatspace". I just want you to know that.
[^glancing]: I'm always reminded of the [Glances application](http://interconnected.org/notes/2003/09/glancing/) that Matt Webb made, but I'm never sure if it would really help. Here's [his presentation about it](http://glancing.interconnected.org/2004/02/etcon/) in case that gives more context.
[^camera]: It's a [Y-cam White S](http://www.y-cam.com/y-cam-white-s/) which streams audio as well as video. The quality of either is... passable.
[^pisswhistle]: I'm sorry about the name, but in my defence, I am unable to help myself and cannot be held responsible for my own behaviour in the case of software naming.
[^nickname]: This term is not in vogue, and I cannot be held responsible for the consequences of using it.
[^email]: &hellip; along with around sixty other emails. I think it's fair to say that [gov.uk](/government-single-domain) are <u>a</u>ll <u>b</u>ig <u>users</u> of email. <u>Ahem</u>.
[^maybe-only-me]: &hellip; and it's possible that I'm the only one who does, and that anything which distracts from programming really is less important. But my intuition is that understanding and working to resolve these things will be tangible help when trying to build a solid foundation for the kind of company that we're trying to run.

[yinyang]: http://en.wikipedia.org/wiki/Yin_and_yang
[James M]: /james-mead
[hammer]: http://en.wikipedia.org/wiki/Law_of_the_instrument
[nothern-lights]: http://www.youtube.com/watch?v=-SNODgG0Fd4
[deep-in-the-heart-of-texas]: http://www.youtube.com/watch?v=iaAFxcP6vbY
[hammer-break]: http://youtu.be/otCpCn0l4Wo?t=2m8s

:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-adam
:created_at: 2012-01-25 00:05:00 +00:00
:updated_at: 2012-01-25 00:05:00 +00:00
:page_title: Working Remotely