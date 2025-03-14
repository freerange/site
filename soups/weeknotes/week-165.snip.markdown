Week 165
========

This week we started to make progress with the goals and ideas that we extracted from the [wind-down and pow-wow last week](/week-164).

165 is also a binary palindromic number (10100101), and its representation in Mayan looks like [a birthday cake](http://numdic.com/165). Aren't you glad you know that now? Me neither. ONWARDS!

Looking inwards
--------------

In the early days of [Free Range](/), we undertook an introspective exercise to explore what common goals and ideals we all held were[^jasonsgoals]. While it might not seem obvious, these conversations are particularly useful. I's important to know what you're working towards; things like getting a mortgage aren't easy when you're the director of an [atypically-organised company](http://youtu.be/dOOTKA0aGI0?t=1m38s) like we are.

While there is inevitably some change as we all get older and wiser, I don't think anybody's goals or aspirations for the company have changed dramatically. Even so, it's incredibly useful to make them explicit, because by their very nature these things don't achieve themselves. If they were easy or were likely to happen of their own accord, they'd already be done!

It was reassuring to hear the same goals and perspectives repeated by everyone. We want to improve our development practices even further, and become better at managing the development process with clients. We also all want to get a clearer idea of what [Free Range](/) is for -- building software for clients is a means to an end, rather than an end in itself.

But to what end? There's still quite a bit of thinking to do, but now that we've identified a few key areas that we want to focus on, we can roll up our sleeves and start working towards them.


Free Ranging
-------

Of course, it's not all [pondering and chin-stroking](<%= image_path('blog/ponderers.jpg') %>) at GFR HQ this week. One of the other benefits of not being flat-out on a project is that we get to leave our desks and take part in some extra-curricular fun.

This week, all of [GFR](/) descended on [Ruby Biz UK](http://lanyrd.com/2012/rubybizuk-march/), which is basically a coffee-morning version of the post-[LRUG](http://lrug.org) pub. I've been to quite a few of these, and I enjoy the slightly different perspective; it's often useful to speak to other people working in or running development companies to remind me why [we](/) work the way we do.


<i>Ass</i>et Management
-------

Plus, we are all super-high-powered businesstrons. After all the coffee was drunk, we "leveraged" our "out-of-office synergy" to "go forward together" and "facilitate" another one of our tasks -- "procuring" some more furniture for the "war room".

Yes -- ok -- enough "business speak". We went shopping.

After five months of using the crappy chairs we inherited from the previous tenants, we descended on the most convenient Swedish furniture emporium and tested a few chairs and sofas out. I now understand the difference between a £20 chair and a £200 chair -- it's just the number of anonymous cranks and handles that you can play with, right?

Oh, and we also got a conference table, so we are now "110%" more ready to "touch base". That's right.

(Actually, it's so [Tom Stuart](http://experthuman.com) and [Ben](http://techbelly.com) don't need to [work off an ironing board](<%= image_path('blog/tom-stuarts-desk.jpg') %>) when it gets busy).


To LLP, or not to LLP
--------------------

[Chris](/chris-roos) and [I](/james-adam) have been investigating the prospect of transforming [GFR](/) from a Limited Company to a Limited Liability Partnership. There are a few rough patches in our company mechanism where it comes to people leaving and joining, and how that interacts with remuneration, since both are mediated to some extent by share ownership. The benefits of an LLP are mostly in the flexibility of its organisation and the simplicity of operation. Partnerships don't have shares, but instead define fraction ownership of the company profit in a simple partnership agreement.

However, the grass is not always greener, and LLPs present their own wrinkle: because each individual is personally taxed on their share of the profits of an LLP, there is no opportunity for leaving money *in* the company to pay for future bills before income tax has been applied.

We are approaching this decision as we have done with most company questions -- build a small model, play around with some figures and get a gut feel for whether or not its worth it. We're still undecided at the moment, and I think this is going to come down to the combined tradeoffs of a lot of smaller concerns (like ease of getting a mortgage as a partner vs. a director), rather than any single obvious reason. If only it was that simple!


It's not all navel gazing, you know
-------------------------

In the latter part of the week, having ticked off a few chores and made some progress with goals, it was back to business in the office.

We have started working on a pseudo-toy project[^sauron] with the aim of codifying some of our development practices (testing, architecture) and principles (stories, how to start a project) in a more explicit form. It's very early days, and there's been a remarkable amount of talking with a very small amount of programming, but I think it's really helping us iron out some of the tiny differences in how we approach problems, and will help us outline a standard GFR practice on which we can build and iterate in the future.

One thing that became quite clear for me towards the end of the day was that it's much more meaningful to talk about code that exists than code that doesn't. I am going to make a particular effort in the future to explain my ideas at the keyboard, rather than beside it. I've got to learn to [keep my mouth shut](https://github.com/freerange/sauron/commit/4d46f851de88686d9437e290a6931cbefef580ce#lib/gmail_account.rb-P3)[^gmail]!


Happy clients == Happy GFR
------------------------

[Chris](/chris-roos) and [I](/james-adam) met with an [existing GFR client](/voicenet) for whom we'd done some work last year, to discuss some more work we might do for them later in the spring.

What I really got a kick out of was being told that the small API which we'd built for them last year had already delivered concrete value to the business. It helped them retain and win new business that might've gone elsewhere had the API not been available, even if their customers didn't end up making use of its features. And that's what software often is -- a means to an end, rather than an end in itself.

It can be quite frustrating if there's no obvious impact or identifiable benefit delivered by a piece of software that you've built, so this is the kind of feedback that we really love. It pretty much made my week.

Until next time, blog-friends,

-- James A.



[^jasonsgoals]: Though [Jase](/jason-cale) has now left us, you can read the goals he originally wrote [on his blog](http://jasoncale.com/articles/7-building-a-company-starting-with-our-personal-goals). They made a lot of sense to me.
[^sauron]: I wrote a [spike for an application](http://github.com/freerange/sauron) that would help us keep on top of emails that needed to be followed-up, or find emails that might not have been sent to everyone. We're using that simple problem as the basis for a properly written version of the app.
[^gmail]: Some background to that commit: We had written a very simple script to log in to a Gmail account and list the emails in the inbox, and were trying to figure out how to bring that into the application in a well tested way. I think we realised afterwards that there are at least two approaches we could've taken: bringing the existing code under tests, or using tests to drive out a design independent of the existing code. I was advocating the latter, whereas others were thinking about the former, and our differences in how we were thinking about the code might be traceable in large part to the ambiguous name `Gmail` for the object/class.


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2012-03-17 12:23:00 +01:00
:updated_at: 2012-03-17 12:23:00 +01:00
:page_title: Week 165
:erb: true
