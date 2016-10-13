Week 257
========

We had an excellent [Christmas Mullfest][] on Wednesday evening. [Chris](/chris-roos)' mulled wine was a great success, but I'm not sure [Nicky][] and I did [Felix][]'s [hot buttered rum recipe][] justice. What's more the buttered rum seems to have [caused some disrupted sleep](https://twitter.com/hlame/status/413615838097580032) - sorry folks! Thanks to everyone for making the effort to come along - it was really good to see you.

Chris & I spent the next day in the office working on [FutureLearn][] while clearing up the debris from the night before. That morning I switched the FutureLearn project over to use [Travis CI][] instead of [Jenkins CI][]. A bit later on I noticed that we were seeing some weirdness with commits from unmerged pull requests appearing in our `master-build-success` branch which we use for deployment to a staging environment. Not a very desirable state of affairs.

After a lot of investigation and some help from [Konstantin Haase][] in the Travis CI campfire room, it turned out that when a Travis CI build is triggered by a pull request (as opposed to being triggered by a commit), then the `TRAVIS_BRANCH` variable is set to the *target* branch and not the source branch. Anyway, we fixed the problem and submitted a [pull request](https://github.com/travis-ci/travis-ci.github.com/pull/430) to the Travis CI documentation repository.

What with all that excitment, I completely missed [Radio Roundabout][] and a rumoured appearance by [Tom Stuart][]. I hope it all went off ok.

It just remains for me to wish everyone a very Merry Christmas and a Happy New Year. We'll be back with our week notes and links early in 2014.

-- James


[Christmas Mullfest]: http://lanyrd.com/2013/freerange/
[Nicky]: https://twitter.com/knotnicky
[Felix]: https://twitter.com/felix_cohen
[hot buttered rum recipe]: http://www.lifetimetv.co.uk/lifestyle/cocktail-hot-buttered-rum
[FutureLearn]: http://futurelearn.com
[Jenkins CI]: http://jenkins-ci.org/
[Travis CI]: http://travis-ci.org
[Konstantin Haase]: https://github.com/rkh
[Radio Roundabout]: http://www.radioroundabout.com/
[Tom Stuart]: https://twitter.com/tomstuart

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2013-12-24 12:00:00 +00:00
:updated_at: 2013-12-24 12:00:00 +00:00
:page_title: Week 257
