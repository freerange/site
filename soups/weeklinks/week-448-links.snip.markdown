Week 448 - Interesting links
============================

### [It's just lunch](http://www.zeldman.com/2017/08/08/reconnecting-with-former-clients-design-problem-lets-talk/)

Jeffrey Zeldman's experiences on having lunch with former clients. At Go Free Range we have a principle of always meeting anyone who contacts us with a potential project. And we'll always tell them if we think working with us is not the best way to develop their idea. We get a lot out of these conversations and are happiest when we're able to help - whether that involves a paid engagement or not. <%= by('chris-lowis') %>


### [ABCUL perseveres with Model Credit Union project](http://www.bankingtech.com/856331/abcul-perseveres-with-model-credit-union-project/)

I was depressed to read this update on the "progress" of the government-backed [Credit Union Expansion Project][cuep-wiki]:

> The project started in 2014. The first go-lives were originally scheduled for 2015 but got pushed back by nearly a year.

And even a couple of months ago, only *three* credit unions were using the new platform. I'm really not convinced that the approach taken by ABCUL/Cornerstone has given the government (and therefore us) very good value for money and the lack of transparency has been woeful. <%= by('james-mead') %>

[cuep-wiki]: https://github.com/freerange/bank/wiki/Credit-Union-Expansion-Project


### [PharoLambda Serverless Debugging](https://www.youtube.com/watch?v=bNNCT1hLA3E)

I enjoyed this video of [Tim Mackinnon][] demonstrating how to run an [Alexa Skill][] on [AWS Lambda][] using [Pharo Smalltalk][] via [PharoLambda][]. The most interesting bit was when he serialized the remote Smalltalk environment (on AWS Lambda) into a file in an S3 bucket and then de-serialized it locally in order to use the debugger in his development environment to track down and fix the problem. Very neat! <%= by('james-mead') %>

[Tim Mackinnon]: http://t.co/jhuKJhIhFM
[Alexa Skill]: https://developer.amazon.com/alexa-skills-kit
[AWS Lambda]: https://aws.amazon.com/lambda/
[Pharo Smalltalk]: http://pharo.org/
[PharoLambda]: https://gitlab.com/macta/PharoLambda


### [graphcool/chromeless](https://github.com/graphcool/chromeless)

Continuing the AWS Lambda theme, this project which allows you to programmatically control a headless Chrome browser on AWS Lambda via a WebSocket looks interesting. You can see a nice demo of it in use in [Netlify's Chromeless Playground][]. <%= by('james-mead') %>

[Netlify's Chromeless Playground]: https://chromeless.netlify.com

### [The probability my son will be stung by a bumblebee](http://www.sumsar.net/blog/2017/08/the-probability-my-son-will-be-stung-by-a-bumblebee/)

A fun article from Rasmus Bååth where he uses probabilistic reasoning, experimental data and a model built with [Stan](http://mc-stan.org/) to predict the probability that his son will step on a bee while playing barefoot in the garden. The fun academics get up to when they are on holiday! <%= by('chris-lowis') %>

:name: week-448-links
:updated_at: 2017-08-18 13:00:41.941977000 +01:00
:created_at: 2017-08-18 13:00:41.941965000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 448 - Interesting links
:extension: markdown
