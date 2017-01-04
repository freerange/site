Week 413
========

This week we worked almost entirely remotely, except on Wednesday afternoon we met up and worked at the [TOG office on Rivington Street][tog-rivington] before heading on the [Show & Tell event][show-and-tell-27] in the evening.

## Fun times

On Tuesday and Wednesday we allowed ourselves the luxury of working on some fun projects. Chris worked on implementing one-time passwords in Ruby using [the specification][hotp-rfc] in order to understand how it works. This seemed to go pretty well and Chris demonstrated his work at the [Show & Tell event][show-and-tell-27] on Wednesday.

I continued work on the auto-sensing chessboard project. Having de-soldered a ribbon cable from the circuit board on which the reed switches are mounted, space constraints forced me to cut a hole in the plastic top of the chessboard in order to mount an IDC socket. Without the appropriate tools, cutting this hole was taking ages. So I popped out to buy a coping saw which made the job a lot easier.

The next job was to solder the header pins onto the [Teensy++ 2.0][teensy-plus-plus-2.0]. The pins are very small and my soldering skills are very rusty, so I found this a very fiddly task. I found myself wishing I'd spent the extra $3 to have the header pins pre-mounted.

## Show & Tell

We held our [27th Show & Tell event][show-and-tell-27] in the (now regular) meeting room at Forge & Co on Shoreditch High Street.

In preparation for this Chris had a play with the Mac Automator app and the `say` command to remind people when they've used up their allocated slot. I think this worked quite well.

## Co-operative Technologists

A fledgling website for the group has been created using Wordpress - kudos to members of [Outlandish][], [Glowbox Designs][] and [Webarchitects][] for making this happen. We activated our account and made a start on filling in our company details.

We also voted on a couple of proposals put forward in the [Loomio group][cotech-loomio]. These weren't of much significance in themselves, but it was interesting to see how the voting system worked.

Having bought tickets to the [Open 2017: Platform Cooperatives conference][open-2017] last week, we joined the thread about holding a meet up with fellow Co-operative Technologists on one of the evenings of the conference.

## Automation

This year we've increasingly been tracking our time using FreeAgent time slips in order to better understand where all our time goes. A while ago we instituted a monthly Harmonia task to generate a report to give us some visibility of this. However, the task was pretty manual and is a bit limiting in what questions we can ask.

It was my turn to generate this report and I decided to spend some time investigating automating the task. The result was a [Ruby script using the FreeAgent API][freeagent-scripts]. My hope is that this will give us the flexibility to ask more interesting questions about how we spend out time.

## Remote working

As I mentioned at the beginning of these notes, we spent much of the week working remotely. We've struggled a bit to get decent VOIP chats working - often they start OK, but then the quality gradually deteriorates. However, there are so many variables, it's hard to attribute the problems to any one thing.

The things we've tried that _seem_ to have improved the situation are:

* using Skype instead of Google Hangouts
* me using a wired rather than wireless connection at home
* both of us using dedicated microphones/headphones instead of the built-in ones

## Company day out

A little while ago we decided it would be good to arrange a company day out every now and again. The idea is to get away from the day-to-day stuff and do something fun, hopefully giving ourselves the space to do some more big-picture thinking about the company.

We had a first attempt at this last week when I went over to Hampton Court to meet up with Chris and visit his houseboat. We plan to try to do something like this quarterly from now on.

## Miscellaneous

* We agreed a day rate with the GDS Contracting team and they passed us on to the Capita CL1 team. We both always find the day rate "dance" a difficult process, but on this occasion I think we managed to arrive at a sensible conclusion without too much stress or hassle.
* We had an email discussion with James A about some minor issues we're having with the Harmonia fairness algorithm.
* The application process for version 2 of the Digital Outcomes and Specialists framework closed - Chris had finalised our application last week.
* We cancelled the monthly drinks for December, because (as usual) the date falls between Xmas and New Year.

Until next time.

-- James

[show-and-tell-27]: http://gofreerange.dev/show-and-tell-27
[Open 2017: Platform Cooperatives](https://2017.open.coop/)
[hotp-rfc]: https://tools.ietf.org/html/rfc4226
[teensy-plus-plus-2]: https://www.pjrc.com/store/teensypp.html
[Outlandish]: http://outlandish.com/
[Glowbox Designs]: http://www.glowboxdesign.co.uk/
[Webarchitects]: https://www.webarchitects.coop/
[cotech-loomio]: https://www.loomio.org/g/oVwtKDOn/digital-co-ops
[open-2017]: https://2017.open.coop/
[tog-rivington]: http://www.theofficegroup.co.uk/office/81-rivington-street/
[freeagent-scripts]: https://github.com/freerange/freeagent-scripts

:name: week-413
:updated_at: 2016-12-21 15:21:49.377842000 +00:00
:created_at: 2016-12-21 15:21:49.377821000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 413
:extension: markdown
