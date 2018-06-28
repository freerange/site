Show and Tell 45
================

At this weeks Show and Tell [Ben](/ben-griffiths) and [I](/chris-lowis) were joined by [Chris P](https://twitter.com/chrispatuzzo) and [Tom S](https://twitter.com/tomstuart) in our offices in Whitechapel.

## Chris P

Chris showed us some code he's been writing to generate web applications from Rust code.

Chris has been watching a series of old MIT lectures on computation theory that he [found on YouTube](https://www.youtube.com/playlist?list=PL601FC994BDD963E4). He was particularly taken with the series on Finite State Machines and wanted to build an interactive web application that allowed people to play with the machines in a similar way to the [Turing Machine Simulator](https://turingmachinesimulator.com/).

He wasn't sure what to build the application with so decided to use it to explore some new technology. In particular he wanted to learn more about WebGL and Rust. Rust has a tool called [Cargo Web](https://github.com/koute/cargo-web) that allows Rust programs to be compiled to [WebAssembly](https://en.wikipedia.org/wiki/WebAssembly) using Rust's new native compiler backend.

WebAssembly programmes have to call out to their containing browser environment using calls to the JavaScript API provided by browsers. For this to work from inside the Rust program there is a library called [stdweb](https://github.com/koute/stdweb) which provides some bindings.

Chris used these bindings to build an [abstraction module](https://github.com/tuzz/fsm/blob/master/src/webpage/mod.rs) that would handle adding HTML and CSS to a page and creating a Canvas element. This allowed him to keep his [main functions](https://github.com/tuzz/fsm/blob/master/src/main.rs) free from non-Rust code.

He's been working through the [WebGL Fundamentals](https://webglfundamentals.org/) tutorials and porting some of the examples to Rust. He showed us some basic [fragment](https://github.com/tuzz/fsm/blob/4a5c0a099bcda53d2e5f1bcc3f96fcae833358d6/src/shader.frag) and [vertex](https://github.com/tuzz/fsm/blob/4a5c0a099bcda53d2e5f1bcc3f96fcae833358d6/src/shader.vert) shaders for drawing a simple triangle on the screen.

Along the way Chris has been playing around with Rust's macro language and has developed an [experimental library](https://github.com/tuzz/prismatic) to make it easier to initialise structs.

We had an interesting chat at the end of Chris's tour about his approach to learning and how he deliberately chooses new technologies and concepts when working on a problem that often take him away from his original goal. Chris said that while he plans to try and finish his tool for learning about Finite State Machines he's also happy with how much he's learnt about these new technologies.

# Ben G

Ben talked about a side project he's been working on at Go Free Range. He explained how GFR have been looking for ways to generate some revenue that isn't as so closely tied to selling their time to clients. GFR have been building a small product to sell online as a means to generate some revenue but also to prove to themselves that they can talk an idea through to deployment as a team.

Ben mentioned how they looked for problems they could solve for an audience that they understood. In particular they focussed on technical leads in software development teams. Ben said that in previous work he's noticed that teams don't celebrate success as often as they could. GFR came up with an idea to help teams with this and have a bit of fun along the way.

Ben showed the small application he's been working on and how it is built using the language [Elm](http://elm-lang.org/). We saw how an Elm application is architected and talked about some of the ways its type system helps you to avoid making mistakes.

<!-- add content here -->

:name: show-and-tell-45
:updated_at: 2018-06-28 15:04:18.019798000 +01:00
:created_at: 2018-06-28 15:04:18.019790000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Show and Tell 45
:layout: show-and-tell-layout
:extension: markdown
