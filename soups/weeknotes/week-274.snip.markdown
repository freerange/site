Week 274
========

I began the week with a trip to the monthly [London Ruby User Group][LRUG] (LRUG) meet-up where there were talks on [Adventures in early-adoption of open-source code][] and [Aspect-oriented programming in Ruby][].

The first talk described how the [Open Data Institute][ODI] had re-purposed a lot of the [GOV.UK code open-sourced][alphagov] by [GDS][] to build their own site. I'm not sure I'd have taken this approach, but, having worked on some of the GOV.UK code, it was interesting to hear about the challenges involved.

In the second talk, it was useful to learn about the current state of play with [aspect-oriented programming][AOP] in Ruby, but I'm a little sceptical about it's use in a real application. In particular, I'm not keen on the fact that there is no indication at the "join points" that the code is being "advised" by an aspect. This reminds me of the problem of [Rails observers][] which were removed from Rails in v4 i.e. a lack of explicitness[^1] .

I've been attending the LRUG meet-up much more regularly recently and I'm always impressed by the quality of the talks. [Murray][] deserves huge credit for his organisation of the event and it's no accident that the [Skills Matter][] venue is frequently filled to capacity.

## Show and Tell

As you may have noticed from recent week notes, we've had quite a few people popping in to work in our office for the odd day or two. We've really enjoyed having their company and it's been great to see various side projects that people are working on. [A few weeks back][], [Tom Stuart][] suggested that it might be worth hosting an event to encourage more of this informal sharing of ideas and solicitation of friendly feedback.

So on Wednesday evening we invited a few people to visit us at [GFRHQ][] to try the idea out. First of all I talked a bit about where I've got to with my [Method Log][] project and asked whether people thought it was worth pursuing any further. I got some really useful suggestions and I now have a bit more motivation to do some more work on it.

[Chris Lowis][] showed us how he uses [TinyLetter][] for his [Web Audio Weekly][] newsletter and then demonstrated a few interesting [Web Audio][] projects he's built. [Ben Griffiths][] then talked us through how [Makie][] allows people to design a doll and have it 3D printed. It was fascinating to see some of the technology that they're using (e.g. [three.js][], [OpenGL Shading Language][], etc) as well as the novelty of a print queue of 3D doll designs awaiting printing.

As Tom observed, the best bits were the moments when both Chris and Ben had a directory open on their laptop with a list of interesting-sounding projects that have never seen the light of day. I certainly enjoyed the evening and found it useful. I hope that the others felt the same and that we can hold another similar event in the near future.

And please do [get in touch][] if you're interested in being involved.

## Company Admin

There's been a bit of a recurring theme in recent week notes about the amount of time we spend doing company "admin". I don't think this is a particularly new thing, but I think it's been exaggerated of late, partly because (now we are only two) the admin workload has increased and partly because we're working pretty much full-time on a client project again.

We use a combination of [Harmonia][] and [Trello][] to manage internal GFR tasks. We've also recently started [keeping our Harmonia task descriptions in a GitHub wiki][] and we've signed up for the paid version of [Google Apps for Business][]. One of the benefits of the latter is to have permalinks for individual emails.

Anyway, all of that works pretty well and we're pretty good at continually improving the documentation on how to carry out each task and even [building little scripts][] and tools to automate some of the process. However, it still feels as if we could be doing better. I've started wondering whether we can somehow measure how much time each task is taking and thereby do a bit of analysis on our process.

It might be that just a few tasks are taking up a lot of time, in which case we should probably focus on streamlining those tasks as much as possible. But it may be that just the sheer number of little tasks is what's bogging us down, in which case it's not so obvious what we should do.

All this has also made me think again about whether it would be worth hiring a part-time administrator to do a few hours a week; or maybe even using a service like [TaskRabbit][]. In any case, we'd love to hear if anyone has any better ideas for tackling admin tasks in a small company.

## Other News

We're continuing with work on the video project at [FutureLearn][]. Having spent a while trying to understand and quantify the problems, we're now actively embarking on trying out some possible improvements. It certainly feels good now that we're writing production code again rather than mainly documentation and prototypes, although the latter has all been important stuff.

It's interesting to see [Kalv][]'s new venture, [Goodbits][], getting a bit closer to public launch. We've occasionally toyed with the idea of producing a company newsletter of some sort, so it might be nice to try out this service.

Taking full advantage of the Easter bank holidays, [Chris][] headed off on a well-deserved holiday to Portugal on Wednesday - I hope he has a good break.

Anyway, that's about it from me. Enjoy your Easter weekend.

-- James


[LRUG]: http://lrug.org
[Adventures in early-adoption of open-source code]: https://skillsmatter.com/skillscasts/5181-adventures-in-early-adoption-of-open-source-code
[Aspect-oriented programming in Ruby]: https://skillsmatter.com/skillscasts/5199-aspect-oriented-programming-in-ruby
[ODI]: http://theodi.org/
[alphagov]: https://github.com/alphagov
[GDS]: https://gds.blog.gov.uk/
[AOP]: http://en.wikipedia.org/wiki/Aspect-oriented_programming
[Rails observers]: https://github.com/rails/rails-observers
[Murray]: https://twitter.com/hlame
[Skills Matter]: https://skillsmatter.com/

[A few weeks back]: /week-268
[Tom Stuart]: https://twitter.com/tomstuart
[GFRHQ]: http://gofreerange.com/contact
[Method Log]: https://github.com/freerange/method_log
[Chris Lowis]: https://twitter.com/chrislowis
[TinyLetter]: https://tinyletter.com/
[Web Audio Weekly]: https://tinyletter.com/webaudioweekly
[Web Audio]: https://developer.mozilla.org/en-US/docs/Web_Audio_API
[Ben Griffiths]: https://twitter.com/beng
[Makie]: http://makie.me/
[three.js]: http://threejs.org/
[OpenGL Shading Language]: http://en.wikipedia.org/wiki/OpenGL_Shading_Language
[get in touch]: /contact

[Harmonia]: https://harmonia.io
[Trello]: https://trello.com/
[keeping our Harmonia task descriptions in a GitHub wiki]: /week-269#harmonia--github-wiki--version-controlled-task-descriptions
[Google Apps for Business]: http://www.google.com/enterprise/apps/business/
[building little scripts]: automating-some-of-the-freeagent-transaction-explanation-process
[TaskRabbit]: https://www.taskrabbit.co.uk/

[FutureLearn]: https://www.futurelearn.com/
[Chris]: /chris-roos
[Kalv]: https://twitter.com/kalv
[Goodbits]: https://goodbits.io/

[^1]: a.k.a. too much magic

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-04-19 14:45:00 +01:00
:updated_at: 2014-04-19 14:45:00 +01:00
:page_title: Week 274
