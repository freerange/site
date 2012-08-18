Week 187
========

Ask I mentioned {l week-186,last week}, this week it's just {l chris-roos,Chris} and {l james-adam,I} keeping the good ship [GFR](/) on an even keel.

Week 187[^187] pretty evenly between our client work and our internal projects. I'll try to pick out some interested moments from each.

[^187]: [Fo' real, yo.](http://en.wikipedia.org/wiki/187_(slang) "We is killaz!")

Sitting comfortably? Yes?

Then I'll begin.


Roosmarks and the IndieWeb movement
------------------

{l chris-roos, Chris} has been doing a bit more work on his self-hosted bookmark/research tool currently known as "[Roosmarks](http://github.com/chrisroos/roosmarks)". Aside from scratching his own itch, he's also very interested in the idea of self-hosted web applications. These are applications that you, the user, host for yourself, as opposed to applications like Twitter or Facebook or Flickr, which runs on a central shared server[^many-servers]. It turns our there's a movement -- called [IndieWeb](http://indiewebcamp.com/Main_Page) -- all about this kind of approach.

[^many-servers]: Or, more likely, [many hundreds of servers](http://gizmodo.com/5632095/justin-bieber-has-dedicated-servers-at-twitter).

There are plenty of reasons why you might want to host your own content, normally centred around ensuring that you control its use and can always retrieve it. The most obvious reason you might choose a centralised service instead is that *you* have to care about keeping the application running.

Earlier this week we spent some time talking about whether or not we could work towards our _company goal_ using a self-hosted product. It's clear that the market for a self-hosted application is much smaller than that for a "regular" app, but is that because people don't care about their data, or because they don't have the skills or interest to run an application themselves? Or something else? Or all of the above?

Can you imagine self-hosting an application? If so, what kind? If not, is it because of the hassle, or because you think the advantages of a hosted service outweigh data freedom concerns?

[Let us know what you think...](#comments)


Decoupling Harmonia from Rails
-------

The [original version](http://github.com/freerange/harmonia) of {l harmonia,Harmonia} is barely an application, let alone a [Rails](http://rubyonrails.org) app, but the next version is slightly more ambitious, and will require a web interface of some kind (although that may not be the *only* kind...).

As I mentioned {l week-186,last week}, I've been working on some of the core domain logic, but without any framework or interface. This week, Chris and I started to investigate how to bring persistence (via [ActiveRecord](http://ar.rubyonrails.org/)) to the objects I've built, but without introducing coupling between the framework and the clean objects we already have.

After a few hours of head-scratching and a few false starts, I think we've found a simple approach that I'm happy with. I'd love to go into a bit more detail, but I think I'm going to wait until the choices we've made have a chance to prove themselves (not to mention the valuable input of {l tom-ward, Tom} and {l james-mead,James M}).

All I'll say for now is that the key is extracting _value objects_ and _adaptors_. More on this later I hope.


[[Little](http://bergcloud.com/littleprinter/)] {l printer,Printer}
-------

At GFR we've been {l hello-printer,printing with some of our friends since April}, but if you have been waiting for a packaged product, your time has come. This week, [BERG](http://berglondon.com) opened up [pre-orders for Little Printer](http://uk-shop.bergcloud.com/). Welcome to the party!

Obviously I have a few thoughts.


### The Price Is... Right.

If you happened to be [sampling the twitters](https://twitter.com/#!/search/little%20printer), you'll be aware that some of the discussion was focused on the £199/$259 price tag. I wasn't surprised by this reaction to the price; to be honest, it was more than I had hoped too. But I understand _why_ it costs what it does.

If [the components to our own far-simpler printer](https://github.com/freerange/printer/wiki/Component-list) cost £140, then even considering bulk discounts, it can't be surprising that in order to build a well-designed and beautifully-manufactured wireless device, and produce & support the polished software to support it, that a company hoping to make a profit would need to charge a little more? I'm sure BERG would love to be able to sell the product for less, and perhaps as they make progress with their longer-term plans[^berg-plan] they'll be able to start benefiting from the cost savings of manufacturing at scale.

[^berg-plan]: BERG's strategy is almost certainly involves getting their "[Cloud Bridge](http://bergcloud.com/littleprinter/#the-bridge)" into our houses. It's not hard to deduce that they are in this for the long game.

There's a [Kickstarter project called mPrinter](www.kickstarter.com/projects/1953425088/mprinter-an-analog-printer-for-a-digital-world) which claims to be able to build a wifi device for $100, and without investing tens of thousands of dollars into tooling. Based on my own experience and observations of Little Printer's journey along with [others trying to make physical things](http://rodcorp.typepad.com/rodcorp/2012/08/small-hello-to-little-printer.html), I'll be very surprised if they can. But, of course, I could be wrong. If there is a way to make these devices at that sort of price, I hope they'll explain how.

Next, a common misunderstanding about what these things actually are.

### Ceci n'est pas une Printer[^pipe]

[^pipe]: [The Treachery of Images](http://en.wikipedia.org/wiki/The_Treachery_of_Images).

Having spent more than a year pottering around with this stuff, one of the most common misunderstandings I encounter is that these devices are printers. I know, it's confusing; they all say _printer_ in the name after all.

A few people have asked about using them to print documents, or whether or not what we (or indeed BERG) have built is similar to [Google's Cloud Print](http://www.google.com/cloudprint/), which also lets you send content to printers over the internet. Thinking about these things as printers -- or at least as printers in any  way similar to the thing in your office -- is, unfortunately, missing the point.

Maybe it's only when you've actually held some of the diminutive content in your hand, played with it, that you really understand what the point is:

[![This is not a printer](/images/blog/this-is-not-a-printer-small.jpg)](/images/blog/this-is-not-a-printer.jpg)

That they are printers is **not** interesting. **It's what they *produce* that is interesting**. Small bits of personalised content that you can easily hold in one hand, or fold into a pocket or wallet or notebook.

"Reverend" Dan Catt [makes the same point](http://revdancatt.com/2012/08/15/why-the-little-printer-is-good-aka-someone-on-the-internet-is-wrong-a-response/). Yes, you could access all of this on your smartphone, but to assume that any other medium is therefore pointless is to ignore how context affects the way we relate and interact with information.

It's **all about the format and the content**.

[As I've tried to emphasise in our own project](https://github.com/freerange/printer/wiki/Building-content-services), what is going to be really interesting is exploring the range of content that could be useful or interesting or delightful in this novel format. A significant amount of BERG's energy has clearly gone into developing and refining their own ideas about what works in this format, but there is doubtless much more that could be done.


### And what of our {l printer,Printer}?

One side effect of the buzz around BERG's announcement -- positive or otherwise -- is that our own project got a bit of a boost. Here's some analytics information reflecting the number of visitors to this site recently:

![Printer traffic](/images/blog/printer-traffic.png)

We haven't really decided what we're going to do with {l printer,Printer} yet[^printer-plans], but for the moment it still makes a great open-source alternative. I have plenty more that I'd like to do with it; it's just a case of finding the time.

Until next time,

-- James A.

[^printer-plans]: {l printer,Printer} is only one of the projects that we are working on internally, and it's not clear at the moment how it might be able to address our _company goal_ -- in part because of exactly the amount of effort BERG have had to put into Little Printer to get this far. [Shipping atoms](https://twitter.com/freerange/status/235324391406329856) [is hard](http://berglondon.com/blog/2011/03/15/three-cheers-for-plumen-design-of-the-year/)!





:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-adam
:created_at: 2012-08-18 02:01:00 +01:00
:updated_at: 2012-08-18 02:01:00 +01:00
:page_title: "Week 187"
