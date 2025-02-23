Show and Tell 38
================

[James][james-mead] and I were joined by [Chris P][chris-patuzzo], [Chris Z][chris-zetter] and [Ben G][ben-griffiths] for our 38th Show & Tell.

[james-mead]: /james-mead
[chris-patuzzo]: http://chris.patuzzo.co.uk/
[chris-zetter]: https://chriszetter.com/
[ben-griffiths]: https://twitter.com/beng

---

## WordPress site hack

I kicked off the evening by talking about my attempts at repairing a hacked WordPress site.

We discovered the hack when we noticed that the site was redirecting to a porn site. We spoke to the website host and they identified a number of suspect .php files that we promptly removed. We thought this was the end of it until we got some reports of it continuing to redirect to other websites. I couldn't immediately replicate the problem and so wondered whether the redirects might've been cached by certain browsers. Further investigation revealed this not to be the case: I was able to replicate the problem by manually setting my user agent. I eventually found the culprit hidden in a number of .htaccess files that had been written to the WordPress installation. These .htaccess files contained redirect rules that only applied when certain conditions were met (including based on the user agent). Removing the suspect .htaccess files appears to fix the problem!

I also investigated some of the rogue php files that had been uploaded. They were obfuscated so I used Ruby to unobfuscate the code to try to understand what was happening. Ben's best guess was that it was used as part of a DDOS attack. The php would make a request to another website with some element of randomness.

Ben mentioned the [DXW Security][dxw-security] site as a good resource for these sort of problems.

[dxw-security]: https://security.dxw.com/

---

## OpenStreetMap

<%= image_tag('blog/2017-11-08-show-and-tell-38-chris-z-openstreetmap.jpg', alt: 'Chris Zetter describing his recent contribution to OpenStreetMap') %>

Chris Z talked us through a recent contribution he made to OpenStreetMap.

He'd noticed a new bridge near King's Cross - Somers Town Bridge - and thought it was a good opportunity to add it to the map. Adding the bridge itself was relatively straightforward but he ran into problems when he tried to add the various access restrictions that applied to the bridge (e.g. opening times and the fact that it was privately owned but included public access). He wanted to get this right as he didn't want someone to attempt to use the bridge when it was closed overnight. Having wrapped his head around the various rules he needed to add he eventually realised that there wasn't any routing software that made use of them anyway!

---

## Kindle reading history

<%= image_tag('blog/2017-11-08-show-and-tell-38-ben-g-kindle-library.jpg', alt: 'Ben demonstrating how to extract data from the Kindle Cloud Reader') %>

Ben's son reads lots of books on his Kindle and Ben wanted some way of visualising them. He set about investigating how to scrape the Kindle Cloud Reader to get the data about the books in his son's library. This turned out to be unnecessary because the Kindle Cloud Reader stores its data in a SQL database stored in the browser. This meant that extracting the data was as easy as using Safari's "copy table" functionality to generate a tab-separated file.

The next step is to try to find pictures of the spines of books. A number of places have pictures of the front and back covers but none seem to have the spines.

Although the database contains details of all books in the library, it only seems to include reading data (e.g. the page you're up to) for the books you've read in the Kindle Cloud reader.

I've often wanted a way to visualise my reading history so I'm interested to see whether Ben makes any progress with this.

---

## The tuzz automation tool

<%= image_tag('blog/2017-11-08-show-and-tell-38-chris-p-zz-automation.jpg', alt: 'Chris P updating us on his zz automation tool') %>

Chris P gave us a bit of an update on his [tuzz automation tool][tuzz-zz] he [demoed at Show and Tell 36][tuzz-show-and-tell-36]. He's continuing to work on the tool and is using it to provision his laptop(s).

Chris also highlighted the similarities with his [fortress project][tuzz-fortress] that he uses to provision his Raspberry Pi.

[tuzz-fortress]: https://github.com/tuzz/fortress
[tuzz-show-and-tell-36]: show-and-tell-36#machine-automation
[tuzz-zz]: https://github.com/tuzz/zz

---

## Magic eye

<%= image_tag('blog/2017-11-08-show-and-tell-38-chris-p-magic-eye.jpg', alt: 'Chris P explaining his magic eye solving software') %>

Chris P showed us some [Magic Eye][tuzz-magic-eye] (autosterogram images) solving software that he'd written a few years ago.

I understand that Chris is interested in rewriting the software to make use of some newer techniques that he's learned. This generated some discussion about transforming problems from one domain to another in order to more easily solve them although I'm afraid it all went somewhat over my head.

[tuzz-magic-eye]: https://github.com/tuzz/magic_eye

---

## Hough Transform

<%= image_tag('blog/2017-11-08-show-and-tell-38-ben-g-hough-transform.jpg', alt: 'Ben G explaining the Hough transform') %>

Chris's Magic Eye demo and discussion reminded Ben of his [Hough Transform blog post][beng-hough-transform-blog-post] work that [he explained in Show & Tell 27][beng-show-and-tell-27]. As above I'm afraid this also went over my head so I suggest reading Ben's blog post if you're interested in learning more.

[beng-hough-transform-blog-post]: https://techbelly.github.io/writing/Hough-Transform/
[beng-show-and-tell-27]: /show-and-tell-27#ben-g---blog-posts-and-distractions

:name: show-and-tell-38
:updated_at: 2018-05-01 09:07:18.262607000 +01:00
:created_at: 2018-05-01 09:07:18.262589000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 38
:layout: show-and-tell-layout
:extension: markdown
:erb: true
