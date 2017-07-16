Monday Links - 228
============

### [Collaborative editing with different editors](https://floobits.com/)

I know <%= l('james-mead', 'James M') %> has already been looking into collaborative editor environments (see <%= l('week-227-links', 'CoVIM from last week') %>), but wouldn't it be better if you could each use your own preferred editor? Floobits would seem to promise exactly that. They've written plugins for VIM and Sublime Text already, which could be enough for us to try it out in earnest soon.

Unfortunately, I couldn't actually get it to work. <%= by('james-adam') %>


### [Build your own Heroku with Cloud Foundry](http://www.youtube.com/watch?v=e0EprkBamvQ&feature=youtu.be)

The inimitable [Dr Nic](http://drnicwilliams.com/) gave a talk last month on building a Heroku-like system with Cloud Foundry.  I'm always looking for ways to make the process of getting an app up and running faster, and have watched enough of this to see it looks really promising.  I hope to try it this week - I'll let you know how I get on. <%= by('tom-ward') %>


### [Reach For The Dead](https://soundcloud.com/warp-records/reach-for-the-dead)

Boards of Canada, my favourite Scottish musicians (sorry Runrig) have a new album out early next month.  Last week warp posted this track onto Soundcloud.  You've probably already heard it, but if not put it on repeat while you wait with the rest of us for the full album. <%= by('tom-ward') %>


### [Understanding Computation](http://codon.com/computation-book)

Tom Stuart's book is finally available, in electronic and dead-tree forms. If you enjoyed his [Ru3y Manor presentation](http://rubymanor.org/3/videos/programming_with_nothing/) (and if you haven't seen it, go watch it now!), then you'll almost certainly want to pick up a copy. <%= by('james-adam') %>


### [Try Ghost](http://tryghost.org/)

The [Kickstarter campaign](http://www.kickstarter.com/projects/johnonolan/ghost-just-a-blogging-platform) for this open-source blogging platform is already pretty much finished and very well funded, but what caught my eye in the teaser video was the side-by-side editing and preview feature. We're pretty much in the business of making "admin" interfaces, and it got me thinking about how we might make Markdown more user-friendly. <%= by('james-adam') %>


### [Leaving Google’s silo: Alternatives to Gmail, Talk, Calendar, and more](https://kkinder.com/2013/05/21/leaving-googles-silo-alternatives-to-gmail-talk-calendar-and-more/)

Ken Kinder claims that "Google is the new AOL", has given up on open standards and is gradually removing its properties from the open web. While I think his claims have _some_ justification, the existence of [The Data Liberation Front](http://www.dataliberation.org/) means that I don't feel as paranoid as he does. However, it was interesting to read about alternatives to Google products. I've had a [Fastmail](https://www.fastmail.fm/) account since 2002 and have always found it to be an excellent service, so it wasn't a surprise to see it in the list. However, [Fruux](https://fruux.com/) and [Radicale](http://radicale.org/) were new to me and worth some investigation. The article has also prompted me to have another look at [Soocial](http://www.soocial.com/), a service that I experimented with a while back. <%= by('james-mead') %>


### [minitest-line](https://github.com/judofyr/minitest-line)

This is a [Minitest](https://github.com/seattlerb/minitest) v5 plugin for running focused tests which is based on a [pull request](https://github.com/seattlerb/minitest/pull/267) I submitted a couple of months back. I'm grateful to [Magnus Holm](http://judofyr.net/) for taking the time to translate the idea into a plugin. <%= by('james-mead') %>


### [Does Europe need its own MOOC](http://www.guardian.co.uk/higher-education-network/blog/2013/mar/28/european-mooc-opportunities-challenges)

This Guardian article suggests that [MOOCs](http://en.wikipedia.org/wiki/Massive_open_online_course) might be the only means of survival for smaller universities. It's going to be interesting to see whether the new wave of online courses turns out to be as influential as this in practice. <%= by('james-mead') %>


### [Designing an API in hell](http://pivotallabs.com/designing-an-api-in-hell/)

This describes how a developer started using [test parallelization](http://blog.zenspider.com/blog/2012/12/minitest-parallelization-and-you.html) early in a project and how it influenced his design decisions. I'm not really persuaded that this is a Good Idea™ in the general case, but it reminded me that generating unique IDs (using GUIDs) on the client side can be a useful tactic to adopt. <%= by('james-mead') %>


### [Indieweb antipatterns - mass adoption](http://indiewebcamp.com/wiki/index.php?title=antipatterns#mass_adoption)

There's a lot of good stuff on this page, but the "mass adoption" section really resonated with me.

> Design for yourself and get immediate rapid feedback which you can use to quickly iterate, try experiments, change things around, continuously incrementally improve things etc.

This sentence in particular captures one of the things I really enjoy about working on [Roosmarks](https://github.com/chrisroos/roosmarks) and [Money Tracker](https://github.com/chrisroos/money-tracker). <%= by('chris-roos') %>


### [Get Agile With Pivotal Tracker by Dan Podsedly](http://vimeo.com/14668101)

It's a couple of years old but I've only just come across this video and enjoyed learning how Pivotal use Tracker. There were a few things I found interesting, generally because they coincided with or differed from my own use of Pivotal Tracker. <%= by('chris-roos') %>

* Pivotal aim to have about 6 to 8 weeks worth of stories in the backlog. This seems like quite a lot to me - I wonder how they keep on top of it.

* They typically work in weekly iterations but are really just working their way through the entire backlog.

* The icebox should be used as short term storage only. They're working (or were, two years ago) on ways to discourage people keeping stories in here too long.

* They use chores to tackle debt in the code. Chores aren't estimated because you're not directly delivering business value but they want them visible so that you can have a conversation with the customer about them. This has always felt a little uncomfortable to me - we should be continuously refactoring as part of each story we pick up.

* They tend to keep the people on a project relatively stable so that they can rely on the velocity figure generated by PT.

* They estimate stories in the icebox and then move them to the backlog.

* The clone panel option is there to make it easier to move stories around within a single panel, from the top to the bottom for example, without having to wait for the whole list to scroll. I've been wondering what this was for, for ages.

* They use labels for additional workflow, e.g. "needs design", or "blocked".


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2013-05-28 14:15:00 +01:00
:updated_at: 2013-05-28 14:15:00 +01:00
:page_title: Monday Links - Week 228
