Week 482
========

Hello! This week we moved into our new office, Ben had his first full week as a Go Free Range member and we took some time to learn and work on a side project.

## New Office ##

We recently took a 4-person office in a [Ministry of Startups](https://www.ministryofstartups.com/)-run building on Turner Street in Whitechapel. We'd being paying £375/month for our co-working desks at The Office Group and while having access to their very well maintained buildings across London was a definite plus, the costs started to add up when we considered having a fourth membership. Ministry of Startups say:

> We're real, We're honest, We're not perfect. (But we definitely know what startups actually need from a coworking space)

Our 4-person office is partitioned from a larger open warehouse-like space on the top floor of a building. We have great natural light and views over the city, solid desks, access to a small kitchen, a quiet working environment and fast, reliable wifi. We've been here every day this week so far, and are happy with the £225/desk/month price.

This seems like a good base for now while we consider looking for something more conveniently located for all of us. If you happen to be in the Whitechapel Area, get in touch and pop by for a cuppa.

## Welcome Ben ##

Ben had his first day with us in the office on Monday and during the week we have been getting him set up with accounts on the various systems we use (Trello, Harmonia, Google, Heroku, AWS etc.). We also added him to our online banking and made sure he was included in our payroll and auto-enrolment pension contributions.

When I joined GFR this time last year it had been quite a long time since anyone had joined and we took the opportunity to document some of the things we needed to do. I think that documentation came in handy this time but there's still a lot of manual work to be done - and frustratingly, paper forms to print and send by post.

It's great to have Ben in the team and when the [Harmonia](https://harmonia.io/) gods smile upon him you'll hear from him in our weeknotes.

## Voice-controlled devices ##

We're between client projects this week so we thought we'd take some time out to learn about voice-controlled "virtual assistants". These services, for example Apple's Siri, Amazon's Alexa or Google's Assistant are accessed via smartphone or desktop applications, or through dedicated hardware such as the Alexa or Google Home. We have a few of these types of devices to hand and thought it would be fun to play around with them.

The task we set ourselves at the beginning of the week was to see if we could port an [Infocom-style text adventure game](https://en.wikipedia.org/wiki/Z-machine) to a voice-controlled assistant.

We started by surveying some of the technology that is available. I read through the [documentation and tutorials](https://developer.amazon.com/alexa-skills-kit) for the Alexa system, while Chris spent some time looking at the [Google Assistant](https://developers.google.com/actions/). Meanwhile Ben investigated [Dialogflow](https://dialogflow.com/), an abstraction service that allows applications to be deployed to multiple assistant platforms.

In order to learn a bit more about the technology we decided to build a simple application first. At Go Free Range we often assign card on our trello board to one of us at random. We thought we'd build a voice-controlled application to do this. By Wednesday we had something working on Google Assistant and Alexa.

Developing an Alexa application, or "skill" involves two phases. Firstly the skill is registered in the Alexa developer console. Here we choose a name, define a series of commands (known as "intents") and provide some sample phrases to trigger those intents. For an example, a conversation with our Go Free Range Helper skill might go like:

<pre>
> Me: Alexa, ask the Go Free Range Helper to choose someone
> Alexa: Chris L is the chosen one
> Me: Choose someone else
> Alexa: Ben is the chosen one
</pre>

The command to "choose someone" results in some JSON like

<pre>
'request': {
  'locale': 'en-US',
  'type': 'IntentRequest',
  'intent': {
    'name': 'assignment'
  }
}
</pre>

being sent to a application that can be accessed at an end point defined in the skill configuration. The application responds with the text to be spoken which is then read out by Alexa. Amazon suggest to use their "serverless" [Lambda](https://aws.amazon.com/lambda/) platform to run the application, but it is also possible to use any application accessible over HTTPS.

We wrote a [simple nodejs application](https://github.com/freerange/alexa-helper) to handle the logic of the application. We also spent some time learning how to deploy Lambda applications using the [Serverless Framework](https://github.com/serverless/serverless) and test it using [Jest](https://facebook.github.io/jest/).

Chris R also implemented the same application for the Google Assistant platform using [Dialogflow](https://dialogflow.com/) to write and deploy the application. Here's a video of it being tested using the developer tools in Dialogflow:

<video width="600" height="400" controls>
  <source src="images/blog/gfr-assignomatic.mov" type="video/quicktime">
  <source src="movie.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>

Towards the end of the week, having got a grasp on the development process and terminology, we started to work on our more sophisticated application idea - porting a text adventure game to Alexa. Ben investigated several implementations of the "z-machine" interpreter that allows popular text adventure games to be run. He settled on [this Ruby implementation](https://github.com/freerange/gruesome) and set about modifying it to work with our proposed architecture. This involved modifying the code to allow the state to be serialised and reloaded, which will allow our Alexa application to keep track of where a player is in the game. He also added a Sinatra-based API to the engine so that it could be played using HTTP.

As I write, Chris is hooking up this game engine to a new Alexa Skill. If we decide to carry on with this side-project next week, we'll have more to show you then.

Until next time!

<!-- add content here -->

:name: week-482
:updated_at: 2018-04-13 14:20:36.354405000 +01:00
:created_at: 2018-04-13 14:20:36.354396000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 482
:extension: markdown
