Project Credit Union - Day 2
============================

I'm really glad we've decided to write up notes about our research into setting up a credit union - it's such a shame that there's such a dearth of useful information in the public domain. Writing up these notes is a really good way to keep us focussed and motivated, but it does take up a lot of time! Anyway without further ado, here's what we got up to yesterday...

## Electronic Bank Transfers

Given that we decided our [minimum viable credit union][Minimum Viable Credit Union] would need to allow electronic transfer of money into and out of a member's account, we thought we ought to investigate how this might be possible.

### Faster Payments

The most obviously useful mechanism is [Faster Payments][]. This allows transfers between accounts of up to £100K within a couple of hours. There are [three levels of membership][Faster Payments Membership]: Member, Direct Agency or Third-party Beneficiary. In order to become a Third-party Beneficiary, you need to:

* be a customer with an account at a member that is willing to sponsor you
* have, or be eligible to hold, at least one unique sort code
* be able to comply continuously with Faster Payments' technical and operational requirements.

From what we can tell it seems as if the next step is to talk to an existing member. We're thinking of talking to the [Co-operative Bank][] given their [history of supporting credit unions][Co-operative Bank Social Enterprises].

### Direct Debits

Another obviously useful mechanism is [Direct Debits][] which seems to be operated by the [Bankers' Automated Clearing Service][BACS] (BACS). This mechanism is slower than Faster Payments, but useful for paying bills where the amount is not known in advance. BACS seems to have a similar multi-tiered membership structure to Faster Payments and so again I think the next step is to contact someone like the [Co-operative Bank][] to see whether we can "partner" with them in some way.

### Other

* [CHAPS][] - fast, larger payments, e.g. house purchase.
* [Cheque & Credit Clearing Company][] - cheques, bank giro credits, etc.
* [LINK][] - UK cash machine network.

### Sort Codes

Since one of the requirements of Faster Payments is to have "one unique sort code", we thought we'd investigate how one goes about obtaining such a code. The [Payments Council][] seem to have overall responsibility for the database of UK sort codes, but it sounds as if individual payment schemes actually _issue_ new sort codes. So we imagine that the Faster Payments scheme, for example, would be able to issue a new sort code.

### Infrastructure

A company called [Vocalink][] seems to provide the infrastructure for the BACS, Faster Payments and LINK services. They also host the UK's [database of sort codes][] on behalf of the Payments Council. It's a bit of a tangent, but I'm quite curious as to how tied in to this infrastructure the banks are. I wouldn't be surprised if Vocalink's contract may be a bit of a license to print money.


## Joining Credit Unions

We decided that it would be interesting to join a couple of existing credit unions to understand more about how they work. So [Chris][] applied to join the [London Capital Credit Union][] and I applied to join the [London Community Credit Union][]. They both offer online banking but the latter also offers a current account with a debit card.

### London Capital Credit Union

Chris went through the [online application process][London Capital CU application] at around 3pm. It was incredibly simple, and is possibly even simpler than their postal application which appears to require at least your National Insurance number in addition to everything else in the online form.

He only had to wait about an hour before receiving his membership information by email. He wasn't really expecting anything to happen so quickly so this was a pleasant surprise.

Along with his membership number and welcome letter, he received a list of frequently asked questions, a loan application form and a newsletter. Although there was lots of information, it wasn't immediately obvious what he should do next. Before signing up he'd read about a one-off £5 lifetime membership fee, but the documents didn't mention how he might pay it, or indeed whether it's even required.

However, he did have enough information to make a payment in to the credit union and instructed his bank to transfer £10. Interestingly, they appear to use a _single_ Co-op bank account that their members transfer money to. Chris and I have discussed this as an approach that we could use if we're unable to offer the Co-op credit union current account, although we think this might limit the functionality we're able to offer.

He waited a couple of hours after making the transfer and filled out the [online account application form][London Capital CU online account]. He submitted that at the end of the day yesterday and is now waiting to hear when he has access to his account.

### London Community Credit Union

There are three ways to apply: on-line, interactive PDF, or downloadable PDF. I decided to go through the on-line application process which was a large single page form. It was mostly pretty straightforward (although more complicated than the one for the London Capital CU), but I ran into a bit of a problem with entering my passport details.

Unusually, rather than asking for just the passport number, they ask for the data in the 2nd row of the machine-readable zone. They provide separate inputs for each of the "fields" with client-side JavaScript checking the length of each field and moving you onto the next input as required. The client-side validation also requires that *all* the characters are digits, but some of the characters on my passport are not digits. Unfortunately this was preventing me from submitting the form.

I read up about the [machine-readable passport format][] and it turns out that characters 11-13 are meant to be letters representing your nationality, character 21 is meant to be a single character representing your gender, and characters 29-42 can be alphanumeric (mine are all the filler character, `<`). Anyway this convinced me that the client-side validation is *not* correct.

The source code on the page makes use of the [jQuery validation engine][] library. Chris spotted that we could simply invoke the following line of code in a JS console on the page to unregister the library's bindings.

    $('#formID').validationEngine('detach')

I was then able to submit the form successfully and it turns out there were no server-side errors. I also reported this problem via their [Contact Us][London Community CU Contact Us] form. Slightly worryingly they haven't yet acknowledged my application or my message, so we'll have to wait and see on that.

## Definitive List of Credit Unions

Chris thought it would be useful to find a definitive list of all credit unions, but we haven't been able to find one. We think the [Find Your Credit Union][] website only includes ABCUL members and it's not clear where [CreditUnions.co.uk][] is sourcing its data. Chris has emailed the [Prudential Regulation Authority][] to ask them whether they have a definitive list.

## Credit Unions in the News

Serendipitously on Monday, the Treasury launched a [consultation on credit unions][HM Treasury Credit Union Consultation]. It looks as if we might be able to contribute to this consultation, particularly the section about [setting up a credit union][] - perhaps we can just send them links to these notes!

I also came across an article about the DWP's [Credit Union Expansion Project][]. They seem to have awarded a £38 million contract to ABCUL. It'll be interesting to find out more about how this money is being spent.

While it's not directly related to credit unions, Chris spotted this [news article about Wonga using fake law firms to scare customers into making payments][Naughty Wonga]. Unbelievable!

Anyway, that's your lot for today. I hope you're looking forward to tomorrow's exciting episode...

[Minimum Viable Credit Union]: /project-credit-union-day-1#minimum-viable-credit-union
[Faster Payments]: http://www.fasterpayments.org.uk/
[Faster Payments Membership]: http://www.fasterpayments.org.uk/membership/criteria-faster-payments-membership
[Co-operative Bank Social Enterprises]: https://www.co-operativebank.co.uk/aboutus/ourbusiness/ethicalpolicy/social-enterprises
[Co-operative Bank]: https://www.co-operativebank.co.uk/
[Direct Debits]: http://www.directdebit.co.uk/
[BACS]: http://www.bacs.co.uk/
[CHAPS]: http://www.chapsco.co.uk/
[Payments Council]: http://www.paymentscouncil.org.uk/
[LINK]: http://www.link.co.uk/
[Chris]: /chris-roos
[London Capital Credit Union]: http://www.credit-union.coop/
[London Capital CU application]: https://credit-union.securecu.co.uk/05009633a0/secure.asp?section=197
[London Capital CU online account]: https://credit-union.securecu.co.uk/05009633a0/pins.asp?section=8
[London Community Credit Union]: http://londoncu.co.uk/
[London Community CU Contact Us]: http://londoncu.co.uk/?page_id=41
[machine-readable passport format]: http://en.wikipedia.org/wiki/Machine-readable_passport#Format
[jQuery validation engine]: https://github.com/posabsolute/jQuery-Validation-Engine
[CreditUnions.co.uk]: http://creditunions.co.uk/
[Prudential Regulation Authority]: http://www.bankofengland.co.uk/pra/pages/default.aspx
[Cheque & Credit Clearing Company]: http://www.chequeandcredit.co.uk/
[Vocalink]: http://www.vocalink.com/
[database of sort codes]: http://www.vocalink.com/products/payments/customer-support-services/extended-industry-sort-code-directory.aspx
[Find Your Credit Union]: http://www.findyourcreditunion.co.uk/
[HM Treasury Credit Union Consultation]: https://www.gov.uk/government/consultations/british-credit-unions-at-50-call-for-evidence
[setting up a credit union]: https://www.gov.uk/government/consultations/british-credit-unions-at-50-call-for-evidence/call-for-evidence-british-credit-unions-at-50#setting-up-a-credit-union
[Credit Union Expansion Project]: https://www.gov.uk/government/news/credit-union-38-million-expansion-deal-signed
[Naughty Wonga]: http://www.bbc.co.uk/news/business-28015456


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-06-26 15:00:00 +01:00
:updated_at: 2014-06-26 15:00:00 +01:00
:page_title: Project Credit Union - Day 2
