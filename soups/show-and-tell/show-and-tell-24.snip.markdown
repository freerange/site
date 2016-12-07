Show and Tell 24
================

[James][james-mead] and I were joined by [Amy][amy-wagner], [Pablo][pablo-manrubia], [Riccardo][riccardo-cambiassi], [Rob C][rob-chatley], [Rob D][rob-dupuis], and [Tom S][tom-stuart] for our 24th Show & Tell.

![Show & Tell 24 at Forge & Co](/images/blog/2016-09-14-gfr-show-and-tell-24.jpg)

We hired a meeting room at [Forge & Co][forge-and-co] for the event which worked out really well.

[amy-wagner]: http://amyeee.com/
[forge-and-co]: http://forgeandco.co.uk/
[james-mead]: /james-mead
[pablo-manrubia]: http://pmanrubia.info/
[riccardo-cambiassi]: https://github.com/bru
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://github.com/robd
[tom-stuart]: http://codon.com/

---

## Ext JS

Pablo talked about [Zendone][zendone]: A [GTD][gtd] app he, his brother and some friends have written, run and maintain in their spare time. It sounds as though they have a moderate number of paying customers which is great!

The first version of Zendone was written using a Rails backend and a variety of JavaScript frameworks and libraries (e.g. [Backbone.js][backbone-js], [jQuery UI][jquery-ui] and [Underscore.js][underscore-js]) on the frontend. Not only was this hard to maintain but it was also difficult to get it working well on touch devices. The lack of touch device functionality became a real problem as more and more of their customers were asking for Android and iPhone versions of the app.

They realised that they weren't going to be able to support the demand for a touch version with the current software and set about investigating their options. They tried both [AngularJS][angular-js] and [Ember.js][ember-js] before deciding to go with [Ext JS][ext-js]. It sounds as though one of the main advantages of Ext JS is the cross-platform components you get out of the box.

They've now finished version 2 of the app and are really pleased with how it's turned out. It's much easier to maintain and they've been able to satisfy the demand for native apps for Mac, iOS and Android.

While they're very happy with Ext JS, Pablo pointed out that it might not be for everyone. The company switched from open source only to a dual license, making Ext JS available under GPL and a commercial license. It sounds as though this caused some upset in the community and means that you now have to pay if you want to use Ext JS in a closed source app.

In the discussion afterwards, Riccardo mentioned that the [Ionic framework][ionic] offers something similar to Ext JS for Angular JS.

[angular-js]: https://angularjs.org/
[backbone-js]: http://backbonejs.org/
[ember-js]: http://emberjs.com/
[ext-js]: https://www.sencha.com/products/extjs/#overview
[gtd]: https://en.wikipedia.org/wiki/Getting_Things_Done
[ionic]: http://ionicframework.com/
[jquery-ui]: https://jqueryui.com/
[underscore-js]: http://underscorejs.org/
[zendone]: https://www.zendone.com/

---

## Day of the Mad Man

Rob D spoke about [Day of the Mad Man][day-of-the-mad-man]: an Android game he and a friend developed about 4 years ago.

The game is a first person shooter using live action video in the same vein as [Mad Dog McCree][mad-dog-mcree]. It's currently a playable demo that has you trying to shoot Rob and his mates. It contains three locations and about 2 minutes of gameplay.

They resumed working on it about 4 months ago and are in the process of creating a [Kickstarter][kickstarter] campaign to see if they can get some funding for continued development. Rob was mostly interested in whether anyone had any experience with either cross platform game development or of Kickstarter campaigns. Unfortunately, I think we all came up blank. Sorry Rob!

They'd like to hire a proper stunt crew, film using better cameras and turn it into a full game with about 4 to 6 minutes of gameplay across 8 locations. One of the ideas they have for the Kickstarter is to reward people by allowing them to star in the game which I can imagine being quite popular.

Rob explained that they were pushing the limits of what Android devices could do 4 years ago but that the game should be much easier to write now. He showed us how they used a spreadsheet to record all the details necessary to tie up the various film clips and locations of people. Apparently Android devices now support subtitle tracks in videos which means that they should be able to encode most/all of this information in those tracks.

[day-of-the-mad-man]: https://dayofthemadman.com/
[kickstarter]: https://www.kickstarter.com/
[mad-dog-mcree]: https://en.wikipedia.org/wiki/Mad_Dog_McCree

---

## Work visa for USA

Tom spoke about his experience of getting a visa so that he can teach a [Practical Object-Oriented Design Course][pood-course] in New York with [Sandi Metz][sandi-metz].

There were two visas that looked as though they might be suitable: the [B1][b1-visa] and [H-1B][h1b-visa]. Unfortunately neither of these were quite appropriate. The B1 is relatively easy to get but doesn't allow you to be paid for any work while the H-1B allows you to be paid but is really quite hard to get.

Tom was considering turning the opportunity down when he came across the [B1 in lieu of H-1B visa][b-in-lieu-of-other-visa]. The use of a [B1 for "aliens normally classifiable H1 or H3" is documented in the Foreign Affairs Manual][fam-402-2-5] and sounds just about perfect for Tom's needs. It would appear that these visas are relatively rare (fewer than 1000 issued in 2011 according to Wikipedia) due to them being hard to obtain. Fortunately for Tom the US Embassy in London is one of the few places that they can be approved.

Although he had to wait at the embassy for a while, the actual interview was pretty painless and Tom is now the proud owner of a B1 in lieu of H-1B visa that allows him to teach in New York.

Tom finished by pointing out that the [US Embassy in London are allowing people to register for Global Entry][us-embassy-global-entry] for a 60 day period starting 26th September. It sounds as though this would benefit anyone that travels to the US frequently and wants to avoid the queues at immigration.

[b-in-lieu-of-other-visa]: https://en.wikipedia.org/wiki/B_visa_in_lieu_of_other_visas
[b1-visa]: https://en.wikipedia.org/wiki/B_visa
[h1b-visa]: https://en.wikipedia.org/wiki/H-1B_visa
[fam-402-2-5]: https://fam.state.gov/FAM/09FAM/09FAM040202.html#M402_2_5_F
[pood-course]: http://www.sandimetz.com/courses
[sandi-metz]: http://www.sandimetz.com/
[us-embassy-global-entry]: https://uk.usembassy.gov/global-entry-enrollment-center-top-open-in-london/

---

## Lambda calculus

Tom showed us some more work he's done on his ongoing [Lambda Calculus][lambda-calculus] visualisation project.

He first showed us a version of this visualisation written using Backbone.js  in [week 268][week-268] and then again in [Show & Tell 8][show-and-tell-8-lambda-calculus]. By [Show & Tell 9][show-and-tell-9-lambda-calculus] he'd rewritten it using [React][react].

Most recently he's rewritten it using Ruby in preparation for an upcoming [Computation Club meeting about Lambda Calculus][computation-club-lambda-calculus]. The act of writing it in Ruby has helped him understand and solve some of the problems he was having when using JavaScript and doing it in the browser. He's written a [REPL][repl] that allows him to construct functions and then to interactively modify those functions. It all looks very impressive even though most of it went over my head.

[computation-club-lambda-calculus]: http://lanyrd.com/2016/london-computation-club-lambda-calculus/
[lambda-calculus]: https://en.wikipedia.org/wiki/Lambda_calculus
[react]: https://facebook.github.io/react/
[repl]: https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop
[show-and-tell-8-lambda-calculus]: /show-and-tell-8#lambda-calculus
[show-and-tell-9-lambda-calculus]: /show-and-tell-9#lambda-calculus
[week-268]: /week-268

---

## Education for Engineers

Rob C (congratulations on the [Principal Teaching Fellow role][rob-c-new-job], Rob!) presented a couple of slides from the "Education for Engineers" talk he recently gave at [SwanseaCon][swansea-con].

He showed us a slide that illustrates a traditional university course outline: lots of lectures upfront, a big gap before testing the students and then another gap before publishing the results. This all feels at odds with the agile software development approach he's trying to teach; so he's been tweaking the course structure accordingly.

One of the first things he tried was to shorten the feedback loops by testing more frequently throughout the year, rather than leaving it to the end. This sounds positive although it did greatly increase the time required to mark all the tests. They've tried to reduce this time by encouraging pair programming (thereby halving the number of submissions) and by automating the process where possible. They would automatically test that the code would compile, the code coverage met a certain threshold and that any application tests would pass. Passing these automated tests should give some confidence that the code is in a reasonable state to be checked by a human.

He's also experimented with getting rid of lectures completely. He made all the course material available online and made himself available as much as possible. Unfortunately it sounds as though this didn't quite work out as many students didn't make use of his availability.

He's planning more changes for the coming year. He's thinking about ensuring that each student/group uses some kind of project management tool that he can use to check progress. There was even a suggestion of taking screenshots of this software over time to visualise how things are changing.

I think it's great that Rob's tweaking the courses to try to give students a more realistic understanding of what to expect when developing software in the commercial world.

[rob-c-new-job]: https://medium.com/@rchatley/new-academic-year-new-job-c13c21a0856#.xcvotpc7r
[swansea-con]: http://swanseacon.co.uk/

---

## Show and Tell 25

[Get in touch][contact] if you're interested in joining us for the next Show and Tell on Wednesday 12th October.

-- Chris

[contact]: /contact

:render_as: blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-09-22 11:12:00 +01:00
:updated_at: 2016-09-22 11:12:00 +01:00
:page_title: Show and Tell 24
:layout: show-and-tell-layout
