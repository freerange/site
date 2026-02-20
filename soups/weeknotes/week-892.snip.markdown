Week 890 to 892
===============

Weeks commencing 2, 9 and 16 Feb 2026.

[James](/james-mead) enjoyed a couple of weeks skiing at the beginning of Feb but was back this week. I had a couple of days off this week to look after my daughter during half term.

## GDS

We continued to focus our efforts on our GOV.UK publishing project with [dxw](https://www.dxw.com/).
We wrapped up our investigation into the [Topic Taxonomy](https://www.gov.uk/government/publications/govuk-topic-taxonomy-principles/govuk-taxonomy-principles) and started exploring the National Applicability of certain types of documents.
We wanted to understand how well an off the shelf LLM (e.g. [GPT-4o mini](https://openai.com/index/gpt-4o-mini-advancing-cost-efficient-intelligence/)) can determine whether a particular document applies to each of the four countries of the United Kingdom.
We took a random sample of documents published after the knowledge cutoff date of the model ([1 Oct 2023 for GPT-4o mini](https://developers.openai.com/api/docs/models/gpt-4o-mini)) and used [Simon Willison's](https://simonwillison.net/) [llm CLI](https://llm.datasette.io/en/stable/) to ask the LLM whether it applied to each country and to give us its reason.
We then compared the answers from the LLM to those provided by the publishers to measure the accuracy and to tweak the prompt.
Once we were happy with the results we took another random sample of documents not in our training set and asked the same question to generate another accuracy.
[Chris](/chris-lowis) did a great job of presenting our findings to the wider team and outlining some possible future things we could do.
One of the key questions we're interested in having answered is whether it'd ever be acceptable to let such a model automatically classify documents or whether we'll always need human intervention to approve anything it might suggest.

We used [Rake's File Tasks](https://ruby.github.io/rake/doc/rakefile_rdoc.html#file-tasks) to generate input, output and summary files given an initial CSV export from the [content-store](https://github.com/alphagov/content-store) database to make the process repeatable should we come back to this work in future.

We did quite a bit of pairing on the work and ended up using Slack for remote screen sharing with audio and video.
Chris has recently switched to Linux and is using Wayland which means our normal goto, [Pop](https://pop.com/), no longer works.
We've used Google Meet with middling success - it's sadly noticably better on Chrome than Firefox but the screen sharing still seems flakey.
We intend to try [Tuple's latest Linux client](https://tuple.app/linux-waitlist/) in future too as this has probably been the best tool we've used in the past.

## Code Club

I've continued to enjoy running [Code Club](https://codeclub.org/en/) at my daughter's school each Tuesday afternoon.
Although it's hard work trying to manage a class of different ages, abilities, interests and attention spans.
I already had a great deal of respect for teachers but this tiny insight into what it must be like just makes me appreciate what they do even more.

I use a Google Form for parents to book their children into the class and was pleasantly surprised when Google [recently updated the functionality so that I can now automatically close the form when it reaches a certain number of responses](https://workspaceupdates.googleblog.com/2026/01/forms-stop-collecting-responses.html): this saves me having to keep an eye on the bookings and to close it manually when I reach the limit.

I've struggled to get some of the children to follow the instructions of the many [projects that the Raspberry Pi Foundation make available](https://projects.raspberrypi.org/en).
I've tried printing the instructions and tried to get them to follow the instructions in a different tab in their browser.
The printouts are better than the browser tabs but some of the children still struggle to follow the instructions when they contain multiple steps over multiple pages.
I'm planning to try printing just the completed program to see whether that's easier to follow.
It also reminds me of typing in a completed program from old school computer magazines in my teens.

## CoTech

Chris spent a day or so making some more improvements to the [CoTech website](https://coops.tech/) ([source](https://git.coop/cotech/website)).

I've just bought tickets for the 3 of us to attend the [CoTech Gathering at Space4 in March](https://www.eventbrite.co.uk/e/cotech-gathering-march-2026-keeping-up-the-momentum-tickets-1981008895935).
I enjoyed the [last one in Oxford back in week 874](https://gofreerange.com/week-874#cotech-gathering) so am hoping for more of the same this time.

## Business development

Our current contract takes us up to the end of March so we've started thinking about what's next.
We've recently been contacted by a few people we've worked with in the past so I'm somewhat hopeful we'll have something to keep us occupied from April.

## Interesting links

[The Agile Manifesto at 25 – The Most Talked-About Unread Document In Software](https://codemanship.wordpress.com/2026/02/11/the-agile-manifesto-at-25-the-most-talked-about-unread-document-in-software/)

> Without development teams with strong technical discipline who are empowered to make decisions, Agile Software Development becomes little more than Agility Theatre. And that’s the reality for the majority of teams today – command-and-control waterfall development wearing an Agile Halloween costume, while the technical capability withers from lack of investment.

[The Cost of Leaving a Software Rewrite “On the Table”](https://blog.planetargon.com/blog/entries/the-cost-of-leaving-a-software-rewrite-on-the-table)

> Once something is treated as provisional, people stop taking full responsibility for it. Not out of apathy. Out of self-preservation. When engineers believe the system is temporary, they invest less in it. They stop fixing small things. They stop deepening their understanding. They stop improving quality-of-life issues that don’t obviously pay off right now.

[Silicon Valley Has Lost Its Moral Compass (with Anil Dash)](https://pca.st/episode/f2d85b49-0d7d-46ef-b029-c1b82a2ebb4b)

Including NYC taxi medallions and how it _used_ to be possible to shame some tech companies into doing the right (or at least the slightly less wrong) thing.
I've only listened to a couple of these episodes but I'm enjoying them so far.

[How Limeleaf Divested from Big Tech and Took Ownership of Our Data](https://limeleaf.coop/blog/how-limeleaf-divested-from-big-tech-and-took-ownership-of-our-data/)

How Limeleaf migrated from Slack, Google and GitHub to alternative services. This is something we've been discussing for a while so it's reassuring to read about other people making the switch.

Until next time.

-- Chris

:name: week-892
:updated_at: 2026-02-20 12:34:19.752343862 +00:00
:created_at: 2026-02-20 12:34:19.752342930 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Weeks 890 to 892
:extension: markdown
