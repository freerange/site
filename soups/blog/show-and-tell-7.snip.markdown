Show and Tell 7
---------------

We had a good turn-out despite the horrible weather with Amy, Ben, Chris J, Chris R, James A, James M, Murray, Nicky, Paul and Tom S all in attendance.

Ben demonstrated some new [Makie][] WebGL magic whereby he's managed to animate the doll's hair & skirt when it's rotated. I missed a crucial bit at the beginning, so I can't explain how it works, but suffice it to say that it looks very realistic.

In related news, Ben has just started the [London XYZW Club][]. So if you're interested in learning more about all things 3D, I'd recommend joining in their lunchtime meetings.

Chris J showed us a video of his impressive [Arduino fruit machine][] and talked us through how it was put together - apparently it's taken about a year to put together. I particularly liked the way he'd built a Mac desktop app which stubs out all the hardware and provides him with an easy way to test the core "game" logic.

Tom S showed us his completed [Ruby Tapas][] guest episode and explained how he'd put it together using the [ScreenFlow][] screencast recording & editing app. Having first worked out what he was going to say, he recorded the audio at home a few times (under the duvet!) until he got it all in one take.

He then recorded himself writing and running the example code in vim, but he found that it was really hard to do this in one take without making a mistake. However, he then realised that since the screencast video was "pixel-perfect", it was easy to splice together segments of his typing to put it all together into one seamless stream. He was even able to speed up/slow down various sections to fit in with the audio. Neat!

Following on from a discussion I'd had with Tom S at the last [London Computation Club][] meeting, I did a quick demo of using the [Artoo][] Ruby library to control an [Arduino][] to send test inputs to and measure output from a [7400 Quad 2-input NAND gate chip][] [pdf].

The ultimate goal is to run the test scripts from the [NAND to Tetris][] book against real hardware. Unfortunately I'd run into a number of problems with Artoo and run out of time, so the demo wasn't very impressive, but I was pleased to have got something working.

James A showed us some code he's built to run Ruby tests using one [fiber][Fiber Docs] per test method. The idea is that the test framework can hang onto references to the fibers and you can use them to go back and inspect the state of the system within any test e.g. at the point where the test failed.

James also showed us [Snozcumber][] which was something he developed a couple of years ago. It provides a way to write [Cucumber][]-style tests but without using [Gherkin][]. One particularly nice feature is the way that it generates an empty method definition for any missing "steps".

The meeting then reconvened in the pub, but I had to slip away. So that's all I have to report.

-- James.


[Makie]: https://mymakie.com/
[London XYZW Club]: http://xyzw.club/
[WebGL]: http://get.webgl.org/
[Arduino fruit machine]: https://www.youtube.com/watch?v=TN1qQwnYM6c
[Ruby Tapas]: http://www.rubytapas.com/
[ScreenFlow]: http://www.telestream.net/screenflow/
[London Computation Club]: http://london.computation.club/
[Artoo]: http://artoo.io/
[Arduino]: http://www.arduino.cc/
[7400 Quad 2-input NAND gate chip]: http://www.ti.com/lit/ds/symlink/sn74hct00.pdf
[NAND to Tetris]: http://www.nand2tetris.org/
[Fiber Docs]: http://www.ruby-doc.org/core-2.1.4/Fiber.html
[Snozcumber]: https://github.com/lazyatom/snozcumber
[Cucumber]: http://cukes.info/
[Gherkin]: https://github.com/cucumber/gherkin

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-11-17 14:28:00 +01:00
:updated_at: 2014-11-17 14:28:00 +01:00
:page_title: Show and Tell 7
