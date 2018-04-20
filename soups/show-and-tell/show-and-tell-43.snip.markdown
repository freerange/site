Show and Tell 43
================

We had a good attendance at our Show & Tell event this week with [Bash](https://www.howlinbash.com/), [Ben](/ben-griffiths), [Tom](http://codon.com/), [James](/james-mead), [Chris P](https://makercasts.org/), [Chris Z](https://chriszetter.com/) and [myself](/chris-lowis) getting together to share our side projects and offer friendly feedback.

## Porting classic text adventure games to Amazon's Alexa

Ben showed us a project he's been working on during his first week at Go Free Range. We have a client project coming up that will involve working with voice controlled devices. Ben thought he'd learn a bit more about this technology by attempting to implement a classic text adventure game.

Classic text adventure games, such as those from Infocom, were written to run on a virtual machine called the [Z-machine](https://en.wikipedia.org/wiki/Z-machine). Writing the games for this abstract machine made it easier to port them to various computer platforms as the virtual machine only needed to be written once per platform in order to run multiple games.

The Z-machine has subsequently been reverse engineered and implemented in many languages. Ben based his work on a [Ruby implementation](https://github.com/wilkie/gruesome). The text adventure accepts commands, such as "Go North" or "Look" and returns information about the world

<pre>
West of House
This is an open field west of a white house, with a boarded front door.
There is a small mailbox here.
A rubber mat saying 'Welcome to Zork!' lies by the door.
</pre>

Additionally the state of the game can be mutated. For example when a player picks something up and adds it to their inventory.

Ben made [some changes](https://github.com/freerange/gruesome/commits/feature/stateless_execution) to `gruesome` to allow it to run on as a web service. A Sinatra-based [application](https://github.com/freerange/gruesome/commit/b1948f970f168e05defb329953fe2505d9af797c#diff-0932482613b47f8170071b9df96e02a5) accepts a command and returns the output of the game and the current state of the virtual machine serialised as a string. When a new command is issued, the previous state is passed along with the request so that the web server itself can operate without maintaining any state of its own.

With [Chris](http://gofreerange.com/chris-roos)'s help this web service was then connected to an Amazon [lambda function](https://github.com/freerange/alexa-lambda-gruesome) which could be called from an Alexa application (or "skill").

Ben demo'd the game and it worked much better at Show and Tell than it had in the GFR office last week! Ben talked about how voice-controlled devices, while on the surface feeling like a natural fit for this kind of game, have quite a few problems. The speech-to-text isn't quite good enough pass directly to the original game engine, as these game engines perform exact matches from a pre-prepared dictionary of commands.

<pre>
> jog north
That's not a verb I recognise.

> trot north
That's not a verb I recognise.

> amble north
That's not a verb I recognise.

> walk north
North of House
You are facing the north side of a white house.
There is no door here, and all the windows are barred.
</pre>

Ben investigated extracting the list of verbs and objects recognised from an individual game using a Z-code disassembler called [infodump](http://inform-fiction.org/zmachine/ztools.html). Potentially this output could be used to generate some training examples for the Alexa skill's [Intent Parser](https://developer.amazon.com/docs/custom-skills/create-intents-utterances-and-slots.html) but it still feels like there would need to be some considerable modification to the game-play mechanics to make these games playable using voice commands alone.

## Compact encoding of permutations

[Chris Patuzzo](https://makercasts.org/) recently gave [a talk](https://skillsmatter.com/skillscasts/11694-london-ruby-user-group-april) at the London Ruby User Group about Sliding Puzzles. He gave us a [preview of that talk](http://gofreerange.com/show-and-tell-42) at the last Show & Tell.

Chris wanted to show us an approach he'd taken to compactly storing the various permutations a sliding puzzle could be in. It turns out that efficiently solving a sliding puzzle requires storing a huge amount of data for all the possible permutations of the puzzle in memory. The more compactly these permutations can be stored the better.

Chris showed us an example of a puzzle:

<pre>
 | 5 | 1 | 2 |
 | 3 | 4 | x |
 | 0 | 6 | 7 |
</pre>

where each tile in the puzzle is sequentially numbered and `x` is the blank space that another tile can be slid to. A simple way to store this puzzle state is as the number `51234067`. But we can do better than that.

First we compute the [Lehmer Code](https://en.wikipedia.org/wiki/Lehmer_code) for the permutation. We do this by considering each number in the permutation from left to right and asking "how many numbers to the left of this number are greater than the current number?"

<p>
<b>5</b>1234067 - <b>0</b> numbers greater to the left of this one <br/>
5<b>1</b>234067 - <b>1</b> number greater to the left of this one <br/>
51<b>2</b>34067 - <b>1</b> number greater to the left of this one <br/>
512<b>3</b>4067 - <b>1</b> number greater to the left of this one <br/>
5123<b>4</b>067 - <b>1</b> number greater to the left of this one <br/>
51234<b>0</b>67 - <b>5</b> numbers greater to the left of this one <br/>
512340<b>6</b>7 - <b>0</b> numbers greater to the left of this one <br/>
5123406<b>7</b> - <b>0</b> numbers greater to the left of this one <br/>
</p>

The resulting number, `01111500` in this case, is the Lehmer-encoded representation of `51234067`.

We can compress this number even further by encoding it in the [Factorial Number System](https://en.wikipedia.org/wiki/Factorial_number_system). This number system is similar to how we encode numbers in any base, but uses factorial numbers as the base. For example the number 362 in base ten is "3 hundreds, 6 tens and 2 ones" or

<pre>
(3*100) + (6*10) + (2*1) = 362
</pre>

That same number in a factorial base would be

<pre>
(3*2!) + (6*1!) + (2*0!) = 14
</pre>

and our Lehmer encoded permutation `01111500` in factorial base is

<pre>
(0*7!) + (1*6!) + (1*5!) + (1*4!) + (1*3!) + (5*2!) + (0*1!) + (0*0!) = 880
</pre>

which is a more compact way of representing the number `51234067`. This original permutation code can be recovered from the number `880` by following the process in reverse.

Chris showed us that the naive algorithm for performing Lehmer encoding given above has `O(n^2)` complexity and is therefore prohibitive to use in practice. However there does exist a linear-time version of the algorithm that relies on bit-shifting and the [POPCNT](http://www.felixcloutier.com/x86/POPCNT.html) instruction. [Chris has implemented this in Rust](https://github.com/tuzz/lehmer/blob/master/src/lib.rs#L9) but we didn't have time to dig into that code.

## Keeping notes in plain text

Bash showed us his system for keeping notes about what to work on and what he's learned.

He wrote a [shell function `log`](https://github.com/howlinbash/dotfiles/blob/master/.bashrc.d/functions.sh#L18) to create a log book. This creates a new file in a daily logs directory and copies the contents of the previous days log into it. This allows Bash to keep track of what is changing day-to-day and base today's notes on what was left over from the previous day.

Having found this useful, Bash wanted to create a similar system for keeping to-do lists. He showed us some Vimscript he'd written to configure his editor to manage these to-do lists.

In the todo file are entries such as

<pre>
- 201804191200 x eat Have Lunch
- 201804191429   wri Write-up notes from Show and Tell
</pre>

Each entry includes a timestamp, an indication of the status of the todo item, an optional tag and the task description. Various editor commands allow these properties to be toggled, and filtered.

Bash also wrote a command to create a new files based on the timestamp and quickly jump to them. This allows notes about each todo item to be kept and conveniently indexed.

This idea of hyper-linking from the to-do list to notes also inspired Bash to use a personal Wiki to keep notes. He showed us [Vimwiki](https://github.com/vimwiki/vimwiki), which implements a wiki system inside of Vim, and his [personal "manual"](https://github.com/howlinbash/manual) containing notes on the software he regularly uses and new things he has learnt. I particularly enjoyed the [script `how`](https://github.com/howlinbash/how) he'd written to review items that had recently been added to his wiki. When he's happy he's remembered the particular fact, he removes it from this automatically generated "to learn" list.

## Writing a game for the Amazon Alexa

At the end of the meeting James, Ben and I talked briefly about a follow-up project to the one Ben showed us earlier in the evening. We've decided that doing a straight port of a text adventure game to a voice-controlled device isn't optimum in terms of the capabilities of these devices. Instead we're building a simple game from scratch with voice-control in mind.

The prototype we showed involves giving directions to a ship lost at sea using only audio clues from the environment around you (the sounds of crashing waves, bell-buoys and lighthouse horns). Chris and Zetter had a quick play-test of the game. We were encouraged by the moments of shared confusion ("Did I hear a bell?") and the fact that they quickly picked up the game mechanics.

There'll be some more detail about this in our weeknotes.


<!-- add content here -->

:name: show-and-tell-43
:updated_at: 2018-04-20 11:43:26.095018000 +01:00
:created_at: 2018-04-20 11:43:26.095008000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Show and Tell 43
:layout: show-and-tell-layout
:extension: markdown
