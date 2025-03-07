Show and Tell 31
================

[Chris][chris-lowis] and I ([James][james-mead] was enjoying some time off) were joined by [Amy][amy-wagner], [Leo][leo-cassarini], [Ben G][ben-griffiths], [Tom S][tom-stuart], [Rob C][rob-chatley] and [Rob D][rob-dupuis] for our 31st Show & Tell at Forge & Co on Wed 12 Apr.

Thanks to Tom S for the photos!

[amy-wagner]: http://amyeee.com/
[ben-griffiths]: https://twitter.com/beng
[chris-lowis]: /chris-lowis
[james-mead]: /james-mead
[leo-cassarini]: https://twitter.com/cassarani
[rob-chatley]: https://www.doc.ic.ac.uk/~rbc/
[rob-dupuis]: https://github.com/robd
[tom-stuart]: http://codon.com/

---

## Ben G

Ben kicked things off by talking a bit more about [Snap!][snap]: the drag and drop programming language he showed us at [Show & Tell 30][show-and-tell-30] last month.

Ben showed us some software he and his son had built to help with his son's homework. I seem to recall that the homework involved coming up with a number of sentences in the format of "\<proper noun> \<verb> \<determiner> \<noun>" (e.g. Ben carried that lift). They fed lists of proper nouns, verbs, determiners and nouns into their app and had a cartoon character display a random question and answer.

<%= image_tag('blog/2017-04-12-show-and-tell-31-ben-g.jpg', alt: "Ben shows us his son's homework program") %>

[pete-herlihy]: https://twitter.com/yahoo_pete
[pete-o-tron]:  https://github.com/tomstuart/pete-o-tron
[show-and-tell-30]: /show-and-tell-30
[snap]: http://snap.berkeley.edu/

---

## Tom S

Tom showed us some work he's been doing while reading the [Types and Programming Languages book][tapl] at [London Computation Club][london-computation-club].

<%= image_tag('blog/2017-04-12-show-and-tell-31-tom-s.jpg', alt: 'Tom shows us the Types and Programming Languages book') %>

Having read the book previously, he's using this second reading as an opportunity to approach it a bit differently. He's developing some [inference rules][tom-s-inference-rules] with the intention of being able to evaluate the languages in chapter 3 of the book. The README in the inference rules repo appears to be a good place to start if you want to learn more. Alternatively, I'm sure you'll be more than welcome at the London Computation Club meetings.

Tom explained that Types and Programming Languages book was influential in his writing of [Understanding Computation][understanding-computation] and that they both share a similar style.

[london-computation-club]: http://london.computation.club/
[tapl]: https://www.cis.upenn.edu/~bcpierce/tapl/
[tom-s-inference-rules]: https://github.com/tomstuart/inference-rules
[understanding-computation]: http://computationbook.com/

---

## Leo

Leo showed us a tool he's been developing on and off since late 2016. He's experimenting with a utility to visualise what's going on in a computer in the way that an [FMRI][fmri] or [CAT scan][cat-scan] might help visualise what's happening in the brain.

Leo used his utility to visualise real-time memory access when running `top` and `sqlite`. It was interesting to see that the heap was accessed almost constantly while everything else remained relatively static. It also looked quite a bit like the disk defragmenter utility in Windows :-)

<%= image_tag('blog/2017-04-12-show-and-tell-31-leo.jpg', alt: 'Leo shows us his tool for monitoring memory access') %>

The OS doesn't provide the data required to build such a tool so Leo's using [Pintools][pintools] to (as I understand it) rewrite the binaries and inject code to record memory access. This data is then visualised using JavaScript. Leo pointed out that this act of instrumentation results in the binaries being quite a bit slower than their original counterparts.

Let's interested in whether such a visualisation tool can help characterise software in some way without having to understand the internals.

Tom S mentioned [Valgrind][valgrind] as software in a similar space that might be interesting to investigate.

[cat-scan]: https://en.wikipedia.org/wiki/CT_scan
[fmri]: https://en.wikipedia.org/wiki/Functional_magnetic_resonance_imaging
[pintools]: https://software.intel.com/en-us/articles/pin-a-dynamic-binary-instrumentation-tool
[valgrind]: http://valgrind.org/

---

## Rob C

Rob showed us [Diggit][diggit]: a [tool built by Lawrence Jones][lawrence-diggit-blog-post] while studying Computing at Imperial.

Diggit analyses the history of a repository in order to provide automated Pull Request reviews covering things like:

* Suggesting additional changes that might be required, e.g. expected app_controller.rb to change as it was modified in 83% of changes when app_template.html was changed.
* Highlighting that a method has been growing in size over time.
* Highlighting that a file has increased in complexity over time.

<%= image_tag('blog/2017-04-12-show-and-tell-31-rob-c.jpg', alt: 'Rob shows us Diggit') %>

I think the idea is for Diggit to be offered as a service so that multiple projects can make use of it. Rob mentioned that it had been optimised to be able to offer feedback on a PR within 10 minutes. I think this is based on some research from Facebook that suggests this is about the longest people are willing to wait before moving on to something else.

There was some interesting, albeit slightly over my head, discussion about the algorithms used to analyse the code in a repository. Rob mentioned [A priori estimates][a-priori-estimates] and the [FP-Growth algorithm][fp-growth-algorithm], the latter of which is apparently used in supermarkets to offer you alternatives based on what you purchased.

Rob mentioned that the tool wasn't always useful and used an example of it suggesting an update to a Gemfile when the Gemfile.lock has changed: while a change to the Gemfile will always trigger a change to the Gemfile.lock, the reverse isn't necessarily true.

Tom S mentioned that there are some similarities with [James M's method-log project][method-log].

Leo mentioned [Code Climate][code-climate] as doing something similar although I understand that that doesn't take the history of the code into account.

Someone (I forget who, sorry!) mentioned [Codescene][codescene]. A tool that supposedly helps you identify areas of your code that might warrant some further investigation.

And finally, a couple of people mentioned [Danger][danger-systems] as another service that helps automate aspects of the PR review process.

[a-priori-estimates]: https://en.wikipedia.org/wiki/A_priori_estimate
[code-climate]: https://codeclimate.com/
[codescene]: https://codescene.io/projects/174/jobs/744/results/social/social-networks
[danger-systems]: http://danger.systems/
[diggit]: https://github.com/lawrencejones/diggit
[fp-growth-algorithm]: https://en.wikibooks.org/wiki/Data_Mining_Algorithms_In_R/Frequent_Pattern_Mining/The_FP-Growth_Algorithm
[lawrence-diggit-blog-post]: https://medium.com/@lawrjone/diggit-mining-git-repositories-for-developer-insights-27aebe4070a6
[method-log]: /tracing-the-git-history-of-a-ruby-method

---

## Show & Tell 32

Please [get in touch][contact] if you're interested in joining us for the next Show & Tell on Wednesday, 10th May 2017.

[contact]: /contact

:name: show-and-tell-31
:updated_at: 2017-04-28 17:21:04.348718000 +01:00
:created_at: 2017-04-28 17:21:04.348709000 +01:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 31
:layout: show-and-tell-layout
:extension: markdown
:erb: true
