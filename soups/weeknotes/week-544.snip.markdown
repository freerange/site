Weeks 543 & 544
===============

We continue to work nearly full-time on [FutureLearn][futurelearn]. [Chris][chris-lowis] and [James][james-mead] from the FutureLearn office (although James is currently taking a well-deserved holiday) and [Ben][ben-griffiths] and I from ours.

Ben and I are still working on a change related to the [Strong Customer Authentication][sca] rules that come into force in September. We _think_ we're nearly there although it's been quite a frustrating journey. We had a spike implementation working in a couple of days but implementing it for real uncovered quite a few edge cases that we need to handle. On the upside I've really enjoyed working and pairing with Ben on these tricky problems.

I spent a while trying to get the FutureLearn app running in a [Vagrant][vagrant] provisioned [VirtualBox][virtualbox] VM. Although it all works the performance is prohibitively slow when accessing the app using shared folders. I've read various things about how using [NFS][nfs] (instead of VirtualBox's native sharing) or even switching to [VMware][vmware] can improve things but I've not had much success with either. The only thing that gets me close to the performance of running the tests on my machine is to avoid shared folders altogether. Which makes it slightly less convenient for development unless you can install your editor of choice in the VM.

We're currently contracted with FutureLearn until the end of July and so we've started talking about what we do next. We've had a couple of conversations about interesting projects in the last couple of weeks and will continue to try to fit these in where possible. We're keen to avoid the situation we found ourselves in at the beginning of the year where we were struggling to find work.

Chris and I had a good evening at [Goodnight Disruption][goodnight-disruption] (a [CoTech][co-tech] sponsored event hosted as part of [London Tech Week][london-tech-week]) last Friday. I enjoyed catching up with a few people I've not seen for a while.

Ben, Chris and I were joined by [Rob][rob-mckinnon] for an intimate but enjoyable [Show & Tell][show-and-tell-events] this week. I hope to write this up in a bit more detail soon.

Have great weekends.

-- Chris

[ben-griffiths]: /ben-griffiths
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[futurelearn]: https://www.futurelearn.com/
[goodnight-disruption]: https://attending.io/events/goodnight-disruption-2-london-tech-week
[james-mead]: /james-mead
[london-tech-week]: https://londontechweek.com/
[nfs]: https://en.wikipedia.org/wiki/Network_File_System
[rob-mckinnon]: https://github.com/robmckinnon
[sca]: https://en.wikipedia.org/wiki/Strong_customer_authentication
[show-and-tell-events]: /show-and-tell-events
[vagrant]: https://www.vagrantup.com/
[virtualbox]: https://www.virtualbox.org/
[vmware]: https://www.vmware.com/uk.html

:name: week-544
:updated_at: 2019-06-21 16:43:02.366502000 +01:00
:created_at: 2019-06-21 16:43:02.366498000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Weeks 543 & 544
:extension: markdown
