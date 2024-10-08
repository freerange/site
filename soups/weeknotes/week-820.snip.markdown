Week 820
========

Week beginning Monday 30 September, 2024.

## Mission Patch &#128640;

[James][james-mead] is continuing to port the [Mission Patch][mission-patch] designer to [Rails][ruby-on-rails]. It's nearly feature complete and doesn't require any JavaScript - that'll come later in the form of enhancements to the core functionality. James took a slight detour to upgrade to [Bootstrap][bootstrap] 5 in the Svelte version of Mission Patch, in order to make it easier to port to Rails.

I'm still seeing a failure when running the tests on my laptop: the generated mission patch image differs (impercetibly to my eye) from the fixture file. I've started exploring using [pixelmatch][pixelmatch] to see whether we can get confidence that the images are equal enough without being a pixel perfect match.

James and I spent a while investigating [Content Security Policy][csp] (CSP) errors and warnings we're seeing in the browser and Rollbar. We have CSP in report-only mode at the moment but we were still seeing errors appear in [Rollbar][rollbar]. It transpires that as well as manually sending the CSP violations to Rollbar as warnings from our reporting endpoint, we'd also enabled the `autoInstrument.errorOnContentSecurityPolicy` setting which caused Rollbar to report them as errors. We've disabled the latter of these two for now which means we still get the reports logged in Rollbar but only as warnings and not as errors.

I fixed a bug that meant it was only possible to type one character at a time in Mission Patch designer text fields. I didn't get to the bottom of what caused it but discovered that disabling [SvelteKit][sveltekit]'s preloading of the designer fixed it. Given that we're porting the designer to Rails we've agreed that it's not worth investigating further.

I continued to make progress on implementing the homepage redesign and am currently digging through previous orders to find some good examples to highlight - we're intending to copy the style/image but to change the text as we haven't asked for permission to display any of the previous orders.

## Jam &#127926;

We received another [external contribution][jam-pr-222] to [Jam][jam] recently, and [Chris][chris-lowis] spent some time this week tidying it up and getting it merged.

## RubyForge redirects &#128279;

We had more conversations with [Ruby Central][ruby-central] and made a little more progress on the RubyForge redirects project. We discovered that [gems.rubyforge.org][] redirects to [rubygems.org] from something hosted on a [Fastly][fastly] IP, which led us to [Fastly's Redirects][fastly-redirects] which look like a promising solution to this problem.

## Money, money, money &#128183;

We've decided not to pursue the [R&D tax credits][r-and-d-tax-relief] claim we were looking at last week. There was only a single project during the period that _might_ have been eligible so we decided it wasn't worth the time to claim.

Chris and James chatted to [Grantify][grantify] about the possibility of grant funding for Mission Patch, Jam or some other future project. It sounds as though both Mission Patch and Jam are suitable candidates so we now need to decide whether we're willing to risk the application cost as there are no guarantees we'd be successful.

[bootstrap]: https://getbootstrap.com/
[chris-lowis]: /chris-lowis
[csp]: https://en.wikipedia.org/wiki/Content_Security_Policy
[fastly]: https://www.fastly.com/
[fastly-redirects]: https://www.fastly.com/documentation/solutions/tutorials/redirects/
[gems.rubyforge.org]: http://gems.rubyforge.org
[grantify]: https://www.grantify.io/
[jam]: https://jam.coop/
[jam-pr-222]: https://github.com/freerange/jam-coop/pull/222
[james-mead]: /james-mead
[mission-patch]: https://mission-patch.com/
[pixelmatch]: https://github.com/mapbox/pixelmatch
[r-and-d-tax-relief]: https://www.gov.uk/government/collections/research-and-development-rd-tax-relief
[rollbar]: https://rollbar.com
[ruby-central]: https://rubycentral.org/
[ruby-on-rails]: https://rubyonrails.org/
[rubyforge]: https://en.wikipedia.org/wiki/RubyForge
[rubygems.org]: https://rubygems.org/
[sveltekit]: https://kit.svelte.dev/

:name: week-820
:updated_at: 2024-10-08 10:53:00.000000000 +01:00
:created_at: 2024-10-08 10:53:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 820
:extension: markdown
