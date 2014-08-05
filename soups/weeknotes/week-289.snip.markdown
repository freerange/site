Week 289
========

I'm pretty sure this was the first week in a while in which we've both been in the office for very nearly the whole week. It felt as if we were a lot more deliberate in what we were choosing to work on and I found it easier to focus and be productive.

## Getting things done

Over the last few weeks we've been making a concerted effort to improve our team productivity. For example, a couple of weeks ago we introduced a [Harmonia][] task for [triaging Trello cards][]. This has been working well and it feels as if we're much more on top of things.

### Planning

On Monday we tried to sketch out a rough plan for the week. We decided to start by trying to publish the [FreeAgent Transaction Explainer][] Chrome Extension, then move on to having a fresh look at [Project Credit Union][], and finally have a crack at automating the handling of some of our more mundane recurring incoming emails.

We're hoping that by repeating this process every week, and ideally looking a little further ahead, we can gradually get better at being a bit more strategic in what we choose to work on.

### Harmonia tasks

We've got a handful of Trello cards sitting in a stagnant "Later" list with due dates well in the future. One of the outcomes of our Trello triage sessions has been to decide to convert these cards into one-off Harmonia tasks. This will mean that they are no longer so "in our face", but hopefully we'll still be reminded to do them.

### Time tracking

A few months back, I wondered out loud whether it was worth trying to [measure how much time each admin task was taking us][], in the hope that we'd learn something and be able to improve matters. With this in mind, on Monday we decided to have a go at tracking our time for the week.

Although I'm keen to _have_ the data for this, I've always been less keen on actually _collecting_ the data. I've always worried that the time taken to collect the data is an unnecessary distraction. Also it reminds me of the unpleasant experience of filling in time-sheets in previous jobs.

I can't say that recording my time has been a painless process, but what has slightly surprised me is that it has, at least _anectdotally_, helped me focus on one task at a time. Rather than recording my time after the event, I've been trying to decide what to work on next and noting down the time I _started_ the task.

I haven't yet seen what Chris has done, but I'm looking forward to seeing what we can learn both from the experience and from the data.

### Company wiki

We've often talked internally about having some kind of company "manual", but in the past we've struggled to agree on the kinds of things that belong in it. More recently we decided to [move our Harmonia task descriptions into a GitHub wiki][]. We've started to add a few other pages to this wiki documenting various things e.g. what company insurance policies we have and why we have them.

Recording factual information about the company feels uncontroversial and like a natural extension of the Harmonia task descriptions, while the recording of the rationale behind company decisions is perhaps a bit more subjective. However, I'm very comfortable with building a company manual in this organic, bottom-up way.

When we were writing the [day notes][] and [creating the wiki][] for Project Credit Union, we agreed that the former would serve as a record of our _journey_ while the latter would be a _snapshot_ of our current understanding. We still need to do a bit of [wiki gardening][] to achieve this separation on Project Credit Union, but it feels like a useful distinction to make.

I'd like to keep this distinction in mind when I'm writing things up in an email, in a Trello card, or in the week notes, versus recording the current state of play in one of these company wiki pages. We hope to publish the wiki at some point in the not too distant future.

## FreeAgent automation

We managed to [publish the Chrome Extension in the Chrome Web Store][] by first thing Wednesday morning. Chris noticed that FreeAgent have plans to revamp the transaction explanation process, so this extension may become redundant.

Even if this does happen, it's been a useful exercise in [codify-ing the rules][] we use to explain our bank transaction, learning about [Chrome Extensions][], building a (small) product of our own, and [writing about it][].

## Project Credit Union

Work on the project has been somewhat scuppered by the slow response from [ABCUL][]. We [applied to become a credit union study group][] nearly a month ago, mainly in order to find out more about the [CUEP][]. Chris [chased up our application][] a couple of weeks back and we have now received a receipt for our £50 application fee, but nothing more :-(

## Automating email handling

For some time we've thought that a significant proportion of our emails could be "handled" automatically, particularly those emails that are themselves generated automatically.

### VAT return notifications

The first example that we considered was a VAT Return notification that HMRC send us at the end of a VAT Return period.

We both find this email confusing/distracting, because at the point the email is sent we still have loads of time left to file our VAT Return. Also we have a Harmonia task setup based on our [FreeAgent Tax Timeline iCal feed][] which is more closely linked to the actual _due_ date.

### Invoices and receipts

However, we decided that this case was a bit of an outlier and that we would get more value by considering emails for invoices and receipts for services which are billed monthly e.g. [GitHub][], [Campfire][], [Linode][], etc. Currently we mostly ignore these emails and separately download the documents from the services' websites when we explain our bank transaction in FreeAgent.

Initially we were thinking that some kind of email handler could catch these emails and automatically save the documents in our shared [Dropbox][] folder, but then we realised some of the emails don't contain the document or data that we're interested in. So then we started thinking that maybe the most valuable thing would be to write a [scraper script][] that would periodically download the documents from the relevant websites.

### Scraper script

However, then we realised that ideally we'd want to run this script as some kind of cron job on a remote machine and this machine would need to have access to the credentials for all of the services we're interested in. This seemed like a bit of a security risk, so we decided to that we'd write a scraper script that ran on our local machines which already have access to the credentials in question.

We've got as far as writing scripts for Campfire and then GitHub, but since we want to use two-factor authentication on our GitHub accounts it became obvious that the script couldn't be fully automated. 

So as you can see we've jumped about a bit in trying to solve this problem - in fact part of the issue has been that we're not sure what problem we're trying to solve! Anyway, we've decided to take a bit of a step back from it for now - we'll let you know if we get any further.

## In other news

### Book club

Monday saw the 11th installment of the [Little Schemer Book Club][] at GFRHQ. For the moment we've stopped trying to TDD our interpreter and have become more of a traditional book club. To this end, we managed to work our way all the way through chapter 8, entitled "Lambda the Ultimate", before adjourning to the pub.

The meeting was clearly thought-provoking for at least one of our number, because [James Coglan][] wrote up some [detailed notes][] on his thoughts about the "tenth commandment" described in the book. I certainly came away with a better understanding of [currying][], although when I tried to explain it to Chris, I realised that I definitely need to do [the homework we've set ourselves][].

### Visitors

[Tom Close][], organiser of [OXRUG][], dropped by on Thursday afternoon en route to a [Many-to-Many][] event. I popped out for a quick beer with Tom and his friend, [Peter Inglesby][], who was due to speak at the event.

It was good to catch up with Tom and hear how he's been getting on working remotely for [Zesty][], a silicon valley start-up. And it turned out Peter works at [OpenCorporates][] which was co-founded by Rob McKinnon who we know as a long-time attendee of [LRUG][].

Anyway, that's it for now.

-- James

[Harmonia]: https://harmonia.io
[triaging Trello cards]: /week-287#trello
[FreeAgent Transaction Explainer]: https://github.com/freerange/freeagent_transaction_explainer
[day notes]: https://github.com/freerange/bank/wiki#progress
[creating the wiki]: https://github.com/freerange/bank/wiki
[wiki gardening]: https://www.socialtext.net/exchange/gardening
[publish the Chrome Extension in the Chrome Web Store]: https://chrome.google.com/webstore/detail/freeagent-transaction-exp/lgpgdkoopbcppnipcnbodcobjmhagmim?hl=en&gl=GB
[codify-ing the rules]: https://github.com/freerange/freeagent_transaction_explainer/blob/master/rules.json
[Chrome Extensions]: https://developer.chrome.com/extensions
[writing about it]: /chrome-extension-for-explaining-bank-transactions-in-freeagent
[Project Credit Union]: /credit-union
[ABCUL]: http://www.abcul.org/
[applied to become a credit union study group]: /project-credit-union-day-8#study-group-application
[CUEP]: https://github.com/freerange/bank/wiki/Credit-Union-Expansion-Project
[chased up our application]: /week-288#project-credit-union
[FreeAgent Tax Timeline iCal feed]: http://www.freeagent.com/support/kb/tax/tax-timeline-feed
[GitHub]: https://github.com/
[Campfire]: https://campfirenow.com/
[Linode]: https://www.linode.com/
[Dropbox]: https://dropbox.com/
[scraper script]: http://en.wikipedia.org/wiki/Web_scraping
[measure how much time each admin task was taking us]: /week-274#company-admin
[move our Harmonia task descriptions into a GitHub wiki]: /week-274#company-admin
[Little Schemer Book Club]: http://lanyrd.com/series/little-schemer-book-club/
[James Coglan]: http://jcoglan.com/
[detailed notes]: https://gist.github.com/jcoglan/cc12bd0f0c077c487c04
[currying]: http://en.wikipedia.org/wiki/Currying
[the homework we've set ourselves]: https://groups.google.com/d/msg/computationbook/XJ0q0GWaYNw/BW8Ne6DdfO4J
[Tom Close]: https://www.linkedin.com/in/tomclose
[OXRUG]: http://oxrug.org
[Many-to-Many]: http://www.manytomany.co.uk/
[Peter Inglesby]: https://twitter.com/inglesp
[Zesty]: http://www.zesty.com/
[OpenCorporates]: https://opencorporates.com/
[LRUG]: http://lrug.org

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-08-05 12:45:00 +01:00
:updated_at: 2014-08-05 12:45:00 +01:00
:page_title: Week 289
