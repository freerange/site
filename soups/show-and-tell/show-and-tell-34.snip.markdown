Show and Tell 34
================

[James][james-mead] and I were joined by [Amy][amy-wagner], [Ben G][ben-griffiths], [Chris P][chris-patuzzo] and [Leo][leo-cassarini] for our 34th Show & Tell.

[amy-wagner]: http://amyeee.com/
[ben-griffiths]: https://twitter.com/beng
[chris-patuzzo]: http://chris.patuzzo.co.uk/
[james-mead]: /james-mead
[leo-cassarini]: https://twitter.com/cassarani

---

## Hookline

![Amy demoing the a Hookline product at Show & Tell 34](/images/blog/2017-07-12-show-and-tell-34-amy.jpg)

Amy started the evening by demoing a new [Hookline][hookline] product they've been working on: an online shop allowing content creators (e.g. YouTubers) to purchase music from the Hookline library to accompany their videos.

They've combined [WordPress][wordpress], [WooCommerce][woocommerce] and the Hookline music library app to build the shop which is very nearly ready to go. Amy used the opportunity to do some impromptu user-testing with Chris P and hopefully found the feedback and general discussion useful.

They're currently looking for people to help test the service so if you're interested get in touch with Amy. See the tweet below for details.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Need music for YouTube/online? In exchange for free track download &amp; licence, I&#39;d like to remotely observe you using a new service. Ping me!</p>&mdash; Amy Wagner (@amyeee) <a href="https://twitter.com/amyeee/status/885451369154580481">July 13, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

[hookline]: http://hookline.tv/
[wordpress]: https://wordpress.com/
[woocommerce]: https://woocommerce.com/

---

## Toilet Occupancy

![Ben G showing the infrared sensors at Show & Tell 34](/images/blog/2017-07-12-show-and-tell-34-ben-g.jpg)

Ben's current place of work only has two toilets and they're at opposite ends of the office. The frustration of arriving at an occupied toilet and having to walk to the other end of the office has lead Ben to investigate ways of indicating whether a toilet is vacant.

He's splashed out just over £10 on a couple of wireless motion sensors and a USB SDR device from eBay and has started to investigate how he might use them. The motion sensors broadcast data on a frequency of about 433Mhz and Ben's using [CubicSDR][cubic-sdr] to "see" the data that's being broadcast. He's hoping that the sensors contain and broadcast some kind of identifier so that he's able to differentiate between them and indicate whether a toilet is vacant.

It sounds as though this isn't a problem exclusive to Ben's office as someone mentioned that [Made by Many have also written about solving this problem][made-by-many-toilet-post].

[cubic-sdr]: http://cubicsdr.com/
[made-by-many-toilet-post]: https://madebymany.com/stories/is-the-toilet-free.

---

## Flag poles and X-Wing fighters

Ben quickly showed us a couple of other smaller things he's been working on recently.

He was particularly proud of discovering [Turnbuckles](https://en.wikipedia.org/wiki/Turnbuckle) and how they could be used to erect a pirate flag in the garden.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Made a pirate flagpole for the pirate part of the garden. <a href="https://t.co/PPVq4zNLCT">pic.twitter.com/PPVq4zNLCT</a></p>&mdash; Ben Griffiths (@beng) <a href="https://twitter.com/beng/status/879006061348487168">June 25, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

He's used ball bearings to fix and improve broken static X-Wing mounts with something that allows the fighters to bank in formation :-)

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Thanks to Dremel and Superglue, replace broken x-wing mount with awesome nd magnet and ball-bearing. <a href="https://t.co/JfvqpZvIJw">pic.twitter.com/JfvqpZvIJw</a></p>&mdash; Ben Griffiths (@beng) <a href="https://twitter.com/beng/status/868821621552930816">May 28, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

---

## Reliving GPS tracks

I spent two minutes demoing the [Relive][relive] service/app. Connect it to your Garmin, Strava, Endomondo or Polar accounts and wait for it to generate a video showing a flyby of your route. If you run or cycle and use any of the supported accounts then I highly recommend trying it out.

[relive]: https://www.relive.cc/

---

## Engine Electronics

![Chris R showing the simple dashboard for his boat](/images/blog/2017-07-12-show-and-tell-34-chris-r.jpg)

I spent a couple of minutes explaining how I'd wired the starter motor and glow plugs of my boat engine to a simple wooden dashboard.

The work had been a bit of a eye-opener as I'd never really considered what happens when you turn the key in the ignition of a car. Wiring up a _very_ simple version in a boat has made it feel much less magic!

---

## Simple API with AWS Lambda

While we predominantly rely on [Harmonia][harmonia] to distribute tasks between us we occasionally need to assign responsibility manually. I tend to use a snippet of Ruby similar to `%w(cl cr jm).shuffle.first` to find an assignee and assume that Chris and James use something similar. Ideally I think we'd use some shared code to do this and I used that as an excuse to play with [AWS Lambda][aws-lambda].

I walked through the creation of a Lambda function and [API Gateway][aws-api-gateway] to encapsulate a JavaScript version of the Ruby code above. The API Gateway allowed me to execute the function by making a HTTP request to the URL it gave me. I was pleasantly surprised by how relatively easy it was to connect it all together.

Ben mentioned [AWS CodeStar][aws-codestar] which does everything I did but also gives you a git repository that you can push code to in order to deploy. This sounds great as it addresses one of the concerns I had about lack of commit history when editing code directly in the AWS Lambda interface.

[aws-codestar]: https://aws.amazon.com/codestar/
[aws-lambda]: https://aws.amazon.com/lambda/
[aws-api-gateway]: https://aws.amazon.com/api-gateway/
[harmonia]: https://harmonia.io

---

## VPN

![James M explaining his VPN set-up at Show & Tell 34](/images/blog/2017-07-12-show-and-tell-34-james-m.jpg)

James explained how relatively cheap and easy it was to get his own VPN set-up. He rents a cheap server from [LiteServer][lite-server] and has installed OpenVPN using [docker-openvpn][docker-openvpn] and the related [tutorial from Digital Ocean][digital-ocean-openvpn-tutorial]. He connects using the open source [Tunnelblick][tunnelblick] client on his Mac.

James thanks [Paul B][paul-battley] and [James A][james-adam] for their help and inspiration in getting this set-up.

[digital-ocean-openvpn-tutorial]: https://www.digitalocean.com/community/tutorials/how-to-run-openvpn-in-a-docker-container-on-ubuntu-14-04
[docker-openvpn]: https://github.com/kylemanna/docker-openvpn
[james-adam]: http://lazyatom.com/
[lite-server]: https://www.liteserver.nl/
[paul-battley]: http://po-ru.com
[tunnelblick]: https://tunnelblick.net/

---

## Jekyll GUIs

James gave us a quick demo of [Siteleaf][siteleaf]: a CMS for static sites. He discovered it as part of our investigation into switching the CoTech website from WordPress to Jekyll as one of the main arguments against Jekyll was the lack of user-friendly editing interface.

It was somewhat reassuring to hear Leo say that the marketing department at [Geckoboard][geckoboard] have been happily using Siteleaf for quite some time to administer their website.

Ben highlighted [dxwsecurity][dxw-security] as a useful resource for people hosting WordPress. It sounds as though DXW have people working full time on assessing various security vulnerabilities in WordPress!

[dxw-security]: https://security.dxw.com
[geckoboard]: https://www.geckoboard.com/
[siteleaf]: https://www.siteleaf.com/

---

## Magic Squares

![Chris P explaining Magic Squares at Show & Tell 34](/images/blog/2017-07-12-show-and-tell-34-chris-p.jpg)

Chris P introduced us to [Magic Squares][magic-squares]: square grids of numbers where each row, column and diagonal adds up to the same number (the magic sum).

<pre><code>
Square with a magic sum of 21
 -------------
| 8  | 9 | 4  |
|----|---|----|
| 3  | 7 | 11 |
|----|---|----|
| 10 | 5 | 6  |
 -------------
</code></pre>

Chris went on to explain that there's such a thing as an [Alphamagic Square][alphamagic-square]. These are special because replacing the number in each square with the number of letters in the English spelling of that number creates a new Magic Square! This is probably more easily understood with an example:

<pre><code>
Square with a magic sum of 45
 --------------
| 18 | 22 | 5  |
|----|----|----|
| 2  | 15 | 28 |
|----|----|----|
| 25 | 8  | 12 |
 --------------

 Replace the numbers with their English names
 --------------------------------------
| eighteen   | twentytwo | five        |
|------------|-----------|-------------|
| two        | fifteen   | twentyeight |
|------------|-----------|-------------|
| twentyfive | eight     | twelve      |
 --------------------------------------

Replace the English names with number of letters
and we get a square with a magic sum of 21
 -------------
| 8  | 9 | 4  |
|----|---|----|
| 3  | 7 | 11 |
|----|---|----|
| 10 | 5 | 6  |
 -------------
</code></pre>

Chris used [Sentient][sentient-lang], his experimental programming language, to [discover a number of doubly alphanumeric squares][tuzz-letterwise-magic-squares]! Something that's earned him a [write-up on Futility Closet][futility-closet-alphamagic-squares] and a mention on the Alphamagic Squares Wikipedia page.

Chris has also been searching for Alphamagic squares in other languages. He's already found a number of Alphamagic squares in French but has so far hit the limits of his software when trying to find doubly Alphamagic ones.

[alphamagic-square]: https://en.wikipedia.org/wiki/Alphamagic_square
[futility-closet-alphamagic-squares]: https://www.futilitycloset.com/2017/05/07/double-alphamagic-squares/
[magic-squares]: https://en.wikipedia.org/wiki/Magic_square
[sentient-lang]: http://sentient-lang.org/
[tuzz-letterwise-magic-squares]: https://github.com/tuzz/letterwise_magic_squares

---

## Geckoboard remote control

![Leo demoing the Geckboard mobile "remote" at Show & Tell 34](/images/blog/2017-07-12-show-and-tell-34-leo.jpg)

Leo demoed a prototype that he and three others built during a recent hack week at Geckoboard.

Leo and the team decided to try to improve the experience of managing Geckoboard [dashboards that are being displayed on a big screen][geckoboard-dashboard-big-screen].

They ended up with a [Progressive Web App][progressive-web-app] that allows you to use your mobile as a remote to control the dashboards on a TV. You swipe horizontally through the dashboards available on your phone and flick them up toward the TV to select them (a nod toward something seen on [House of Cards][house-of-cards]). Leo was demoing on an iPhone but explained that the experience on an Android is even better. Either way, it looked pretty slick from where I was sitting.

They initially tried to use [WebRTC][webrtc] to link the phone and the big screen but had to give up when it became clear that it was going to take too long (they only had a week). They ended up using [Pusher][pusher] which seems to work really well despite initial concerns about lag.

[geckoboard-dashboard-big-screen]: https://www.geckoboard.com/learn/guides/displaying-your-dashboard-on-a-screen/
[house-of-cards]: https://en.wikipedia.org/wiki/House_of_Cards_(U.S._TV_series)
[progressive-web-app]: https://en.wikipedia.org/wiki/Progressive_web_app
[pusher]: https://pusher.com/
[webrtc]: https://en.wikipedia.org/wiki/WebRTC

---

## Show & Tell 35

We're hosting our 35th Show & Tell on Wednesday 9th August. It's open to all so please [get in touch][contact] if you'd like to join us.

[contact]: /contact

:name: show-and-tell-34
:updated_at: 2017-07-14 10:02:05.114021000 +01:00
:created_at: 2017-07-14 10:02:05.114010000 +01:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 34
:layout: show-and-tell-layout
:extension: markdown
