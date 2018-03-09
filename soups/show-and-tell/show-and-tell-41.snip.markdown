Show and Tell 41
================

JM, Tom S, James A, Chris P, Chris Z, Bash.

## Line-us

Tom S showed us his little Line-us drawing robot. He supported the Kickstarter because one of his friends is involved.

The control app is available on iPad, iPhone and Mac, although the Mac version is somehow the same version as for the phone/tablet and therefore doesn't look great.

Tom was interested in being able to control it programmatically rather than having to use the supplied software.

He used DNS-SD to discover the device. Found it listening on port 1337 :-) Used Wireshark to record traffic to/from the device, having filtered by port 1337.

Noticed that the M114 message was being sent about once per second. Appears to be some kind of heartbeat. After some investigation he discovered that the little robot is speaking G-Code - a/the 3d printer/CNC protocol.

G01 command is the standard draw command.

He's written a multithreaded Ruby client so that he can continue to send the heartbeat (not sure whether this is important) as well as the other commands he needs to actually control the arm.

He demonstrated his software by instructing the robot to draw a Hilbert Curve.

## Multiplayer crosswords

Chris Z explained that he's been doing quite a few crosswords recently. Particularly on the Guardian. He often asks his partner for help with some of the clues and wondered whether it'd be possible to build something to allow them both to play at the same time.

He discovered that the data for the Guardian crosswords (including the answers!) is stored as JSON in the page. The image is created as an SVG and the whole thing is a React component.

Chris found the source in the guardian's frontend repository on github - https://github.com/guardian/frontend. Although the code is available it's not really set-up for external use. Chris extracted the JS and deployed it to Heroku. He's connected the React app to websockets to allow multiple people to use it at the same time. He demonstrated this by having a number of us answering clues at the same time.

Chris has found a few problems with the Guardian implementation and is keen to submit fixes.

He's keen to share it more widely but is wary that he might be violating the Guardian's terms of service.

## Generating random data

I spoke about generating data to help with our asset manager work at GDS. Creating lots of things - want to give them unique names. Sequential numbering becomes a pain to remember so I'm using timestamps. I created a shell script and then an automator action to copy a timestamp to the clipboard. I also want to create new files to use as attachments and so have an automator app to do that too.

## Heylist

Parsing emails? Using a service (Mailgun / Mailchimp) vs doing it himself? Is it a solved problem? If not/why now

TODO: Ask someone what James was talking about - I missed the beginning of the talk.

## Spacemacs

## Karaoke

:name: show-and-tell-41
:updated_at: 2018-03-09 15:20:06.679019000 +00:00
:created_at: 2018-03-09 15:20:06.679017000 +00:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 41
:layout: show-and-tell-layout
:extension: markdown
