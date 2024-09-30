Week 819
========

Week beginning Monday 23 September, 2024.

We continued to focus on [Mission Patch][mission-patch] this week: continuing to implement [Guy][guy-moorhouse]'s designs, and to move the patch designer functionality to [Rails][ruby-on-rails].

Having spiked on both using the [actionview-svelte-handler Gem][actionview-svelte] to render our [SvelteKit][sveltekit] components in Rails, and on rewriting the SvelteKit components in Rails we agreed that the latter was the best choice for us. [James][james-mead] got to work and had most of the patch design functionality rewritten in Rails by the end of the week which is awesome. We envisage a number of advantages to this approach:

- a simpler architecture with everything in a single Rails app instead of split between SvelteKit and a Rails API
- the ability to more easily share the Mission Patch SVGs in Open Graph/Twitter cards and on the checkout page
- an app that doesn't require JavaScript to work! I know we're not designing a Government service but [their advice][govuk-spa] applies just as well to us in this situation too:

> Do not build your service as a single-page application (SPA). This is where the loading of pages within your service is handled by JavaScript, rather than the browser.
> Single page applications rarely bring benefits and can make the service inaccessible.

On the redesign front, we made some tweaks to the redesigned homepage and used [BrowserStack][browser-stack] to check that it looks/works as expected in the main browsers that have been available since 2020. I'm sure we could improve how it looks in earlier versions of these browsers but this feels good enough for now. We should be in a position to get this deployed in week 820.

I ran into a few problems developing the app locally during the week. The first was that I'd recently installed the [uBlock][uBlock] browser extension which (after some debugging) turns out to prevent the SvelteKit app from running locally (but not in production). We agreed that it's not worth investigating given that we're planning to replace the SvelteKit app with Rails. I'm also seeing a single test failure in the end to end tests which exercise the SvelteKit app, Rails app and various third party (e.g. Stripe) integrations. We have a test that purchases a digital download of a mission patch and compares the downloaded version with a version generated from the app in production. This test works fine on Macs and Linux in CI but not on my Ubuntu laptop. The images look the same to my eye but `diff` reports differences in the binary files.

## RubyForge &#128279;

We've been speaking to [Ruby Central][ruby-central] about the idea of resurrecting something like [Tom Stuart][tom-stuart]'s [rubyforge redirects project][rubyforge-redirects] to attempt to reverse some of the link rot caused by [RubyForge][rubyforge] shutting down.

## R&D tax credits &#128183;

[Chris][chris-lowis] and James have continued to explore whether we're eligible for [R&D tax relief][r-and-d-tax-relief] for some of our previous projects. I really appreciate their work on this as I find it particularly hard to motivate myself to work on these sorts of things.

## Congratulations! &#127870;

And finally. Congratulations to Chris and his wife who celebrated their 10th wedding anniversary on Friday.

[actionview-svelte]: https://codeberg.org/reesericci/actionview-svelte-handler/
[browser-stack]: https://www.browserstack.com/
[chris-lowis]: /chris-lowis
[govuk-spa]: https://www.gov.uk/service-manual/technology/using-progressive-enhancement#single-page-applications
[guy-moorhouse]: https://www.futurefabric.co/
[james-mead]: /james-mead
[mission-patch]: https://mission-patch.com
[r-and-d-tax-relief]: https://www.gov.uk/government/collections/research-and-development-rd-tax-relief
[ruby-central]: https://rubycentral.org/
[ruby-on-rails]: https://rubyonrails.org/
[rubyforge]: https://en.wikipedia.org/wiki/RubyForge
[rubyforge-redirects]: https://github.com/tomstuart/rubyforge-redirects
[sveltekit]: https://kit.svelte.dev/
[tom-stuart]: https://tomstu.art
[uBlock]: https://ublockorigin.com/

:name: week-819
:updated_at: 2024-09-30 10:59:00.000000000 +01:00
:created_at: 2024-09-30 10:59:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 819
:extension: markdown
