Week 186
=========

We're trying to establish a rhythm after "_The Meeting_" (as mentioned by {l week-184,Tom} and {l week-185,Chris} in previous weeks), and at the moment we are splitting our time evenly between client work and our own (nefarious) agenda.

Welcome to Week 168! [Now with commenting](#comments) for your thought-expressing pleasure.


The client work
-----------

The bulk of our effort for [GDS](http://digital.cabinetoffice.gov.uk) over recent weeks has been working on the [specialist guides part of the single domain](https://www.gov.uk/specialist), which was [launched this week](http://digital.cabinetoffice.gov.uk/2012/08/08/shipping-new-formats-the-gov-uk-international-trade-release/). This content -- "specialist guidance" -- is managed by the same software that we built for {l inside-government, Inside Government}, but it marks the start of a closer integration between that and the "mainstream" content at [the root of gov.uk](https://www.gov.uk).

You can see some of that integration in the search results; from [both specialist](https://www.gov.uk/specialist/search?q=animals) and [the main site](https://www.gov.uk/search?q=animals) you'll find links to relevant content in both parts of the site.

I'm not sure I can say that Unicorn is happily galloping without issue yet, but compared to {l week-185,previous weeks} deployment has pretty much returned to the uneventful process that it ought to be.


### Sinatra and the weight of software

A conversation at GDS got me thinking about whether or not [Sinatra](http://sinatrarb.com) is an appopriate choice for production web systems. I can see the appeal: you can start with an application that's just a single file, and as a single script it's very quick to examine how the application works.

That said, I've got a few principle concerns about its use in *this* environment. Sinatra applications tend to become harder to maintain over time, precisely because of the _carte blanche_ they give you at the start. Without a concerted effort to keep that script well factored, it's not unsual to find yourself a few months later with a spaghetti of top-level methods and configuration.

Speaking of configuration, the specific hurdle I hit this week was adding exception mailing to a Sinatra application. Sure, [there's some basic middleware](https://github.com/rack/rack-contrib/blob/master/lib/rack/contrib/mailexceptions.rb), but if I want to send that email via [Amazon's Simple Email Service](http://aws.amazon.com/ses/) rather than your own SMTP server? Time to roll my sleeves up.

#### How heavy is a kilobyte?

That's all just programming though; with enough effort you can keep Sinatra applications maintainable, and with appropriate 3rd-party abstractions there's no reason why Sinatra should have to help me integrate things like exception handling and emailing. What I find more interesting are the perceptions that lead to the choice of Sinatra in the first place: ideas like "I only want to build a simple app", or "Rails is too heavyweight for this", and so on. I find the idea of of the _weight_ of software really interesting. I'm also quite wary of it.

I think some of it steps from past experience of slow Rails environment startup when running tests or starting web servers. This slowness translates in our minds to heavyness. But in reality, Rails is not the source of the slowness -- it's merely complicit. Take an empty Rails application and run `rake routes`, and it returns in less than a second. It's only when your application has become larger that the environment starts to slow down, so really __the weight is from your own application__, and Rails is simply flexing underneath this burden.


#### The simplicity fallacy

It's not just "weight", either; there are other subtle ideas in play, like "_I'm building a simple thing, so all the software in my stack should be simple_", which is a notion that I'm also suspicious of. What I believe is important is that my framework allows me to *express* my implementation in a simple, comprehensible way; the number of lines of code it might use to help me achieve that is largely irrelevant.

Finally, I think you need to consider the motivations of the maintainers of the tools you're using, and how aligned they are with yours; if you care most about speed, but they prioritise having an elegant DSL or integrating with multiple ORMs, then while a tool might suit your needs now, that may not be in the case at some point in the future.

To be clear, **I'm absolutely not saying that Sinatra is bad software**. I just think we need to be confident that we are evaluating tools using sound and broad criteria.

[Maybe you disagree](#comments)? I'd love to explore this more.


Our (nefarious) agenda
--------------

This week I finished off our first pass at the core of what will become the next version of {l harmonia,Harmonia}, the tool we use to manage tasks and chores within our company. This is one of the ideas that we're hoping other people might find useful. Alas there's not much to see beyond isn't library code at the moment, but hopefully soon we'll be able to talk more about how it works. I think we have some really good ideas that I'm looking forward to sharing.

{l tom-ward,Tom} has spent some time working on a tool to wrangle [Unicorn](http://unicorn.bogomips.org/)s, since that's a problem that we've experienced both in our work with [GDS](http://digital.cabinetoffice.gov.uk), and in our own projects.

It's been another {l mocha,Mocha} week for {l james-mead,James M}, as he's been performing some very delicate refactoring that he's been working on for a few weeks. Integrating with the idiosyncrasies of various test frameworks, particularly as they themselves evolve, requires a lot of effort -- perhaps more than the legions of Mocha users might realise.

As {l chris-roos,Chris} mentioned in {l week-185, his notes last week}, he's been working on his bookmarking/research tool experiment [roosmarks](https://github.com/chrisroos/roosmarks), the development of which [you can follow on github](https://github.com/chrisroos/roosmarks/commits/master).

Next week it's just Chris and I holding down the fort, as James M is competing in the [GP14 World Championship](http://gp14worlds.com/) (good luck James!), and Tom is on the first of two consecutive breaks, this one to Turkey.


### Finally: Comments

As an experiment, we've decided to add commenting to our blog, to hopefully facilitate conversations with people who might be interested in how we work and the software we're building. [Speak your brains](http://www.youtube.com/watch?v=mogfCoM8vtc)!


:render_as: Blog
:kind: blog
:written_with: Kramdown
:author: james-adam
:created_at: 2012-08-11 17:15:00 +01:00
:updated_at: 2012-08-11 17:15:00 +01:00
:page_title: "Week 185"
