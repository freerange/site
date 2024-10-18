Week 822
========

Week beginning Monday, 14th October 2024.

[Chris L][] arrived back 🛬 from his 🇺🇸 Las Vegas 🎰 trip on Tuesday evening where he'd met up with some friends and attended the 🎶 [Best Friends Forever Fest][] 🎶. The proverbial caveat [^1] notwithstanding, it sounds as if he had a really good break, although he was inevitably suffering from jet lag 😴 on Wednesday!

## Mission Patch 🚀

I continued to port the app from [SvelteKit][] to [Rails][] 🚂 concentrating on progressively enhancing the patch designer using [Hotwire Stimulus][] and [Hotwire Turbo Streams][]. So far I've been very impressed with how relatively straightforward it's been to implement the JavaScript enhancements and how well they're working. And it's been a massive help to be able to bounce ideas off [Chris R][] as I've been going along. I'm really looking forward to getting the changes live and writing about the implementation in more detail.

[Guy][guy-moorhouse] gave us some very helpful feedback on our initial implementation of the new home page design via the medium of a [Supercut][] video with him talking us through a number of issues and demonstrating how to fix them in the browser developer tools. 🎉

## Jam 🍓

Chris R spent some more time 🥇 working through the explanations on the historical transactions in [FreeAgent][] [^2] checking the way we've handled VAT. He also did some more thinking about how we might make better use FreeAgent, [DoubleAgent][], [Stripe Connect][], etc, to simplify or even automate the work involved 🤖.

When Chris L was back, the two of them had a useful conversation about how we should handle the [The Platform Operators regulations][] which might require us to do due diligence on [jam.coop][] sellers and report their income to HMRC. 💸

## SendBoard & Trello Butler 📩🤵

Long-time readers of this blog will know that we make heavy use of [Harmonia][] and [Trello][] to manage the day-to-day operation of the co-op. However, it looks as if we haven't written much about our use of the [SendBoard Trello Power-Up][] which is something we should rectify.

Anyway, we've wired up our main [email address][gfr-email] with our main Trello board and so that we can use it as a shared inbox. Over the last couple of days, Chris&nbsp;R has [added][trello-configuration] a bunch of Trello's [Butler Rules][] to automatically add comments to Trello cards relating to emails that we can probably ignore - thanks, Chris! 👏

## Mastodon 🐘

The Mastodon v4.3 release [includes support][helping-writers] for what [Robb Knight calls "author tags"][author-tags]. I noticed that [James A][] had already upgraded [ruby.social][] 🏆 where GFR has [an account][freerange-ruby-social], so I [added the relevant `meta` tag][commit-fce6f547] to our website and configured the settings in our Mastodon account. All being well, you should now see a little "More from Go Free Range Ltd" link whenever we post a link to a page on our website/blog. 🤞


## Podcast 🎙️🎧

I read [Simon Willison's article][] about using the [new Audio Overview feature][] in [Google's NotebookLM][] to generate a podcast based on a website and so, as a bit of fun, I decided to generate one for [this site][gfr-website]. The result, although a bit cringeworthy in places, is uncannily coherent - I hope you enjoy it!

<p>
  <audio src="/media/blog/notebooklm-gfr-podcast.mp3" controls>
    Your browser does not support audio.
  </audio>
</p>

Anyway, that's all for this week! 👋

[^1]: What happens in Vegas, stays in Vegas!
[^2]: Referral link

[Chris L]: /chris-lowis
[Best Friends Forever Fest]: https://www.bestfriendsforeverfest.com/
[Rails]: https://rubyonrails.org/
[SvelteKit]: https://kit.svelte.dev/
[Hotwire Stimulus]: https://stimulus.hotwired.dev/
[Hotwire Turbo Streams]: https://turbo.hotwired.dev/handbook/streams
[Chris R]: /chris-roos
[FreeAgent]: http://fre.ag/3276i4uh
[DoubleAgent]: https://doubleagent.io
[Stripe Connect]: https://stripe.com/gb/connect
[The Platform Operators regulations]: https://www.legislation.gov.uk/uksi/2023/817/contents/made
[helping-writers]: https://blog.joinmastodon.org/2024/10/mastodon-4.3/#helping-writers-and-journalists
[author-tags]: https://rknight.me/blog/setting-up-mastodon-author-tags/
[James A]: http://lazyatom.com/
[freerange-ruby-social]: https://ruby.social/@freerange
[commit-fce6f547]: https://github.com/freerange/site/commit/fce6f547853b4f6426995065972be6ff9128dce4
[Harmonia]: https://harmonia.io/
[Trello]: https://trello.com
[SendBoard Trello Power-Up]: https://www.sendboard.com/
[gfr-email]: mailto:lets@gofreerange.com
[Butler Rules]: https://support.atlassian.com/trello/docs/create-and-manage-automations/#Rules
[trello-configuration]: https://github.com/freerange/trello-configuration
[jam.coop]: https://jam.coop
[guy-moorhouse]: https://www.futurefabric.co/
[Supercut]: https://supercut.video
[Google's NotebookLM]: https://notebooklm.google.com/
[Simon Willison's article]: https://simonwillison.net/2024/Oct/17/notebooklm-pelicans/
[new Audio Overview feature]: https://blog.google/technology/ai/notebooklm-update-october-2024/
[gfr-website]: /
[ruby.social]: https://ruby.social

:name: week-822
:updated_at: 2024-10-18 15:49:00.000000000 +01:00
:created_at: 2024-10-18 15:49:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 822
:extension: markdown
