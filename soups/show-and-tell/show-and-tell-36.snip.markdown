Show and Tell 36
================

[James][james-mead] and I were joined by [Ben G][ben-griffiths], [Chris P][chris-patuzzo], [Ian D-W][ian-dow-wright], [Tom S][tom-stuart] and [Rob C][rob-chatley] for our 36th Show & Tell.

Thanks go to Tom for the photos and to everyone for sharing the various things they've been working on.

[ben-griffiths]: https://twitter.com/beng
[chris-patuzzo]: http://chris.patuzzo.co.uk/
[ian-dow-wright]: http://idw.xyz
[james-mead]: /james-mead
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[tom-stuart]: http://codon.com/

---

## Minecraft cartoons

![Ben G showing us his Minecraft cartoon](/images/blog/2017-09-13-show-and-tell-36-ben-g-minecraft.jpg)

As well as playing lots of [Minecraft][minecraft], Ben's son really enjoys watching cartoons set in Minecraft and was keen to make his own. Ben talked us through the making of the [Road Runner][road-runner] style cartoon they came up with.

They built the scene in Minecraft and used [Mineways][mineways] to export it to [Blender][blender]. They added a 3D Minecraft character from an existing library, along with a speeding chicken and an anvil. The 3D character is rigged in Blender which allowed them to control its body and eye movements. With everything in place they started the movie rendering.

This first render took 11 hours on Ben's laptop so he went in search of alternatives. He found an online relatively-cheap paid-for service where the rendering took just a couple of hours. Writing this up has made me wonder whether you could use something like [AWS EC2][aws-ec2] for these expensive rendering operations.

Despite looking pretty good to me; Ben's main takeaways were that it didn't turn out quite as good as he'd hoped and that it took way longer than he imagined.

He finished up by showing us a cartoon from one of the more established creators which gave a real sense of the amount of effort that must go into these things.

I continue to be amazed by the size of the Minecraft ecosystem.

[aws-ec2]: https://aws.amazon.com/ec2/
[blender]: https://www.blender.org/
[minecraft]: https://minecraft.net/en-us/
[mineways]: http://www.realtimerendering.com/erich/minecraft/public/mineways/
[road-runner]: https://en.wikipedia.org/wiki/Wile_E._Coyote_and_the_Road_Runner

---

## Visualising Hingsight-ex

![Chris P's visualisation of Ben's Hindsight-Ex project](/images/blog/2017-09-13-show-and-tell-36-chris-p-hindsight-ex.jpg)

As a nice segue from Ben to Chris, Chris showed us the pull request he'd opened in Ben's [hindsight-ex][hindsight-ex] project that [Ben spoke about at LRUG on Monday][lrug-hindsight-ex].

Ben spoke about Hindsight-ex back in [Show & Tell 33][show-and-tell-33-hindsight], although I don't recall it having a name then. It's an attempt at building an "ideal" version history by using the tests in a project. Chris's PR adds a visualisation to the process of choosing which test to add to the history that results in the minimum amount of production code required to satisfy it.

I can imagine the addition of this graph really helping when trying to explain what the software is doing.

[hindsight-ex]: https://github.com/techbelly/hindsight-ex
[lrug-hindsight-ex]: https://skillsmatter.com/skillscasts/10854-hindsight-creating-the-perfect-project-history
[show-and-tell-33-hindsight]: /show-and-tell-33#writing-an-apps-history

---

## Flags of the world

![Chris P describes his Flags of the World app](/images/blog/2017-09-13-show-and-tell-36-chris-p-flags.jpg)

Chris showed us an iOS app he built with some friends a while back. It's a game that tests your ability to recognise, and in doing so aims to help you learn, the flags of the world. There are a number of levels that increase in difficulty: from simply choosing the colours in a known layout to choosing the layout and colours. As well as scoring your attempts you're also shown the answer you got right that most people get wrong, and the answer you got wrong that most people got right.

Chris is currently thinking about rebuilding the project and is trying to work out how best to do it. Not only does he want to avoid using [Xcode][xcode] but he also wants to be able to target Android as well as iOS: he suggested that Android devices now outnumber iOS by about 3 or 4 to 1!

It initially looked as though [AppCache][app-cache] would do what he wanted but that's been deprecated in favour of [Service Workers][service-workers]. Unfortunately, while Android supports Service Workers, iOS still supports AppCache which makes it hard/impossible to build a cross-platform app using these technologies.

He's also been looking at [Cordova][cordova]: An Apache project similar to [PhoneGap][phone-gap] for building cross platform mobile apps. This has its own overheads of requiring Android Studio and Java which aren't necessarily desirable.

Tom S suggested he might use [React Native][react-native] but I don't think Chris has looked at this yet.

As part of rebuilding it Chris can imagine applying the same idea to different domains e.g. football shirts.

[app-cache]: https://developer.mozilla.org/en-US/docs/Web/HTML/Using_the_application_cache
[cordova]: https://cordova.apache.org/
[phone-gap]: https://phonegap.com/
[react-native]: https://facebook.github.io/react-native/
[service-workers]: https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers
[xcode]: https://developer.apple.com/xcode/

---

## Machine automation

Chris wrapped up by talking us through [zz: The tuzz automation tool][zz]. It's designed to be run on a fresh install of a Mac "for automating all aspects of the 'tuzz' life experience." :-)

It's a relatively small Ruby library that uses [Chef][chef] to set-up various aspects of his Mac. It's apparently somewhat similar to [GitHub's Boxen][github-boxen] although I believe that uses [Puppet][puppet] and may have a few more dependencies in order to run.

Part of the motivation for creating his own library is to get back up to speed with what's been going on in the world of [DevOps][devops].

Chris explained that he regularly reinstalls the [Hackintosh][hackintosh] he uses at home. I think he's hoping to use zz to simplify that process.

The idea of regularly throwing stuff away in order to force you to ensure you keep hold of the important things really appeals to me. It reminds me a bit of Ben's idea of throwing non-library code away at the end of each day to force you to build reusable code, and also of my practice of regularly clearing my browser cache in order to ensure I've got all my passwords stored in [1Password][1password].

[1password]: https://1password.com/
[chef]: https://www.chef.io/
[devops]: https://en.wikipedia.org/wiki/DevOps
[github-boxen]: https://github.com/blog/1345-introducing-boxen
[hackintosh]: https://hackintosh.com/
[puppet]: https://puppet.com/
[zz]: https://github.com/tuzz/zz

---

## Docker for app development

![James M explaining his upgrade to Sierra ](/images/blog/2017-09-13-show-and-tell-36-james-m-machine-provisioning.jpg)

James continued on a similar theme to Chris's machine automation.

James recently upgraded his Mac to Sierra. He's been putting this off for some time as he wanted to reinstall from scratch but was worried about losing data. He's [documented his set-up][gist-floehopper-sierra] in the hope that it makes it easier to upgrade again in future.

As part of this upgrade, James has started using [Docker][docker] to reduce the number of things he has to install on the Mac itself. I understand that using Docker on a Mac is easier than ever now that macOS comes with a native hypervisor.

James used [his website][github-jamesmead-org] as an example to demonstrate how this works in practice. He has two containers: one for the website and another for the Gems required. Storing the Gems in a different container means that he doesn't have to recreate the main Docker image when the Gemfile changes.

He's relatively happy with how this has worked out but it isn't without problems. For example, it sounds as though there's a known issue with sharing the file system between the host machine and container that means it time consuming to keep directories in sync.

Having spent time working with the [GDS Developer VM][gds-developer-vm] recently, he's wondering whether a more sensible approach might be to use [Vagrant][vagrant] and [VirtualBox][virtual-box] for each project.

[docker]: https://www.docker.com/
[gds-developer-vm]: https://github.com/alphagov/govuk-puppet/tree/master/development-vm
[gist-floehopper-sierra]: https://gist.github.com/floehopper/ca2102d39e0a9a067cdfd836f7bc401b
[github-jamesmead-org]: https://github.com/floehopper/jamesmead.org
[vagrant]: https://www.vagrantup.com/
[virtual-box]: https://www.virtualbox.org/

---

## Limitations of `git log --follow`

![James M's impressive command for interrogating git history ](/images/blog/2017-09-13-show-and-tell-36-james-m-git-log.jpg)

While working on converting our website from [Jekyll][jekyll-rb] to [Rails][rails], James had a need to be able to follow git file history across renames in the repo. He ran into problems with `git log --follow` as its heuristic to determine whether a file has been renamed doesn't always work. James ended up constructing this [impressive looking command][gist-floehopper-git-history] to do what he wanted.

Tom S mentioned the `--find-renames` option to `git log` which allows you configure the threshold at which git will treat files as the same. It sounds as though this might just do what James was after.

[gist-floehopper-git-history]: https://gist.github.com/floehopper/64fc0a420ef8158e92a28211a57afebb
[jekyll-rb]: https://jekyllrb.com/
[rails]: http://rubyonrails.org/

---

## Home automation

Ian explained his first-world-problem home-automation woes. He has WiFi lightbulbs that he'd like to control using the existing light switches in his house. He doesn't want to use the switch to cut the power to the bulbs as they then disappear from the network and can't be controlled at all without turning them back on at the switch. He's wondering whether he can step the voltage down in the light switch so that he can change the switch to something that sends a wireless command to the lightbulb instead of cutting the power. The reaction in the room suggested that this isn't going to be trivial but it sounds as though Ian's stocked up on enough cheap components to allow him to give it a go.

There were suggestions of using batteries instead of stepping the voltage down but Ian said that that seemed a little odd given that he's got electricity available already.

Ian mentioned [circuits.io][circuits-io]: an online tool for creating virtual circuits to understand whether they'll work as expected. I've not tried it yet but I can imagine this coming in handy as I plan to do some more work on the electrical installation in the boat.

[circuits-io]: https://circuits.io/

---

## Serverless computing

![Rob giving us an overview of his Serverless Computing talk ](/images/blog/2017-09-13-show-and-tell-36-rob-c-serverless-computing.jpg)

Rob wrapped up the evening by giving us a quick run through of a talk about Serverless Computing he'd recently given at the [Foundations of Software Engineering conference in Germany][fse-2017].

He included case studies of [MindMup][mind-mup] and Yubl (since shut down): two companies that switched from [Heroku][heroku] and EC2 respectively, to [AWS Lambda][aws-lambda].

It sounds as though they both made respectable cost savings by switching to Lambda and that, at least in one case, it led to them developing better software as they were forced to separate things that were previously bundled together.

It sounds as though Lambda's not the answer to everything, though. Depending on what you're doing the startup time can be high and there's also a maximum execution time of 5 minutes per function. You might be better off using something like EC2 if you're hitting these limits.

Rob mentioned the [Claudia.js][claudia-js] framework which attempts to simplify the process of deploying [Node.js][node-js] projects to Lambda.

Rob's talk appears to be based on his joint paper with Gojko: "[Serverless Computing: Economic and Architectural Impact][serverless-computing-paper]". I suggest having a read if you'd like to learn more about the subject.

[aws-lambda]: https://aws.amazon.com/lambda/
[claudia-js]: https://claudiajs.com/
[fse-2017]: http://esec-fse17.uni-paderborn.de/
[heroku]: https://www.heroku.com/
[mind-mup]: https://www.mindmup.com/
[node-js]: https://nodejs.org/en/
[serverless-computing-paper]: http://www.doc.ic.ac.uk/~rbc/papers/fse-serverless-17.pdf

---

## Show & Tell 37

We'll be hosting our 37th Show & Tell on Wednesday 11th October. It's open to all so please [get in touch][contact] if you'd like to join us.

[contact]: /contact

:name: show-and-tell-36
:updated_at: 2017-09-15 08:51:48.968095000 +01:00
:created_at: 2017-09-15 08:51:48.968093000 +01:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 36
:layout: show-and-tell-layout
:extension: markdown
