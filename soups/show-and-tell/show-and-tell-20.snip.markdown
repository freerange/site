Show and Tell 20
================

With Chris & I having been abroad quite a bit, this was the first time we'd run a Show & Tell event since December last year. Since we no longer have the luxury of an office, I decided that I'd try my luck hosting the event in a pub. So on 11th May, a select group of four of us met up at [The Peasant][].

## Phaser

[Nicky][] had been working her way through the [tutorial][phaser-tutorial] for the [Phaser HTML5 game framework][phaser]. She explained a bit about the framework and showed us the game she'd built which was pretty cool.

It turns out that Nicky is a fan of [Tower Defence][tower-defence] games and her longer-term goal is to build one, but with aesthetics like (or as good as) those of [Monument Valley][monument-valley]. She had made a start but had got a bit stuck. We talked a bit about other approaches and frameworks, but I'm not sure we were much help!

## Minecraft

[Ben][ben-griffiths] explained how the cool kids have moved on from [modding Minecraft][minecraft-mods] by patching the JAR file to modifying a vanilla version of Minecraft by entering [commands][minecraft-commands] into the [multi-player chat window][minecraft-chat].

### Commands

In his first demo, he entered a couple of commands so that every time the player jumped a block was [summoned][minecraft-summon-command] to appear immediately underneath its position. In this way he showed how a player could "build" impressive 3D structures simply by moving around and jumping.

### Command block

In the next demo he showed how a single command can be associated with a [command block][minecraft-command-block]. The command can then be activated by the player using Redstone power. He showed us how he'd created a set of command blocks to make some [chickens][minecraft-chicken] follow the player around.

### One command

A command block can only execute a single command, but clever people on the internet have come up with ways to [translate a set of commands into a single (very long) command][minecraft-one-command-generator] which, when executed, creates a structure including multiple command blocks thereby allowing execution of all the commands.

Ben suggested that this is analogous to [macro][] expansion. These macro command blocks are commonly called "One Command" blocks and examples can be found [all][minecraft-one-command-example-1] [over][minecraft-one-command-example-2] [the interwebs][minecraft-one-command-example-3]. You can see an example of such a block in action in [this video][minecraft-one-command-video].

### Realms

Ben also told us that Microsoft are now offering [Minecraft realms][minecraft-realms]. This makes it easier to setup a multi-player version of the game to play with your friends.

## Scratch

Lastly Ben showed us a selection of games which he and his son had built using [Scratch][] - fun and inventive!

## IndieWeb

I talked a bit about how I was gradually getting sucked into using Facebook, but that I found the closed nature of the system very depressing. I'd done a bit of investigation into ways I could publish content on my own site and have notifications show up in Facebook, Twitter, etc. I'd come across [POSSE][] - "Publish (on your) Own Site, Syndicate Elsewhere", which seemed to fit the bill for sending notifications.

However, I was also wondering whether anyone knew of an easy way to restrict access to the content on my site to specific users (e.g. my Facebook friends). We thought I might just be able to use [Facebook Login][facebook-login]. More investigation required!

Anyway, that's all for now. For those who attended, please feel free to improve [this write-up][this-write-up] via a [pull request][pull-request]. Apologies if I got anything wrong!

Until next time,

-- James.

[The Peasant]: http://www.thepeasant.co.uk/
[Nicky]: https://twitter.com/knotnicky
[phaser]: http://phaser.io
[phaser-tutorial]: http://phaser.io/tutorials/making-your-first-phaser-game
[tower-defence]: https://en.wikipedia.org/wiki/Tower_defense
[monument-valley]: http://www.monumentvalleygame.com/
[ben-griffiths]: https://twitter.com/beng
[minecraft-mods]: http://minecraft.wiki/w/Mods
[minecraft-commands]: http://minecraft.wiki/w/Commands
[minecraft-chat]: http://minecraft.wiki/w/Chat#Chat
[minecraft-summon-command]: http://minecraft.wiki/w/Commands#summon
[minecraft-command-block]: http://minecraft.wiki/w/Command_Block
[minecraft-chicken]: http://minecraft.wiki/w/Chicken
[macro]: https://en.wikipedia.org/wiki/Macro_(computer_science)
[minecraft-one-command-generator]: https://mrgarretto.com/cmdcombiner
[minecraft-one-command-video]: https://www.youtube.com/watch?v=BHumMbexjAs
[minecraft-one-command-example-1]: http://onecmd.com/
[minecraft-one-command-example-2]: https://minecraftcommand.science/commands
[minecraft-one-command-example-3]: https://mrgarretto.com/allcmds
[minecraft-realms]: https://minecraft.net/en/realms/
[Scratch]: https://scratch.mit.edu/
[POSSE]: https://indieweb.org/POSSE
[facebook-login]: https://developers.facebook.com/docs/facebook-login/web
[pull-request]: https://github.com/freerange/site/pulls
[this-write-up]: https://github.com/freerange/site/blob/master/soups/blog/show-and-tell-20.snip.markdown

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2016-07-29 17:09:00 +01:00
:updated_at: 2016-07-29 17:09:00 +01:00
:page_title: Show and Tell 20
:layout: show-and-tell-layout
