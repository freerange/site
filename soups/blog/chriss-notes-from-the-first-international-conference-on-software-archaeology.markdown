Chris's notes from The First International Conference on Software Archaeology
========

*NOTE.* This is <a href="http://chrisroos.co.uk/blog/2014-02-07-notes-from-the-first-international-conference-on-software-archaeology" rel="canonical">cross-posted from my personal blog</a>.

[James](http://jamesmead.org/) and I attended [The First International Conference on Software Archaeology](http://ticosa.org/) last week.

I've spent some time going through the notes I made and have categorised the things I took from the presentations into three broad themes. I'm not sure how effective a picture this paints for anyone that wasn't there but hopefully there's something useful in here. For an alternative overview, please see [Jeff Foster's TICOSA writeup](http://www.fatvat.co.uk/2014/02/the-first-international-conference-on.html) or the [TICOSA sessions](http://ticosa.org/sessions.html) page which contains some of the presentation slides.

The three broad themes are analysing legacy code (the past), working on legacy code (the present) and helping our future selves (the future).

## Analysing legacy code

*I think the main thing I took away from this theme was that there's quite a lot of work going into what still appears to be a fairly new idea.*

[Michael Feathers](https://twitter.com/mfeathers) demonstrated the use of his [delta-flora](https://github.com/michaelfeathers/delta-flora) tool to analyse Ruby projects over the history of the git repository.

[Dmitry Kandalov](https://twitter.com/dmitrykandalov) demonstrated his [code-history-mining IntelliJ plugin](https://github.com/dkandalov/code-history-mining) that was inspired by Michael's delta-flora.

[Robert Smallshire](https://twitter.com/robsmallshire) showed us a number of ways of visualising complexity, including maps of complexity density, and explained how we can use these to identify areas of concern in a system.

[Stéphane Ducasse](https://twitter.com/stephaneducasse) told us that having to maintain software means that the software is useful and successful. So, maintenance is a good thing but we can often benefit from dedicated tools that help us understand our specific problems.

## Working on legacy code

*The main thing I took away from this theme was the reinforcement of my belief that we shouldn't be so quick to think that we can improve something by throwing it away and rewriting it.*

### Avoiding the temptation to throw away what's there

Stéphane Ducasse reminded us that, "Early decisions were certainly good at that time"

[Keith Braithwaite](https://twitter.com/keithb_b) explained that different types of people approach problems in slightly different ways: Computer scientists might prefer a single longer method that contains all the logic, while OO advocates might prefer many smaller methods. There are merits to both approaches and we should remember that projects coded in a style different to our own aren't wrong; they're just different.

[Chris Oldwood](https://twitter.com/chrisoldwood)'s lightning talk [contained a paraphrased quote](https://twitter.com/dmitrykandalov/status/429401314234494977) (coined by either [Robert Frost](http://en.wikiquote.org/wiki/Talk:Robert_Frost) or [G.K. Chesterton](http://platitudesundone.blogspot.co.uk/2010/04/dont-take-fence-down-until-you-know-why.html)) that really resonated with me:

> Don't ever take a fence down until you know why it was put up

[Stuart Curran](https://twitter.com/stuartcurran) reminded us of George Santayana's quote, "Those who cannot remember the past are condemned to repeat it"

### Using tools to get an overview of the code we're working on

Michael Feathers (using delta-flora), Dmitry Kandalov (using his IntelliJ plugin) and Robert Smallshire (in his dependency structure matrices) all demonstrated ways of visualising which parts of the system are tightly coupled.

## Helping our future selves

*The main thing I took away from this theme was that code will be around for longer than we expect and we should do our best to help our future selves.*

Stéphane Ducasse reminded us that software is a living entity and will probably survive for longer that we might imagine. Stéphane gave examples of military and insurance systems that have been around for 15/20 years, which seemed like a long time until I realised that [Mocha](https://github.com/freerange/mocha) has been around for about [8 years](https://github.com/freerange/mocha/commit/df720ef11f8cdb21cf5dfbc5f84f35e325fa8258).

Robert Smallshire showed some graphs that suggest code is likely to outlast most other aspects of an organisation. By the time you're working on a 20 year old codebase, you're probably working in a team where only 20% have been around from the beginning.

Michael Feathers suggested we be more aware of how seemingly unrelated factors can affect the complexity of our code. He used the fascinating example of how [parole is more likely to be granted at certain times of day](http://www.wired.com/wiredscience/2011/04/judges-mental-fatigue/) to illustrate the sort of things we could be looking for.

I loved [Matt Wynne](https://twitter.com/mattwynne)'s metaphor that he uses to explain refactoring to non-developers: Think of developers as chefs, their output as meals and refactoring as keeping the kitchen clean. Matt also talked about analysing the commits in the new [cucumber-ruby-core project](https://github.com/cucumber/cucumber-ruby-core) and saying that he thinks that about 75% of the commits are refactoring commits.

[Daniel Brolund](https://twitter.com/danielbrolund) described how to use the Mikado method to ensure that we're always reshaping the system to get it into a state that's ready to accept new changes.

[Ivan Moore](https://twitter.com/ivanrmoore) gave us some practical advice about [being kind to our future selves in his lightning talk](http://puttingtheteaintoteam.blogspot.co.uk/2014/02/making-life-easier-for-future-software.html).


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2014-02-07 12:37:00 +00:00
:updated_at: 2014-02-07 12:37:00 +00:00
:page_title: Chris's notes from The First International Conference on Software Archaeology
