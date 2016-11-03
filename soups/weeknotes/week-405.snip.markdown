Week 405
========

## GFR

### Other projects

We continue to think and talk about what to work on when we're not doing client work.

I think we both have the sense of being busy but not necessarily being productive. It's not clear to me whether this is accurate or not. I wonder whether it's more a case of not having a good measure of our productivity rather than actually not being productive.

We spent some time talking about higher-level goals for the company that we could use to help us make decisions. This is something we've tried in the past but I'm not sure it's ever particularly worked very well.

We consolidated a number of project ideas that we had scattered in various places. We want a single place where we can quickly/easily add new ideas and a place that we can review when we're looking for inspiration for things to work on.

### More client work

We're currently talking to [GDS][gds] about the possibility of working with them again.

### Website

We're continuing to try to improve our website. Both in terms of content (adding information about the projects we've been involved in) and the structure (removing some duplication between the layouts and fix a number of small problems reported by the W3C validator).

### Mocha

We're continuing to work on reducing the number of open pull requests in [Mocha][mocha].

### Trello

We spent a while going through our "Later" list in Trello. We'd always intended to regularly revisit this list but had never quite got round to it; which meant that it became a place where cards went to die. We managed to get through about half the list by agreeing to either delete or prioritise the cards.

We've also started using randomness (`%w(James Chris).shuffle.first`) to assign one of us to the cards that end up in our To Do list. Making someone responsible for the card should hopefully increase the chance of it being worked on!

### Outsourcing admin tasks

We spent nearly an hour going through our regular [Harmonia][harmonia] tasks to understand whether they could be outsourced. I found this really useful. It revealed that quite a lot of the things we do could already be done by someone else. It also made us realise that we should possible be trying to automate them rather than simply paying someone else to do them.

### Copywriting

I asked a friend of mine, [Lisa][lisa-martin], whether they'd be able to help us with copywriting. We're particularly interested in whether someone can take a set of notes (e.g. about the week or from a show and tell) and turn them into a blog post. Lisa's unable to help but it did give us some hope that it might at least be possible.

### Smart Answers

We had an email from someone else that's trying to use [Smart Answers][smart-answers] outside of GDS (the first was from someone in South America a couple of weeks ago). We gave them a couple of pointers and offered to help if they run into more problems. We still care about Smart Answers and hope that encouraging people outside of GDS to use it will help improve it.

### UK Postbox

We continued to update our address with the various services that hold it. We maintain a spreadsheet of people/companies that have our address which makes this process slightly easier. This reminded me of the idea of wanting to own our address data and being able to grant access to other people/companies when they want it.

### Old weeknotes

We're slowly trying to get through our backlog of historical week notes. We wrote weeks 381 and 384 together. I found this much easier and more enjoyable than trying to do it alone.

## Hookline

[James][james-mead] managed to work around the [bug in Chrome that he wrote about in week 368][week-368-chrome-bug]. The problem persisted despite us reducing the size of the artwork (and in theory the size of the ID3 tag). James realised that reducing the size of the image left some padding in the ID3 tag which meant the tag remained the same size. Removing and then replacing the ID3 data results in it being the size we expect. James has updated all tracks so we're now fairly confident that the problem has been dealt with.

Having [Hookline][hookline] use the app in anger has already revealed some problems with their composer data. The problems already existed but using the app has made them more visible. James helped identify and fix these problems.

Until next time, folks.

-- Chris

[gds]: http://digital.cabinetoffice.gov.uk/
[Harmonia]: https://harmonia.io/
[Hookline]: http://hookline.tv/
[james-mead]: /james-mead
[lisa-martin]: https://lisaamartin.wordpress.com/
[mocha]: https://github.com/freerange/mocha
[smart-answers]: https://github.com/alphagov/smart-answers
[week-368-chrome-bug]: /week-368-google-chrome-bug

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
