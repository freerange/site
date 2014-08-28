Project Credit Union - Update
=============================

It's been a while since we wrote about our adventures in the financial world, so we thought we'd give you a bit of an update on where we've got to. As you may have seen from our week notes, we haven't spent a _lot_ of time working on it since [Project Credit Union - Day 11][], but we have continued to pursue it albeit on more of a part-time basis.


## Original goals

Although much of our focus has been on how to [setup a credit union][Credit Union], it's worth re-iterating what we [originally set out to achieve][Manifesto] - the main thing we wanted to do was to improve people's online banking experience and we thought that setting up a credit union _might_ be a relatively quick way to get permission from the Queen to offer current accounts to punters.

The fact that credit unions operate as co-operatives and that they're typically fairly democratic and transparent institutions also appealled to us, but we've always recognised that this aspect of credit unions is somewhat orthogonal to our central aim.


## Recent work

### Credit union

Anyway the "big news" is that we've decided that we're *not* going to go any further with setting up a credit union, at least not in the near future. The main reason is that we've become more and more convinced that it really would take at least a couple of years to get a credit union off the ground, even if we had a very simple business model. We're only a small company with limited resources and so we can't really justify the amount of time and money that would be required.

We're also more convinced that even if we did start a credit union, it wouldn't actually give us what we want i.e. proper _current accounts_ with their own unique BACS-style sort-code and account number. Although the [Credit Union Expansion Programme][CUEP] _may_ make something like this possible, it's very unclear what will be possible and when it might be available.

It's become apparent that the _standard_ business model for a credit union is to cover costs by lending money and charging interest. This is something we'd hoped to avoid getting into and, although there doesn't seem to be anything stopping us from setting up a credit union with a different business model, we worry that we'd be fighting an uphill battle with the [FCA][] et al and it would make any timescales involved even longer.

Despite all of these negative points, it would've been nice to create a credit union purely because the democratic, transparent and cooperative nature of them seems to closely match the way we aim to run [our own company][GFR].


### Pre-paid cards

In recent weeks we've also done a bit of [research into pre-paid cards][Pre-paid Cards]. Many of the companies that offer such cards are regulated as [e-Money Institutions][] and a few as [Payment Services Institutions][]. It seemed quite promising that the FCA has specific recognition for [small versions of these institutions][Small EMI], but on further investigation it looks as if the [application process][EMI Application] is still almost as onerous as that for credit unions.

It also looked promising that at least one of these institutions, namely [CardOne Banking][], offers Direct Debits. However, as far as we can tell, the only way to do this would be to partner with one of the clearing banks via their [Agency Banking Services][]. We've struggled to find out much about this kind of arrangement, but we suspect it would be a slow, bureaucratic and expensive procedure.

We think that the e-money accounts avoid the regulation relating to [accepting deposits][], because as a customer you're buying electronic money from them, rather than depositing funds with them. This seems like a very subtle distinction, especially given that the e-money is pretty much directly convertible back into real money.

In any case, we suspect that this distinction goes out of the window if you want to operate anything resembling a current account i.e. to be able to offer Direct Debits, Faster Payments and the like.


### Thought experiment

I'm not sure that we've previously mentioned this, but in the spirit of going back to our original goals, we also briefly contemplated trying to use a [single bank account as a back-end to a bank-like service for multiple customers][GFR Bank].

Putting aside the fact this is likely to be against the banks terms and conditions, we reckon it might be possible to offer Faster Payments and Standing Orders, but we think you'd run into problems trying to offer Direct Debits and Debit Cards.


## Reflections

Although there's an inevitable sense of disappointment in deciding not to continue to pursue the project, we don't regret the time we've spent on it...

We've learnt a lot about the UK financial system which has been interesting in its own right, but it's also been refreshing to focus on a project that wasn't just about building software. It's made us think more about _why_ we're doing things and how to make incremental progress when doing research, not just writing software.

It's been frustrating not to be able to _fail fast_ as we would normally do when confronted with uncertainties in building software. This hasn't been for the want of trying, but usually the sticking point has been the _absence_ of information upon which to base a decision.

As time has gone on, the difficulty of making progress has forced us to repeatedly re-assess what we're actually trying to achieve. Although this is clearly a healthy state of affairs, doing it so frequently has occasionally made us wonder whether we really could build a compellingly better online banking user experience.

However, I suspect these doubts are more related to the fact that we haven't actually been building (and iterating on) the online banking user interface that we've envisaged.

Personally, my overriding sense is one of frustration that it's so hard to set up a new financial institution in the UK. Although it's not a complete surprise, I can't really see why a couple of reasonably smart people shouldn't be able to do this relatively straightforwardly, especially if they're aiming to start _very_ small and with as _little_ risk as possible.

The application process to obtain authorisation for a new financial institution feels extremely opaque. It's not clear what the criteria are for success, nor why it has to take so long. One way to make this better might be for the FCA to publish some generic examples of application documents (e.g. business plans) which they would find acceptable and some which they would find unacceptable.

Supposedly the government would like more competition for the high street banks, but it's hard to see how this is going to come about unless the process of setting up a suitable financial institution is made a lot simpler/more transparent.


## What next?

We sat down a couple of days ago and had a think about where we might go from here. Our broad conclusion is that we're not going to put much more effort into the project, but we've written up some notes on the possible directions we could pursue:

We're sure that it's not an exhaustive list, but hopefully it gives you a flavour for what we've considered. If you have any thoughts, suggestions or advice, we'd love to hear from you!

### Partner with existing credit union

The idea would be to find a credit union that was willing to let us prototype a new "front-end" against their existing "back-end".

#### Advantages

* No need to set up a financial institution of any sort
* Might be able to offer software to multiple credit unions

#### Disadvantages

* Small, niche market
* Credit unions probably don't have money to spend on software development
* A small number of suppliers seem to already have the market sewn up
* Only a few credit unions offer proper current accounts which would limit what we could actually do
* Being allowed access to their "back-end" might be fraught with security concerns

### Pre-paid card service

We'd aim to set up a small EMI and offer as many current account like services as we could.

#### Advantages

* The FCA application process is probably at least slightly simpler than for a credit union
* The type of financial institution seems a bit better aligned to what we want to do e.g. no lending
* Cards are Visa/Mastercard and so can be used anywhere including for cash withdrawals from ATM
* Chris' Kalixa card transactions appear almost instantly in his online account

#### Disadvantages

* Not sure we can do e.g. Direct Debits, Faster Payments
* Not protected by [FSCS][] because it's e-Money, not real money
* We'd still presumably need to find some kind of white-label provider - not sure if this would be Visa/Mastercard direct or one of their "partners"

### Skin for existing online banking

The idea would be to put our own web app "in front" of an existing online banking service i.e. using [web scraping][] techniques.

#### Advantages

* No need to create any kind of financial institution
* Much easier to start building software and having something to show people

#### Disadvantages

* Probably against terms and conditions of most/all banks
* Only useful for customers of the bank we pick
* Only possible to change the user experience for existing functionality i.e. not possible to add new functionality

### Prototype for existing bank

We've idly wondered whether it would be worth approaching existing banks and building societies to see whether any of them would consider paying us to develop a prototype online banking interface to connect to their existing "back-end".

#### Advantages

* Addresses narrower goals of improving the online banking experience
* We might be able to get paid for doing the work

#### Disadvantages

* Only useful for customers of the bank in question
* Wouldn't address wider goals of improving transparency
* Dealing with the inevitable bureaucracy of a large corporation
* Security/access issues in connecting to any kind of "back-end"

### Content improvements

The assumption here is that we've generated some content which others would find useful. We have a bunch of ideas for how we could improve it (see below), however we're not sure we can justify spending much time on it.

* Tidy up the content and make it as useful as possible to as wide an audience as possible
* Draw diagrams of exactly how different transactions work e.g. what parties are involved
* Add screenshots of existing online banking websites (with private data redacted) to allow comparison of functionality
* Make it easier for others to iterate and/or improve on what we've done
* Submit some feedback to the government's consultation about Credit Unions


[Project Credit Union - Day 11]: /project-credit-union-day-11
[Credit Union]: https://github.com/freerange/bank/wiki/Credit-Union
[Manifesto]: https://github.com/freerange/bank/wiki#manifesto
[CUEP]: https://github.com/freerange/bank/wiki/Credit-Union-Expansion-Project
[FCA]: http://www.fca.org.uk/
[GFR]: /
[Pre-paid Cards]: https://github.com/freerange/bank/wiki/Prepaid-card-accounts
[e-Money Institutions]: http://www.fca.org.uk/firms/firm-types/emoney-institutions
[Payment Services Institutions]: http://www.fca.org.uk/firms/firm-types/payment-services-institutions
[Small EMI]: http://www.fca.org.uk/firms/firm-types/emoney-institutions/becoming-a-small-emi
[EMI Application]: https://github.com/freerange/bank/wiki/Electronic-Money-Institutions#application-form
[CardOne Banking]: https://github.com/freerange/bank/wiki/Prepaid-card-accounts#card-one-banking
[Agency Banking Services]: https://github.com/freerange/bank/wiki/Agency-banking-services
[accepting deposits]: https://github.com/freerange/bank/wiki/Accepting-Deposits
[GFR Bank]: https://github.com/freerange/bank/wiki/Using-a-single-bank-account-as-the-backend-of-gfrbank.com
[FSCS]: http://www.fscs.org.uk/
[web scraping]: http://en.wikipedia.org/wiki/Web_scraping

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-08-28 14:13:00 +01:00
:updated_at: 2014-08-28 14:13:00 +01:00
:page_title: Project Credit Union - Update

