Week 405
========

## GFR

### Other projects

We continue to think and talk about what to work on when we're not being paid.

I think we both have the feeling of being busy but not necessarily being able to point out what we've been busy with. This might be related to the way that we use Trello to break down and prioritise work. We've got a number of "projects" that we're working on

I wonder whether it'd be useful to give names to the things we do that span multiple weeks. We've got a number of higher level projects on the go:

* Improve our website
* Make more company information public
* Outsource/automate more mechanical admin tasks
* Get on top of Trello
* Blog more
* Using IFTTT or similar to automate more of our processes
* Mocha
* Hookline

Giving these things names and allowing us to record progress against them might help us look back on this time with a sense of achievement.

Or maybe we're trying to do too many things and we should simply reduce this list?

* Want to look back on this time and think that we've achieved something.
* Lots of little actionable tasks are added to Trello. Does this prevent us from working on some larger, more ambiguous, more fun things?
* Could we schedule blocks of time for working on non-admin things? Not everything in Trello is an admin task, though.
* Maybe there's a way to reframe the tasks so that they're more enjoyable - give more sense of progress?
* Lunch at pieminster. Chat about higher level aims and goals. Agreed to a weekly planning meeting to agree what we're going to work on. Otherwise we can end up working on things that we think are useful. That work might come from a good place but might not fit with higher level goals. Reminded us that we've tried to come up with higher level company goals in the past. Is it really useful? I don't know.
* Went through some of our project ideas this afternoon. Hopefully we'll make this a more regular task.

### More client work

We're currently talking to GDS about the possibility of working with them again.

### Website

We're continuing to try to improve our website. Both in terms of content (add information about the projects we've been involved in) and the structure (remove some duplication between the layouts and fix a number of small problems reported by the W3C validator).

### Mocha

We're working on reducing the number of open pull requests on the project.

### Trello

We spent a while going through our "Later" list in Trello. We'd always intended to regularly revisit this list but had never quite got round to it; which meant that it became a place where cards went to die. We managed to get through about half the list by agreeing to either delete or prioritise the cards.

We've also started using randomness (`%w(James Chris).shuffle.first`) to assign one of us to the cards that end up in our To Do list. Making someone responsible for the card should hopefully increase the chance of it being worked on!

### Outsourcing admin tasks

We spent nearly an hour going through our regular Harmonia tasks to understand whether they could be outsourced. This was useful exercise. Made me realise that there were good candidates. Although, it also made me think that we could potentially automate some of the things we do. This became more obvious when trying to think about how someone else might complete the tasks. The problem with automating trivial tasks is that we run the risk of ultimately making things more complicated.

### Copy-writing

I asked a friend of mine whether they'd be able to help us with copy-writing. We're particularly interested in whether someone can take a set of notes (e.g. about the week or from a show and tell) and turn them into a blog post. Lisa said she wouldn't be able to help due to lack of domain knowledge but that gives us some hope that it'd be possible to find someone to help.

### Smart Answers

We had an email from someone that's trying to use Smart Answers outside of GDS. We gave them a couple of pointers. We know the software's not great but my hope would be that having people outside of GDS use it will help make it more general.

### UK Post Box

We continued to update our address with the various services that hold it. We maintain a spreadsheet of people/companies that have our address which makes this process slightly easier. Not as easy as if we owned our address and people made requests for it as/when they required it.

### Old weeknotes

We're slowly trying to get through our backlog of historical week notes. We wrote weeks 381 and 384 together. I found this much easier, and more enjoyable, than trying to do it alone.

## Hookline

James managed to get to work around the bug in Chrome (TODO: Link to bug) that prevent certain MP3s from playing. The bug is related to the size of the ID3 data. The problem remained even after reducing the size of the artwork image. James realised that although the image had been reduced, the ID3 data remained at the same size due to some padding. He stripped the excess padding and the track then played. He then did this for all tracks so we should hopefully be free from the problem for now.

https://github.com/amyeee/music-library/commit/6e2920fde9fe4e78ce4798b64045d1908749c3bd
* helped fix a number of instances of incorrect composer data

Until next time, folks.

-- Chris

:name: week-405
:updated_at: 2016-10-18 10:45:48.474297000 +01:00
:created_at: 2016-10-18 10:45:48.474283000 +01:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 405
:extension: markdown
