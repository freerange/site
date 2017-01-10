Avoiding VAT issues with FreeAgent Sanity Check
===============

*UPDATE: The FreeAgent Sanity Check app is now deprecated. We now use the [FreeAgent Transaction Explainer Chrome extension](/chrome-extension-for-explaining-bank-transactions-in-freeagent) to achieve something similar.*

While our main focus at <%= include_snip 'gfr' %> is building software, we're also running a company and that comes with its own set of chores and obligations. Wherever possible, we like to build simple tools to make sure that managing those obligations is as painless as possible. I'd like to outline one simple tool here -- the [FreeAgent Sanity Check][].


*Vat*'s[^pun] "VAT"?
---------

To help manage the accounting aspect of our business, we use [FreeAgent][] (along with [Harmonia][], as [outlined on the Harmonia blog][using-harmonia-with-freeagent]). Amongst the many things that FreeAgent helps us with are our VAT[^vat] accounts. Because <%= include_snip 'gfr' %> is a VAT-registered business, we have to charge VAT on services and products that we sell, and then once a quarter we pay that tax forward to the UK Government, along with reclaiming any VAT that we've paid on services and products that we've purchased.

If that sounds like a lot of jumping through hoops then you've probably grasped the idea. We're really glad that FreeAgent gives us a helping hand to ensure that we're paying (or indeed reclaiming) the right amount.


It's not *vat[^lol]* simple
---

Unfortunately there's one little wrinkle that's very likely to cause a problem, and that's buying anything from outside Europe.


If you're reading this blog it's quite likely that you're paying for some subscription services from US companies like [Github][], or [37 Signals][]. Because these companies are based in the USA, they don't charge VAT. However, when importing transactions, the default setting in FreeAgent is to automatically determine the amount of VAT present:

<img src="/images/blog/free-agent-explaining-vat-transaction.png" width="100%" alt="FreeAgent automatically determining the VAT for a transaction">

This will mean that our accounts include some VAT -- 20% of £7.69 in this case -- that we never actually paid:

<img src="/images/blog/free-agent-us-transaction-with-vat.png" width="100%" alt="VAT for a transaction that shouldn't exist">

If we leave this unremedied, we'll attempt to reclaim £1.54 that we're not due in our next VAT return filing, and this is, alas, illegal. We're too pretty to last any amount of time in the [Big House][]!


So *vat's[^sorry]* the solution?
--------

Thankfully, there's a clue in the raw text from the bank statement that will let us automatically check whether or not a transaction is likely to be VAT-exempt. Take a closer look at the cryptic text from our bank statement:

    37SIGNALS-CHARGE.COM 3122390165 IL 12.00 USD @ 1.5604//OTHER/£7.69

The eagle-eyed reader will have spotted the string `USD`. This appears in all the transactions from our bank which occured using a different currency ($12 USD, in this case), and we can make use of it to ensure that these transactions are correctly explained.

Stalwart solver-of-problems <%= l('james-mead', 'James M') %> took this observation, along with the [FreeAgent API][] (and a [small wrapper that we wrote][freeagent-wrapper]) to write a simple script, which <%= l('chris-roos', 'Chris') %> then massaged into very simple application that we call *[FreeAgent Sanity Check][]*.

Three times a day, this application looks at our FreeAgent bank data for any transactions that have `USD` in their raw text, but also have VAT applied. If any are found, then we are warned via an email that we need to take another look at the explanations for those transactions.

If you've ever spent any time trying to get to grips with the accounting side of running a business, you'll know how stressful it can be when you realise that you've made a mistake. I can happily report that since we kicked-off the *FreeAgent Sanity Check* application, dealing with our VAT returns has been far less stressful.

One of the best things about [FreeAgent][] is that you can build software using their [API][FreeAgent API] to help run your business more smoothly and efficiently. It's something we really believe in, and really value.

At the moment, the *FreeAgent Sanity Check* is fairly customised to our company (you can see our group email hard-coded in the source, for example), but if there's any interest it could very easily be made more generic. Let us know in the comments if you'd like to run your own instance to keep your own VAT situation as stress-free as possible.


[^pun]: It will help you tolerate this pronunciation-based pun if you say these instances of "*vat*" as if you were Dracula. A part of me wants to apologise for such terrible humour, but I won't. It will be for the best if get used to it sooner rather than later.
[^vat]: VAT stands for *Value-Added Tax*, in case you're not au fait with European tax conventions.
[^lol]: *Ahahahahah!* So funny.
[^sorry]: OK, yes, I will apologise for the joke. It's terrible. I am sorry. (But apparently not sorry enough to remove it.)


[Harmonia]: https://harmonia.io
[FreeAgent]: http://fre.ag/3276i4uh
[Free Range]: /
[using-harmonia-with-freeagent]: http://harmonia.io/blog/using-harmonia-with-freeagent
[Github]: https://github.com
[37 Signals]: http://37signals.com
[FreeAgent API]: https://dev.freeagent.com/
[freeagent-wrapper]: https://github.com/freerange/free_agent
[FreeAgent Sanity Check]: https://github.com/freerange/free_agent_sanity_check
[Big House]: http://www.urbandictionary.com/define.php?term=the%20big%20house


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2013-01-28 12:24:00 +01:00
:updated_at: 2013-01-28 12:24:00 +01:00
:page_title: Avoiding VAT issues with FreeAgent Sanity Check
