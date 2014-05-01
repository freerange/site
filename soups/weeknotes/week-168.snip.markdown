Week 168
========

At the beginning of the week, [Tom](/tom-ward) seemed to have survived a stag weekend in Leicester [dressed as a footballer][tom-dressed-as-footballer] sampling the [delights][hotel-ibis-delight-1] [of][hotel-ibis-delight-2] [the][hotel-ibis-delight-3] Hotel Ibis. But [James A](/james-adam) was still away in Edinburgh catching up with his contemporaries from the University of Aberdeen,  [enjoying the climate][scotch-mist] and savouring the [local cuisine][deep-fried-mars-bars]. I believe these are the folk who all keep in touch using Murray's 2003-vintage [My First Ruby] app. It's somehow comforting to know that [Ruby] played a part, however small, in getting these folk back together.

Joining & leaving
-----------------

We had a bit more discussion about how we might [manage people joining or leaving GFR][people-joining-and-leaving-gfr] and how that would work with the cash the company keeps under the mattress for a rainy day. We all looked through a spreadsheet Tom had made to help demonstrate how his cunning scheme might work. It's good to have something more concrete to look at and I think most of us a sympathetic to the approach Tom has taken.

<a href="http://www.flickr.com/photos/59937401@N07/5929622407/" title="Money by Images_of_Money, on Flickr"><img src="/images/blog/wad-of-bank-notes.png" style="width: 100%" alt="Wad of bank notes"></a>

["Money"][money-image-on-flickr] by [Images_of_Money][money-image-author-on-flickr] is licensed under [CC BY 2.0][cc-by-2.0]

At [Chris](chris-roos)'s suggestion, he and I had a go at seeing what bonus Tom's scheme would pay out now versus the calculation we did when [Jase](jason-cale) left. This was actually really useful, but not so much for the intended reason - it turned out we'd made a couple of errors in the calculation we did for Jase. One of the errors was that we'd used the corporation tax figure from our [FreeAgent] account. However, we should have used the figure in our annual accounts which [our accountant][3CA] had corrected. Anyway, it was good to catch this before we actually handed over the spondoolies to Jase. In the meantime I've [suggested][freeagent-corp-tax-suggestion] to FreeAgent that their user interface should somehow distinguish between accurate figures and rough estimates.

Sauron
------

As is evidenced by the stories marked as completed in [Pivotal Tracker][sauron-pivotal], we've spent quite a bit more time working on project [Sauron][sauron-repository]. Given that we're not all always in the office, we decided that we would allow individuals to work on the project and submit Github [pull requests][sauron-pull-requests] from a branch for review by the others. This means we can continue to use the development of the app as a learning exercise, but still make progress when we're not all in the same room. Tom wrote a [handy script][merge-pull-request] that allows you to merge a pull request programatically.

<img src="/images/blog/mock-object-diagram.gif" style="width: 100%" />

Now that we have an ActiveRecord-derived class in the project, it's been interesting to discuss how best to test the logic in this class as well as code that makes use of the ActiveRecord API. Chris, James A & I spent a while chatting about whether we should [mock code we don't own][dont-mock-third-party-libraries] and whether the [mock commands, stub queries][mock-commands-stub-queries] heuristic is useful. I found focussing on a concrete bit of code rather than talking in the abstract very helpful. More recently there's been some discussion about things like the [Single Responsibility Principle] and whether its better to return an Enumerator rather than expose a collection. All good stuff.

Roosmarks
---------

Chris has done a bit more work on his bookmarking app - mainly playing with [Twitter Bootstrap] and learning more about the [Rails asset pipeline]. But he's refusing to publish his code on Github - saying that if he publishes it, he'll find it harder to throw away. I reckon he's just shy. Anyway, hopefully he'll publish it soon. He also mentioned that he discovered a [bookmarking service][Zootool] that did some of the things he's interested in building.

Active Places
-------------

Chris also met up with a chap who was interested in the work he did at and around the [first Rewired State][first-rewired-state] on scraping the data from the useless Sport England "Active Places" website [^active-places] and using it to [build a much more useful website][active-places-reloaded].

House purchasing
----------------

I've spent much of the week immersed in the arcane paper-filled world of estate agents, financial advisors, accountants & solicitors. I must thank my long-suffering colleagues for putting up with my time away from the keyboard and for my frequent ranting about the inefficiency of the whole process. Hopefully we're slowly getting somewhere, but it does feel as if the whole sector is ripe for disruption by modern technology.

Receipt printing
----------------

James A has continued to beaver away on his receipt printer project and he has an impressive pile of thermal paper artwork scattered over his desk. The printer has now flown the nest and is now perched autonomously on the window sill plugged into an ethernet connection winking its red & green LEDs at us from time to time. Earlier today we had an interesting few minutes trying to work out why a button wasn't doing what James wanted. It was fun talking about [pull-up resistors] and it made me want to dig out my copy of [The Art of Electronics] when I get home.

Brittany Ferries
----------------

My other half & I have been contemplating a short break in Normandy and so I spent a bit of time trying to use the diabolical Brittany Ferries website to obtain prices for various combinations of dates and times. Unfortunately you have to go through 4 pages of forms to get to a price for *one* combination and then start all over again. Even though I was short of time, I got so frustrated I made a start on [automating the process][brittany-ferries-repository].

Chocolate
---------

The short week was nicely rounded off by the appearance of Easter eggs on all our desks courtesy of our very kind visiting [prospective author][computation-book], Tom Stuart.

<img src="/images/blog/easter-eggs.png" style="width: 100%"/>

That's all, folks.

-- James.

[^active-places]: a website that's supposed to help you find local sports facilities - it's so useless it doesn't deserve a proper link

[Ruby]: http://www.ruby-lang.org/
[people-joining-and-leaving-gfr]: /week-167#people-leaving-and-joining-was-llp-vs-ltd
[FreeAgent]: http://www.freeagent.com/
[3CA]: http://www.3ca.co.uk/
[freeagent-corp-tax-suggestion]: http://community.freeagent.com/freeagent/topics/corporation_tax_calculation_rates_reliefs
[My First Ruby]: http://www.slideshare.net/hlame/my-first-ruby
[deep-fried-mars-bars]: https://twitter.com/#!/lazyatom/status/186242502393741313
[scotch-mist]: https://twitter.com/#!/lazyatom/status/186790541017616386
[tom-dressed-as-footballer]: https://twitter.com/#!/tomafro/status/185759119989407744/photo/1
[hotel-ibis-delight-1]: https://twitter.com/#!/tomafro/status/186019145995927553
[hotel-ibis-delight-2]: https://twitter.com/#!/tomafro/status/186021319089979393
[hotel-ibis-delight-3]: https://twitter.com/#!/tomafro/status/186026527178231808
[sauron-pivotal]: https://www.pivotaltracker.com/projects/506159
[sauron-repository]: https://github.com/freerange/sauron
[sauron-pull-requests]: https://github.com/freerange/sauron/pulls
[dont-mock-third-party-libraries]: http://www.mockobjects.com/2007/04/test-smell-everything-is-mocked.html
[mock-commands-stub-queries]: http://www.jmock.org/yoga.html
[Twitter Bootstrap]: http://twitter.github.com/bootstrap/
[Rails asset pipeline]: http://guides.rubyonrails.org/asset_pipeline.html
[first-rewired-state]: http://rewiredstate.org/events/hackthegovday
[active-places-reloaded]: http://chrisroos.co.uk/blog/2009-03-09-hack-the-government-day-rewired-state
[Zootool]: http://zootool.com/
[merge-pull-request]: https://gist.github.com/2311719
[Single Responsibility Principle]: http://en.wikipedia.org/wiki/Single_responsibility_principle
[pull-up resistors]: http://en.wikipedia.org/wiki/Pull-up_resistor
[The Art of Electronics]: http://en.wikipedia.org/wiki/The_Art_of_Electronics
[brittany-ferries-repository]: https://github.com/floehopper/brittany_ferries
[computation-book]: http://experthuman.com/computation-book
[money-image-on-flickr]: https://www.flickr.com/photos/59937401@N07/5929622407/
[money-image-author-on-flickr]: https://www.flickr.com/photos/59937401@N07/
[cc-by-2.0]: https://creativecommons.org/licenses/by/2.0/

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2012-04-05 13:32:00 +01:00
:updated_at: 2012-04-05 13:32:00 +01:00
:page_title: Week 168