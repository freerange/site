Week 174
=========

It's me again; [Harmonia][] has given me a streak of week notes to write, but I don't mind. How could I say no to her, the software that [we](/) grew from such a humble (random) seed? Ho-ho.

Onwards.


Back to the grindstone
-------------

This was our final week before picking up the second phase of our work on [Inside Government][] with [GDS][]. it's going to be nice to see our friends in Holborn again, but I would be lying if I said I wasn't going to miss the freedom we've had over the past few months.

We are going to be more vigilant about ensuring that client work doesn't cause us to lose sight our longer-term company goals, or prevent us from working towards them. Speaking of which, perhaps we ought to outline what our company goals are? Maybe. I'll leave that for another of my colleagues to explain. Be sure to nag them until they do!


Sauron
-------

I wasn't sure if we'd continue to work on [Sauron][] this week, but after a chat on Monday morning, we decided to continue focussing on it.  Are almost at the point where conversations across the whole company are viewable and searchable, which is probably the minimal viable product that we can use to evaluate whether or not it's actually a useful tool. I'm looking forward to finally getting there.


Miscellany
------

{l chris-roos,Chris} and {l james-mead,James M} performed a bit of server cleanup this week, including moving the last of our projects from our own [Jenkins][]-based CI to [Travis CI][], to which [we also donated][travis-donate] in the hope that it gets them closer to a commercial, supported product that we can use with our clients as well as our open source work. Jenkins is a fine bit of software, and definitely one of the more stable CI tools we've tried; it's just more convenient to have someone else responsible for it.

Chris also took the opportunity to rewrite [a little helper tool][freeagent-vat] which checks our FreeAgent accounts for any transactions which might have accidentally been explained with VAT.

{l tom-ward,Tom} has been continuing to tinker with [Clojure][], and has embarked on [implementing the Mustache templating language][tom-mustache], helped by [the language-agnostic specs][mustache-specs].

{l james-adam,I} have done a bit more work on the [Printer][] [backend software][printer-backend], implementing the first steps towards [a print archive][]. The server rebuild highlighted [a known issue with the Arduino software][printer-status-code-issue], which I'm very keen to resolve soon. We've also noticed that the printer [doesn't cope well with dark images][printer-dark-image-issue], and so I've been thinking about various ways to address that too.

Thats about it really; no deep thoughts this week, as I managed to drop a [Bertrand Russell quote][] onto Facebook yesterday, and that's about as much philosophy as the Internet can handle at the moment.

Sincerely,

-- James A.

[Sauron]: http://github.com/freerange/sauron
[Harmonia]: http://github.com/freerange/harmonia
[Inside Government]: /inside-government
[GDS]: http://digital.cabinetoffice.gov.uk
[Jenkins]: http://jenkins-ci.org
[Travis CI]: http://travis-ci.org
[travis-donate]: http://love.travis-ci.org 
[freeagent-vat]: https://github.com/freerange/free_agent_sanity_check
[Clojure]: http://clojure.org/
[tom-mustache]: https://github.com/tomafro/clostache
[mustache-specs]: https://github.com/mustache/spec
[Printer]: /printer
[printer-backend]: http://github.com/freerange/printer
[a print archive]: https://groups.google.com/d/msg/gfr-printer/XirpZIpye4s/Bf8lf1xa_agJ
[printer-status-code-issue]: https://github.com/freerange/printer/issues/12
[printer-dark-image-issue]: https://github.com/freerange/printer/issues/24
[Bertrand Russell quote]: https://gist.github.com/2759123

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-adam
:created_at: 2012-05-21 11:49:00 +01:00
:updated_at: 2012-05-21 11:49:00 +01:00
:page_title: Week 174