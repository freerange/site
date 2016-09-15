Show and Tell 24
================

James and I were joined by [Amy][amy-wagner], [Pablo][pablo-manrubia], [Riccardo][riccardo-cambiassi], [Rob C][rob-chatley], [Rob D][rob-dupuis], and [Tom S][tom-stuart] for our 24th Show & Tell. We hired a meeting room at Forge & Co which worked out really well.

## ExtJS

Pablo talked about [Zendone][zendone]: A GTD app he's created with his family and friends.

[zendone]: https://www.zendone.com/

Pablo

* GTD app with ExtJS
* v1 in Backbone, jquery-ui, underscore and other frontend frameworks. All with a Rails backend.
* Quite painful to develop but it worked.
* Contained lots of handcrafted JS on top of jquery-ui.
* People asking for the iphone and android app.
* Causing them pain in their spare time - supposed to be a fun thing to work on.
* They explored Ember and Angular but eventually settled on ExtJS.
  * I think one of the advantages was the components you get out of the box with ExtJS.
  * Another advantage was that it works across all devices.
    * They have web app, Mac app with Electron, ios with Cordove, Android with ???
* It doesn't have a great reputation. possibly because of problems in some earlier versions.
* Good enough for Pablo's requirements.
* Disadvantages
  * Paid for framework - about $3000/year for a licence + support costs.
  * Owned by a private company - it might disappear

* The backend is still Rails. Very simple API.
* There's a native iOS app, using Cordova to wrap the web interface?
* All works offline.
* Riccardo suggested Ionic - doing something similar with Angular? and React Native.
* Zendone.com

## Day of the madman

Rob D

* https://dayofthemadman.com/
* Started 4 years ago. Created demo and then left it.
* Demo contains about 2 minutes of gameplay.
* Demo is him and his mates
* Resumed about 4 months ago.
* Want to create a kickstarter campaign to fund more development.
  * Hire a proper stunt crew
  * Hire better cameras
  * Offer for people to get involved in the game.
* Want to make a proper game
* Questions for the group:
  * Experience of cross platform game development?
  * Experience of kickstarter?
* Considered offering it as an experience for companies but not sure about the idea.
* Hat tip to Mad Dog McCree and American Laser Games.
* Showed us how they use spreadsheets to map sprite positions and times to movie clips.
* Should now be able to use subtitle tracks to store this information, which wasn't possible in the past.
* They're hoping to get about 4-6 minutes of gameplay per location and have about 8 locations.
* Rob mentioned that they were previously really pushing the limits of the android phones available. It should all be much easier now.
* Riccardo mentioned that Steam offer a refund if a game contains less than 2 hours of gameplay.
  * Not that they'll be advertising on Steam as that's for computer games rather than phones/tablets, I think.

## b1 visa for working in USA

* Tom S
* Is going to help Sandi Metz teach an OO design course
* In New York
* Investigated visas.
  * Two options
    * B1. Easy to get but doesn't allow you to be paid for the work you're doing.
    * H1B. Hard to get - lottery with limited places that opens each April. Allows you to be paid.
* Found the Foreign Affairs Manual, section 402.2-5 (f) that describes a B1 in leiu of H1B visa.
  * This visa isn't available everywhere but it is available in the US embassy in London.
* Took lots of backup material for his application - none of which was necessary in the end.
* He got his visa that's valid for 1 year.

## Lambda calculus

* Tom S
* Created a version in Backbone - back in S&T ???
* Rewrote it in React
  * Didn't get any new understanding from the act of rewriting
* Has recently created a new Ruby implementation ready for the Computation Club meeting next week
  * This really helped him understand what he was trying to do.
* Model contains an AST, Document and Selection.
* Built a REPL that allows him to explore the expressions in the Lambda calculus.
* He switches between the Greek and British keyboards so that he can easily type the Giraffe character.

## Software approach to teaching

* Rob C
* Section of a presentation he gave at Swanseacon
* Traditional is lots of coursework upfront, then a break, then a test, then a break before getting results.
* He's been trying to shorten the feedback loops
* Setting an exercise each week that's marked at the end of the week is good but very intensive - 150 students = 150 lots of marking
* So they've automated the things they can. Students submit a SHA of a commit that should pass the exercise.
  * It's automatically checked for compilation, tests passing, code coverage.
  * The thing that's then looked at by a professor has already been vetted so that it should be in a reasonable state to check.
* Encouraged pair programming. This has been generally positive - lots of people enjoy/prefer it. Nice side-effect of reducing the number of submissions to 75.
* Group projects in 3rd year
  * Got rid of lectures
  * Put all lecture material online
  * Made lecturers available to students
  * No one really made us of the help or used the lecture material
* Coming year
  * Put in 4 checkpoints during the year. Test as you go rather than testing at the end
  * Ask people to use Trello/Jira/something and have it available to supervisors
  * Automatically take screenshots of project management tool over time. See whether people are updating/using them.

* Is anyone else doing anything similar to Rob? Not that he's aware of. General sense of complacency in universities. Particularly when compared to private business.

:render_as: blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2016-08-26 11:08:00 +01:00
:updated_at: 2016-08-26 11:08:00 +01:00
:page_title: Show and Tell 23
