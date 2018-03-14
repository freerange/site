Week 478 - Interesting links
============================

### [Git trivia](https://twitter.com/tomstuart/status/973667727826149382)

[Tom S][] explains that, when splitting a commit during an interactive rebase, it's possible to see the parts of the original change that are outstanding using the following command. <%= by('james-mead') %>

```
git diff `cat .git/rebase-merge/stopped-sha`
```

[Tom S]: http://codon.com/


### [CoTech Community Call #2](https://blog.weareopen.coop/cotech-community-call-2-ce978934fc8f)

I really appreciate [Laura Hilliger][] taking the time to write up these notes. GFR gets a bit of a mention. Thanks to [Chris L][] for being the voice of Go Free Range on the call! <%= by('james-mead') %>

[Chris L]: /chris-lowis
[Laura Hilliger]: https://www.laurahilliger.com/

### [Lessons learned writing data pipelines](https://medium.com/@victorarias/lessons-learned-writing-data-pipelines-5746deb630a8)

Victor Arias talks about some of the hard-won lessons he learned building the data warehouse infrastructure at [FutureLearn](https://futurelearn.com). I also worked on this system and we often spoke about how we'd love to share what we were doing but never seemed to find the time. Victor has decided to try to post one thing a week with the barrier to publishing being [something helpful that someone around him didn't know about](https://twitter.com/ariassp/status/968623155366555648). I think that's a really good strategy and look forward to reading more. <%= by('chris-lowis') %>

### [What the jot command can do for you](https://www.networkworld.com/article/3200222/linux/what-the-jot-command-can-do-for-you.html)

I came across `jot` when looking for a way of generating a random number within a range (between 1 and the total number of lines in a text file). I'd not come across it before but it worked perfectly for what I wanted to be able to do. The `jot` utility does more than just generate random numbers and this article gives some examples of what it can be used for. <%= by('chris-roos') %>


### [The proposed contract variation for Digital Outcomes and Specialists 2](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/686085/proposed-contract-variation-digital-outcomes-and-specialists-2.pdf)

We were recently asked to agree to GDPR-related changes in the contract for the Digital Outcomes and Specialists Framework. I was really happy to see that the changes were clearly displayed using a diff-like output: red and green highlighting to differentiate between removals and additions. We've received numerous contract variations in the past that require fairly significant work to see what's actually changed so it's great to see this approach by [GDS/CSS](https://www.gov.uk/government/publications/digital-outcomes-and-specialists-2-framework-agreement). <%= by('chris-roos') %>


:name: week-478-links
:updated_at: 2018-03-08 10:25:07.903645000 +00:00
:created_at: 2018-03-08 10:25:07.903644000 +00:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 478 - Interesting links
:extension: markdown
