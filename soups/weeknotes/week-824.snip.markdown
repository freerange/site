Week 824
========

Week beginning Monday, 28th October 2024.

It's been a bit quieter at work this week with some planned time off over half term.

## Mission Patch

Having deployed the Rails-only version of [Mission Patch][mission-patch] last week, [James][james-mead] wasted no time removing the [SvelteKit][svelte-kit] version early this week. I always find it satisfying to remove code that's no longer required.

James has also begun working on displaying the designed mission patch on the [Stripe][stripe] checkout page. He had a spike of this working in the SvelteKit version of the app but it's been made much easier by the fact that it's now generated server side instead of on the client.

<%= image_tag('blog/2024-11-01-mission-patch-stripe-checkout.png', alt: 'A screenshot showing the Mission Patch on the Stripe checkout page') %>

The steady <del>stream</del> trickle of orders continued this week with patches for organisations including the [NHS][nhs] and a leading provider of compliance software. We're nowhere near Mission Patch justifying its existence financially but fortunately we're in a position ([at least at the moment](#business-development)) that we can support things that we want to exist in the world rather than only those that offer a financial return on investment.

## Translation Management Systems

In light of [LocaleApp][localeapp] shutting down[^1] James took some time out from Mission Patch to do some investigation into the state of [Translation Management Systems][tms] in Rails on behalf of one of our ex-colleagues at [The Audience Agency][taa]. Among others he discovered [YAMLFish][yamlfish] which looks interesting.

## Jam

[Chris][chris-lowis] [made some improvements to the user's settings page][jam-pr-226] in [Jam][jam] and has made a start on improving the artist settings page too.

<%= image_tag('blog/2024-11-01-jam-artist-profile.png', alt: 'A screenshot showing the redesigned artist settings on jam.coop') %>

## RubyForge redirects

Having received the go-ahead from [Ruby Central][ruby-central] I tidied and made the [rubyforge-redirects repository][rubyforge-redirects] public in preparation for getting things setup in the various Ruby Central accounts. The plan is to:

- use [Fastly][fastly] as a [CDN][cdn] for rubyforge.org
- use a [GitHub Pages][github-pages] hosted 404 page as the origin of the Fastly CDN
- use [Fastly's redirects][fastly-redirects] to redirect known rubyforge.org URLs to their current location
- use [Fastly's log streaming][fastly-log-streaming] to monitor requests in order to prioritise the rubyforge.org URLs to redirect

## Business development

Chris has taken the lead on business development recently, contacting various people in our network to see whether there's anything we can get involved in. Apart from one or two possibilities everything feels very quiet at the moment...

[^1]: "After more than a decade of making localization easier for Ruby on Rails developers, we’ve made the tough call to officially retire LocaleApp on April 5, 2025.", from the LocaleApp homepage.

[cdn]: https://en.wikipedia.org/wiki/Content_delivery_network
[chris-lowis]: /chris-lowis
[fastly]: https://www.fastly.com/
[fastly-log-streaming]: https://docs.fastly.com/en/guides/streaming-logs
[fastly-redirects]: https://www.fastly.com/documentation/solutions/tutorials/redirects/
[github-pages]: https://pages.github.com/
[jam]: https://jam.coop/
[james-mead]: /james-mead
[jam-pr-226]: https://github.com/freerange/jam-coop/pull/226
[localeapp]: https://www.localeapp.com/
[mission-patch]: https://mission-patch.com
[nhs]: https://www.nhs.uk/
[ruby-central]: https://rubycentral.org/
[rubyforge-redirects]: https://github.com/freerange/rubyforge-redirects
[stripe]: https://stripe.com/gb
[svelte-kit]: https://kit.svelte.dev/
[taa]: https://www.theaudienceagency.org/
[tms]: https://en.wikipedia.org/wiki/Translation_management_system
[yamlfish]:  https://yamlfish.dev

:name: week-824
:updated_at: 2024-11-01 11:24:00.000000000 +01:00
:created_at: 2024-11-01 11:24:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 824
:extension: markdown
