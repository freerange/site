Week 288 - Interesting links
============================

### [Create Reminders in Google Search](http://googlesystem.blogspot.co.uk/2014/07/create-reminders-in-google-search.html)

This is pretty neat. You can create Google Now reminders directly from the Google search box. Typing "Remind me to buy milk" will pop up the interface to allow you to create a reminder (although this only appears to work when I'm signed in to my personal Google account). <%= by('chris-roos') %>


### [The New Google Alerts UI, Now Available](http://googlesystem.blogspot.co.uk/2014/07/the-new-google-alerts-ui-now-available.html)

I kinda thought that Google Alerts had disappeared, but apparently not!

I've just had a quick play and ended up adding an alert for the [Credit Union Expansion Project][CUEP]. I've currently configured these alerts to be sent by email but I can imagine switching to receive them using RSS if they turn out to be too noisy. <%= by('chris-roos') %>


### [Best Way To Pretty Print (Format) JSON On The Command-Line](http://www.skorks.com/2013/04/the-best-way-to-pretty-print-json-on-the-command-line/#yajltools)

I've just installed the YAJL tools so that I could reformat a pretty hefty JSON document in the terminal. TextMate 2 failed to reformat but the `json_reformat` command did the trick nicely. <%= by('chris-roos') %>


### [Source code for Go now available](http://www.go.cd/2014/04/24/source-code-for-go-now-available.html)

This is [ThoughtWorks' Continuous Delivery software][], not the programming language. On the [Inside Government][] project we used an EC2-hosted instance of [Jenkins][] as the CI server. More recently on the [FutureLearn][] project, we used a paid version of the [Travis CI][] service. The former has a woeful Java-esque user interface and the latter is quite expensive, so it's interesting to see another open-source alternative. <%= by('james-mead') %>


### [Everyone Should Be Feeling the Customer's Pain](http://www.helpscout.net/blog/customer-pain/)

[Mathias Meyer][] describes how the team at [Travis CI][] decided to rotate people through doing customer support. This is something that we tried at [FutureLearn][] and I think it worked really well. I think the bit about making it easy for everyone to do customer support is an interesting aspect i.e. encouraging the building of tools so that non-developers can also do technical support. <%= by('james-mead') %>


### [Everything Is Broken](https://medium.com/message/everything-is-broken-81e5f33a24e1)

This is a somewhat depressing, but thought-provoking essay about software, security & privacy by [Quinn Norton][]. However, I'm not sure I completely agree with her conclusions and I think that this critical [Everything is (even more) broken][] article by Dan Nguyen makes some good points too. <%= by('james-mead') %>


### [Introducing Authy for your personal computer](http://blog.authy.com/authy-for-pc)

> You usually log in to your accounts from your desktop or laptop, right? And now, using Authy for PC's, you'll be able to access your two-factor authentication tokens directly from your computer screen without the hassle of copying them over from other devices. Simply put, you'll never have to type a token manually again.

A while ago I read about the [Yubikey][] which gives you a USB dongle with which to generate 2FA tokens, but if I understand it correctly, [Authy's Chrome App][] seems to offer the ability to generate such tokens on your computer with no extra hardware. It's also interesting that they've used the [Chrome Apps framework][] to build a desktop app. <%= by('james-mead') %>


### [Making things open, making things better](https://gds.blog.gov.uk/2014/07/22/making-things-open-making-things-better/)

It's great to see [GDS][] pushing government into using more open standards, especially now that even the likes of [Microsoft seem to have recognised the value of openness][Microsoft GitHub organisation]. <%= by('james-mead') %>


### [A future of Politics and News Online](http://www.r4isstatic.com/642)

It was really interesting to read about Paul Rissen at the BBC making use of the data in [Inside Government][]:

> [...] I believe that the part of GOV.UK formerly known as 'Inside Government' is an untapped goldmine. It's not just reference data – it is the cornerstone of the actual material of what Government consists of.

> The fact that every Government policy, every statement, every minister, has a publicly addressable URL, and has structured information, is a potentially massive statement about our democracy.

Apparently the BBC are trialling "country" and "topic" pages like the ones on [Inside Government][] too. <%= by('james-mead') %>


[CUEP]: https://github.com/freerange/bank/wiki/Credit-Union-Expansion-Project
[ThoughtWorks' Continuous Delivery software]: https://github.com/gocd/gocd/
[Inside Government]: /inside-government
[Jenkins]: http://jenkins-ci.org/
[FutureLearn]: https://www.futurelearn.com
[Travis CI]: https://travis-ci.org/
[Mathias Meyer]: http://www.paperplanes.de/
[Quinn Norton]: http://quinnnorton.com/
[Everything is (even more) broken]: http://danwin.com/2014/05/everything-is-even-more-broken/
[Yubikey]: http://www.yubico.com/products/yubikey-hardware/yubikey/
[Authy's Chrome App]: https://chrome.google.com/webstore/detail/authy/gaedmjdfmmahhbjefcbgaolhhanlaolb
[Chrome Apps framework]: https://developer.chrome.com/apps/about_apps
[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[Microsoft GitHub organisation]: https://github.com/msopentech

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2014-07-24 15:00:00 +01:00
:updated_at: 2014-07-24 15:00:00 +01:00
:page_title: Week 288 - Interesting links
:erb: true
