Show and Tell 41
================

[James M][james-mead] and I were joined by [Chris P][chris-patuzzo], [Chris Z][chris-zetter], [James A][james-adam], [Tom S][tom-stuart] and first time attendee, [Bash][bash].

[bash]: https://www.howlinbash.com/
[chris-patuzzo]: https://twitter.com/chrispatuzzo
[chris-zetter]: https://chriszetter.com/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[tom-stuart]: http://codon.com/

---

## Line-us

![Tom with a Hilbert Curve](/images/blog/2018-02-23-show-and-tell-41-tom-s-hilbert-curve.jpg)

Tom S showed us his little [Line-us][line-us] drawing robot that he recently received after backing the [product Kickstarter][line-us-kickstarter].

He showed us how to use the Line-us drawing app to control the robot before explaining how he's been reverse engineering it to allow him to control it programmatically.

Tom used [DNS Service Discovery][dns-sd] (DNS-SD) to find the device listening on port 1337 and then used Wireshark to inspect the traffic to and from the robot. Inspecting the traffic revealed some kind of heartbeat message being sent once per second as well as other messages that more obviously control the movement of the robot. At some point Tom realised these commands were all part of [G-code][g-code], although not before he'd spent a while manually working out what they were doing.

Tom's used what he learnt to write a multithreaded Ruby client that allows him to regularly send the heartbeat as well as the other commands he needs to control the arm. He demonstrated this working by instructing the arm to draw a [Hilbert Curve][hilbert-curve].

I'm not sure I can necessarily think of a reason to own a Line-us but I was nevertheless impressed by Tom's reverse engineering skills that allow him to control it programmatically.

[dns-sd]: http://www.dns-sd.org/
[line-us]: http://line-us.com/
[line-us-kickstarter]: https://www.kickstarter.com/projects/line-us/line-us-the-little-robot-drawing-arm
[g-code]: https://en.wikipedia.org/wiki/G-code
[hilbert-curve]: https://en.wikipedia.org/wiki/Hilbert_curve

---

## Multiplayer crosswords

![Chris Z demonstrating his multiplayer crossword](/images/blog/2018-02-23-show-and-tell-41-chris-z-crossword.jpg)

Chris Z explained that he's been doing quite a few crosswords recently. Particularly on the Guardian. He often asks his partner for help with some of the clues and wondered whether it'd be possible to build something to allow them both to play at the same time.

He discovered that the data for the Guardian crosswords (including the answers!) is stored as JSON in the page. The image is created as an SVG and the whole thing is a React component.

Chris found the source in the [Guardian's frontend repository on GitHub][github-guardian-frontend] and managed to get it running on Heroku. He's modified the React app to use websockets to allow multiple people to use it at the same time. He demonstrated this by having a number of us answering clues at the same time.

He's keen to share the project more widely but's concerned that he might be violating the Guardian's terms of service.

[github-guardian-frontend]: https://github.com/guardian/frontend

---

## Generating random data

I spoke about using [Automator][automator] to generate data to help with manual testing during our asset manager work at GDS. I'd often find myself using the admin interface to create objects in the system and wanted a way of generating names for the things I was creating.

I started by sequentially numbering the things I was creating (e.g. "thing-1", "thing-2", "thing-n") but it soon becomes hard to remember which number I was up to. I moved on to using timestamps (e.g. "2018-04-24 113700", "2018-04-24 113730") which were a bit better because I didn't have to remember anything but were still a bit problematic because they're hard to distinguish when you have a number of them.

In the end, I used a combination of a timestamp and a random word from the words file on my Mac. This naming convention has the advantage of conveying when the thing was created and of having a unique name that makes it easy to recognise in the short term.

[automator]: https://support.apple.com/en-gb/guide/automator/welcome/mac

---

## Parsing emails

James A explained the difficulty he's having in trying to reliably parse emails for some mailing list software he's been working on. It might sound as though it should be a solved problem but it seems that even hosted services (e.g. [Mailgun][mailgun] and [Mailchimp][mailchimp]) do it slightly differently and therefore it's not completely obvious that you'd use such a service instead of writing something to parse them.

[mailgun]: https://www.mailgun.com/
[mailchimp]: https://mailchimp.com/

---

## Spacemacs

![James A describing Spacemacs and magit](/images/blog/2018-02-23-show-and-tell-41-james-a-magit.jpg)

James A gave us a bit of an intro to [Spacemacs][spacemacs]. He's switched editors a few times over the years and this is the first time in a while that he's had some enthusiasm for one of them.

James explained that the extensive documentation and easily discoverable commands make it very easy to get started with. And that if you can see the value in Vim but have struggled to use it effectively then you might want to give Spacemacs a try.

He demonstrated the [magit][magit] git package that provides git integration in the editor and briefly showed us his custom command/script that allows him to run `rails test` from within the editor.

[spacemacs]: http://spacemacs.org/
[magit]: https://magit.vc/

---

## Karaoke

![Bash showing his karaoke app](/images/blog/2018-02-23-show-and-tell-41-bash-karaoke.jpg)

Bash showed us the React karaoke app he's building. It's similar in style to early versions of iTunes in that it allows you to filter by Era, Genre, Artist and Song to help find the music you're interested in. I'm not really up on the current state of karaoke but if it's still common practice to flick through a book of hundreds of songs then I can imagine this being much easier to use.

Bash is building the app to help him learn React and to, ultimately, help him get to better karaoke parties :-)

:name: show-and-tell-41
:updated_at: 2018-04-27 17:25:35.250780000 +01:00
:created_at: 2018-04-27 17:25:35.250755000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 41
:layout: show-and-tell-layout
:extension: markdown
