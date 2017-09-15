Show and Tell 36
================

James and I were joined by Ben G, Chris P, Ian DW, Tom S and Rob C for our 36th Show & Tell.

## Minecraft cartoons

As well as playing lots of Minecraft, his son really enjoys watching cartoons set in Minecraft worlds and wanted to make his own.

Ben showed us the Minecraft cartoon he and his son made. Roadrunner style. Try to hit the chicken with an anvil, anvils knocks a post which hammers the character into the ground.

They built a scene in Minecraft and used Mineways (I think?) to export it to Blender. The 3D character was "rigged" in Blender allowing you to control its movement.

Ben's main takeaway is that it took way longer than expected and wasn't quite as good as hoped.

The first render took 11 hours on Ben's laptop. He subsequently found an online paid-for service where the rendering took just a couple of hours. I wonder whether you could this on EC2 or similar?

Apparently some of these cartoons are made in-engine by having a multiplayer game and having one character be the "camera".

It continues to amaze me how much people can and are doing with Minecraft.

---

## Visualising Hingsight-ex

As a nice segue(sp?) from Ben to Chris, Chris showed us a pull request he'd opened on Ben's Hindsight-ex project that he spoke about at LRUG on Monday.

Ben's spoken about Hindsight-ex in Show & Tell XXX. It's an attempt at building an "ideal" git history by using the tests in a project. Chris's PR added functionality to visualise the process of choosing which test to add to the git history in order to minimise the amount of production code required.

I already had an idea about how Ben's software worked but I think the additional graph really helps explain what's happening.

---

## Flags of the world

Chris showed us the first iphone app he built with some friend. It's a game that tests your ability to recognise, and helps you learn, the flags of the world. There are a number of levels that increase in difficulty: from simply choosing the colours in a known layout, to choosing the layout and colours, to something else. Your attempt is scored and you're also shown the answer you got right that most people get wrong, and the one you got wrong that most people got right.

Chris is currently thinking about rebuilding the project but wants to avoid using xcode and so is investigating the alternatives. As well as avoiding xcode, another aspect of his motivation is that android devices now outnumber ios devices about 3 or 4 to 1!

It looked as though AppCache would do what he was after but that's been deprecated in favour of service workers. Unfortunately, while Android supports service workers, ios still supports AppCache which makes it hard/impossible to build a cross-platform app using these technologies.

He's also been looking at Cordova. An Apache project similar to PhoneGap. (Is this what Pablo's software uses?) This has overheads of Android Studio and Java which aren't necessarily desirable.

Tom S suggested he might use React Native but I don't think Chris has looked at this yet.

In rebuilding it he can imagine the same idea being applied to a different domain, e.g. football shirts.

Chris mentioned his only node package to date that he built as part of this app (is that true?) - the n-dimension flood fill node package

---

## Machine automation

Chris wrapped up by explaining his motivation for creating zz - a machine automation tool he's started building.

He'd like something that allows him to easily recreate environments needed for both his developer machines and client projects. He's also feeling out of the loop with devops and is using this project as a way of getting up to speed.

It's currently a thin wrapper around Chef and doesn't really require anything in order to get it setup (i.e. no git).

This would be similar to Boxen and another that I don't recall.

He has a Hackintosh at home that he regularly re-installs. He uses Clonezilla to backup the data which gives him the confidence to be able to reformat the machine. I think he's hoping to use zz to replace this set-up.

This reminds me of Ben's idea of throwing non-library code away, and also of my practice of regularly clearing my browser cache in order to ensure I've got all my passwords stored in 1Password.

---

## Docker for app development

On a similar theme to Chris's machine automation.

James recently upgraded to Sierra(correct?). He's been putting this off for some time as he wanted to reinstall from scratch but was worried about losing information given that he doesn't done it for quite a while. He tries to maintain a gist of instructions for what he needs to install but this is hard to maintain.

In an attempt to avoid similar problems in future he's been using Docker to separate the requirements of the various apps he developers on his laptop. I understand this has become even easier now that the Mac comes with a native hypervisor.

He described the set-up for his website. He has two containers - one for the app? (I thought he was using a static site) and another for the gems required. Storing the gems in a different container means that he doesn't have to recreate his docker image when the Gemfile changes. This is achieved using a Dockerfile to describe the app(?) and a docker-compose.yml file to describe the relationship between the app and the Gems directory.

Having got so far with his set-up he's wondering whether it might be better to use Vagrant and VirtualBox per project.

One of the known(?) problems with Docker for Mac is the time it takes to keep directories in sync between the host and virtual machines.

It sounds as though the separation is good but that it makes it harder to do otherwise relativly easy things. He doesn't, for example, have Ruby installed on his host machine.

---

## Limitations of git --follow

While working on converting our website from Jekyll to Rails, James had a need to be able to follow git file history across renames in the repo. He ran into problems with git log --follow. Its heuristic to determine whether a file has been renamed doesn't always work and James ended up building a command line (gist - find-sha-of-commit-in-which-file-with-same-name-was-added) to do what he wanted.

Tom S mentioned the `--find-renames` option which allows you configure the threshold at which git will treat files as the same. It sounds as though this might do just what James was after.

---

## Home automation

Ian explained his first-world home-automation woes. He has wifi lightbulbs that he'd like to control using the existing light switches in his house. He doesn't want to simply cut the power to the bulbs as they then disappear from the network and can't be controlled at all without turning them back on at the switch.

He mentioned that it always seems that Terry Eden has written about any of these sort of problems/ideas as he comes across them.

He's wondering whether he can step the voltage down in the light switch so that he can then change the switch so that it sends a wireless command to the lightbulb instead of cutting the power. This seemed to worry people in the room but fortunately I don't understand it enough. There were suggestions of using batteries instead of stepping the voltage down but Ian said that that seemed a little odd given that he's got electricity availeble already.

He mentioned circuit.io as a way of designing circuits to help understand whether something will work. This sounds like the sort of thing I would've benefitted from when trying to do some electrical work on the boat.

It sounds as though there are quite a few competing technologies available at the moment (Home Assistant (open source), Homekit (Apple?), Tradfry?) and that things in this space as harder than they otherwise might be because of that.

---

## Serverless computing

Rob wrapped up the evening by giving as overview of a talk he'd recently given at the Foundation of Software Engineering in Germany.

The talk explored the economic and ??? impact of serverless computing.

Two case studies of companies/apps moving to AWS Lambda.

Mindmup - Heroku to Lambda

YUBL (social network - now out of business) - EC2 to Lambda
  In EC2 you're paying for the utilisation
  In Lambda the "idle time is free"

Mindmup - they had exporters. Economic incentive to bundle them so that they ran on a single EC2 instance. A bug in a single less-frequently-used exported brought the rest of them down. Having an exporter per Lambda allows us to potentially avoid these problems.

Cost switching
  Lambda - per for time
  S3 - Pay per bandwidth
  Lambda function to issue tokens that allows a client to write direct to S3

Mindmup - saved 50% costs by switching to Lambda

Yubl - They'd configured auto-scaling at 75% capacity but that was already too late. By the time they'd hit that threshold, provisioning new servers couldn't keep up with demand. They reduced the threshold to 50% which improved performance but meant they were paying for unused capacity.

There's an argument to suggest that developing for Lambda leads to more modular code bases.

Lambda SLA is currently at about 96% which means that it might not be suitable for all applications.

Depending on what you're doing with Lambda, the startup times can be quite slow. A workaround is to keep the process warm (in the same way that you might with Heroku) but this means that you're increasing your costs and that you might be better off with something like EC2.

Another limitation is the 5 minute maximum execution time and that it's hard to test these things locally.

Rob mentioned the Claudia.js framework which is designed to allow you to write code to target Lambda. You deploy and receive a URL that these things exist at.

James mentioned that Tim McKinnon(?) has played with running Smalltalk on Lambda, saving the image on S3 and then downloading it to debug locally.

---

## Show & Tell 37

TBC

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
