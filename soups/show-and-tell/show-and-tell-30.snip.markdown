Show and Tell 30
================

* When: Wed 08 Mar 2017
* Where: Forge and Co, 154-158 Shoreditch High St, London E1 6HU
* Links: [attending.io](https://attending.io/events/gfr-show-and-tell-30/)

[Chris R](/chris-roos), [James](/james-mead) and [I](/chris-lowis)
were joined
by [Rob](https://github.com/robd), [Ben](https://twitter.com/beng)
and [Pablo](http://pmanrubia.info/) for our 30th Show and Tell event.

## Chris R

Chris lives on a houseboat moored on an island in the Thames. To get
on and off his boat he uses another small boat with an outboard
motor. This means he is particularly interested in the stream
conditions of the Thames where he lives.

The Environmental Agency do not seem to provide open data about the stream conditions but they do
have
[a website that gives a visual indication](http://riverconditions.environment-agency.gov.uk/).

Chris showed us a script
he
[has written](https://github.com/chrisroos/thames-river-conditions). It
uses PhantomJS to grab a screenshot of this page. He runs it on a
Digital Ocean instance and uses cron to take a snapshot every hour.

Creating the script made Chris wonder where the data comes from. He
noticed that the local lock keeper's board displays the local stream
conditions but that the information is often out of sync with the
website. This raises the question - does the lock keeper measure the
stream conditions, inform the Environment Agency who then update the
website? Or does the Agency have a device which measures the
condition, updates the website and the lock keeper who then updates
their board? Chris is interested in solving this puzzle and finding
out if there's a more machine-readable source of data that he could
get access to.

I asked Chris how he uses the downloaded data to assess the current
stream conditions. It turns out he uses the old-fashioned "throw a
twig in the river" trick. But it's good to have a backup!

## James

James had a few things to show us this week. At Go Free Range we use
Google Drive to store our documentation. And like with all cloud-based
services, it's good practice to keep a backup in case of outages or
data loss disasters. James showed us [rclone](http://rclone.org/) a
library which syncs between cloud storage solutions in a similar way
to how [rsync](https://en.wikipedia.org/wiki/Rsync) syncs between file
systems. It supports syncing without an intermediate 3rd server (for
example your laptop) but can also shuttle data between services by
keeping a local copy as it does so. James wrote up some instructions
to sync Google Drive with Amazon's S3 storage and we use this to
periodically take a backup of our data. James was particularly
impressed with the command line interface for `rclone`. It asks a
series of questions that makes it easy to setup the credentials
required for the tool to talk to the various services.

James has also been using
Google's
[OAuth 2.0 Playground](https://developers.google.com/oauthplayground/). This
web application makes it easy to experiment with code that uses
the [OAuth 2](https://oauth.net/2/) protocol to authenticate. It comes
with built in support for a large number of Google's APIs and can also
be used with 3rd party APIs that use OAuth - in particular James has
been using it to interact with
the [FreeAgent API](https://dev.freeagent.com/docs).

Finally, James was moving his personal blog engine from Webby to
Middleman. He created a new Git repository to hold the new version of
his blog but later felt sad about losing the git commit history from
the old project. He
discovered
[Git Grafts](https://git.wiki.kernel.org/index.php/GraftPoint) which
effectively allow the history from one git branch to be stiched onto
the end of a new one. One problem he ended up solving along the way
was that although common git commands such as `log` work fine when a
graft has been performed he actually needed to
run [`git-filter-branch`](https://git-scm.com/docs/git-filter-branch)
for everything to work as expected. James felt that if he did this
again he would have done all of the new development inside the old
repository as this would have been easier in the long run.

## Rob

Rob has a long-term client who runs a holiday cottage rental
company. For several years the client has been collecting the email
addresses of customers and potential customers but hasn't found the
time to do anything with them. This week Rob helped his client build
an email newsletter using Campaign Monitor that has a list of current
rentals and some timely news for the upcoming holiday season. Rob was
worried that because the email list contained email addresses that
were collected several years ago there was a strong possibility that
some people who received it would not remember that they had signed up
and may mark the email as spam. A spam report rate as low as 3 in
10,000 emails can mean that some email servers start to reject future
messages. Rob configured Campaign Monitor with some cohorts based on
sign-up date and sent the newsletter in batches starting with the most
recent cohort. He monitored the spam report rate, and was happy that
only 1 person marked the email as spam in the end. He's helping his
client think through the next steps - whether to continue sending
newsletters and if so how to test copy and other features to improve
the conversion rate.

## Ben

Ben has been taking his 8 year old son to a Saturday "code club" where
he is able to learn to program with other children. The club teaches
coding using [Scratch](https://scratch.mit.edu/) - an MIT-developed visual programming
language. Ben showed us the Batman-themed game his son had built which
involves Batman flying around a building grabbing things from windows
and putting them into his Batmobile.

![Ben shows us his son's Batman game written in Scratch](/images/blog/2017-03-08-show-and-tell-30-ben.jpg)

Scratch is a fully visual programming environment that involves
connecting blocks together to build programs. Ben showed us how
Scratch communicates the idea of types. For example control flow is
handled by putting hexagonal blocks (which represent boolean return
values) into hexagonal slots and only that shape of block will fit in
those positions. Ben was interested to see if his son was ready to
start programming with variables and functions. He showed
us [Snap](http://snap.berkeley.edu/) a variant of Scratch allowing the
user to "build their own blocks" by programming their behaviour in
a
[scheme](https://en.wikipedia.org/wiki/Scheme_(programming_language))-like
language.

Ben said his son took to Snap fairly quickly and could see how it
would allow him to do some things that were very difficult in
Scratch. He said the big downside is that he doesn't want to type! Ben
mentioned that at code club when the children move on to programming
in Python that the syntax of the language and having to type
everything correctly is one of the biggest barriers to progression.

Ben finished up by showing some variants and extensions of
Scratch/Snap including [Edgy](http://www.snap-apps.org/edgy.html) an
environment for exploring graphs and graph theory.

## Chris L

At Go Free Range we try to distribute all of the work required to run
our company fairly among the three of us. We do this to ensure that
everyone has a good working knowledge of how everything works. We use
a combination of [harmonia.io](https://harmonia.io) and calendar reminders to randomly
assign each of our upcoming tasks to one specific person. In order to
make it possible for someone to complete a task we keep detailed
step-by-step guides in our internal wiki. I talked about this process
and showed an example for a task I had recently been asssigned -
filing our quarterly VAT returns.

I spoke about how I think there is a lot of value locked inside our
internal wiki and some of the processes - as well as the reasons why
we work in this way, might be useful to other businesses. I'm
particularly interested in how we can help other small groups of
freelancers form their own co-operatives. I showed a couple of
examples of guides that other companies have published including New
Zealand
cooperative [Enspiral's handbook](https://handbook.enspiral.com/) and
Ruby development
shop [Thoughtbot's playbook](https://thoughtbot.com/playbook). We
discussed some of the pros and cons of sharing this kind of
information - in particular we noted how useful these type of guides
can be to new starters in an organisation but also how they can be
used to enforce certain types of behaviour if they are not written
from a common, shared set of experiences and understanding. I'm going
to think a bit more about where I'd like to take this project next.

![James shows Jase Cale's slides about Go Free Range](/images/blog/2017-03-08-show-and-tell-30-james.jpg)

My discussion of how we work reminded James of a slide deck by former
Go Free Range member [Jase](/jason-cale) on how we work. We went
though those slides for a while before heading downstairs for a drink.

:name: show-and-tell-30
:updated_at: 2017-03-10 16:08:58.834645000 +00:00
:created_at: 2017-03-10 16:08:58.834639000 +00:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Show and Tell 30
:layout: show-and-tell-layout
:extension: markdown
