Week 818
========

Week beginning Monday 16 September, 2024.

Hello! Haven't these [past 118 weeks][week-700] just flown by.

We're between client projects at the moment ([get in touch][contact] if you think there's something we can help with) so have taken the opportunity to spend some time working on [Mission Patch][mission-patch].

We recently hired [Guy Moorhouse][guy-moorhouse] to refresh the design of the site. We had limited time and budget so agreed that Guy would leave us with designs in [Figma][figma] that we can implement at our leisure. It was a pleasure working with Guy and he's provided us designs that we can start implementing as well as some slightly more speculative ideas for future work.

[Chris][chris-lowis] and I started translating Guy's new homepage design from Figma to the browser. I've really enjoyed working with Chris on this. It's been refreshing to be able to do the work to a standard that isn't always possible when working under the pressure and constraints of client projects.

<%= image_tag('blog/2024-09-23-mission-patch-redesign.png', alt: 'A screenshot showing the redesigned homepage of mission-patch.com') %>

We spent a while discussing whether we could provide Mission Patches as [Open Badges][open-badges] so that people could more easily share digital representations of their patches now that we're not as often in the same space to show off our sticker covered laptops.

[James][james-mead] finished the work to migrate us from our custom [Stripe][stripe] checkout to their hosted version and investigated using the [actionview-svelte-handler Gem][actionview-svelte] to bring our [Svelte][svelte] components into the Rails app. Unfortunately it doesn't seem like it's going to buy us enough to warrant the work involved so we're going to explore porting the Svelte components to [Rails][ruby-on-rails] instead, and use JavaScript to progressively enhance the patch designer. There's nothing in the site that means it has to be JavaScript only and, as a rule, we believe that server rendered apps are the way to go.

[actionview-svelte]: https://codeberg.org/reesericci/actionview-svelte-handler/
[chris-lowis]: /chris-lowis
[contact]: /contact
[figma]: https://www.figma.com
[guy-moorhouse]: https://www.futurefabric.co/
[james-mead]: /james-mead
[mission-patch]: https://mission-patch.com
[open-badges]: https://openbadges.org/
[ruby-on-rails]: https://rubyonrails.org/
[stripe]: https://stripe.com/gb
[svelte]: https://svelte.dev/
[week-700]: https://gofreerange.com/week-700

:name: week-818
:updated_at: 2024-09-23 14:00:00.000000000 +01:00
:created_at: 2024-09-23 14:00:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 818
:extension: markdown
