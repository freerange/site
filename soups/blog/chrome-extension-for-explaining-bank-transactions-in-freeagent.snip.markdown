Chrome extension for explaining bank transactions in FreeAgent
=======

As regular readers of this blog will know, we're very keen on automating away as many mundane administrative tasks as we can. A few months back, [Chris][] described how he'd [created a bookmarklet][] to help with our weekly [Harmonia][] task to upload and explain our bank transactions within [FreeAgent][], our excellent book-keeping software.

## Evolving the bookmarklet

As we added more and more rules to the bookmarklet it became more and more useful. We got to the point where we thought it might be useful to other people and so we decided to make it a bit more generic. We also wanted to make it easy for people to install and configure. To this end, we decided to have a go at converting the bookmarklet into a [Chrome extension][].

We have a few [bookmarklets][] and [userscripts][] which we use internally and we thought it would be useful to know more about how to create Chrome extensions. Also we want to get _better at building things and writing about them_, and this seemed like a good candidate.

## How to use the extension

You'll find the latest installation and usage instructions in the [project README][], but essentially you just need to [install the Chrome extension][] from the Chrome Web Store and use the extension's _Options_ page to point it at a publicly hosted [JSON][] file containing the rules you want to use. An easy way to do this is to use a [GitHub Gist][] and point the extension at the _raw_ version of the Gist file.

Then when you're on an _unexplained_ bank transaction in FreeAgent, you can trigger the extension using the icon in the Omnibox (or a keyboard shortcut) to suggest an explanation for the transaction. The extension tries to find a rule matching the bank transaction description and if it finds one, it'll make the appropriate changes to the explanation form, but you still need to manually check the changes and submit the form.

For some transactions we like to upload an attachment, e.g. an invoice or receipt, and so the extension can remind you to upload an attachment if appropriate.

<iframe src="//player.vimeo.com/video/102040575" width="556" height="339" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/102040575">FreeAgent Transaction Explainer screencast</a> from <a href="http://vimeo.com/gofreerange">Free Range</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

## Why a Chrome extension?

We could've written a cron job to periodically add explanations via the [FreeAgent API][], but there are aspects of the process which we're not yet ready to automate e.g. uploading attachments, so having this semi-automated client-side workflow seems like a good compromise. It also makes it obvious when we're missing a rule or a rule is incorrect.

## Future work

We haven't worked on the extension for very long, so the code's not in brilliant shape, but in the spirit of _releasing early_, here it is!

Although we tend to use [Trello][] internally to manage our administrative work, we've recently been experimenting with using [GitHub Issues][] for tasks relating to a specific GitHub repository. It seems to have been working pretty well. Please feel free to report bugs or request features on the project's GitHub [issues page][].

You'll be able to see that we've captured a few of our ideas for further work as enhancements, but a couple of the more significant ones are:

* [Tell the user where to obtain the file to be attached](https://github.com/freerange/freeagent_transaction_explainer/issues/2) - at the moment we're capturing this info in an internal wiki page.
* [Support transaction where money has been paid to a user](https://github.com/freerange/freeagent_transaction_explainer/issues/15) e.g. salary, dividends, etc.

Anyway, let us know what you think.

[Chris]: /chris-roos
[created a bookmarklet]: /automating-some-of-the-freeagent-transaction-explanation-process
[Harmonia]: https://harmonia.io/
[FreeAgent]: http://www.freeagent.com/
[Chrome extension]: https://developer.chrome.com/extensions
[bookmarklets]: http://en.wikipedia.org/wiki/Bookmarklet
[userscripts]: http://en.wikipedia.org/wiki/Userscript
[project README]: https://github.com/freerange/freeagent_transaction_explainer/blob/master/README.md
[install the Chrome extension]: https://chrome.google.com/webstore/detail/freeagent-transaction-exp/lgpgdkoopbcppnipcnbodcobjmhagmim?hl=en&gl=GB
[JSON]: http://json.org/
[GitHub Gist]: https://gist.github.com/
[FreeAgent API]: https://dev.freeagent.com/docs/
[Trello]: https://trello.com/
[GitHub Issues]: https://github.com/features#issues
[issues page]: https://github.com/freerange/freeagent_transaction_explainer/issues

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-07-30 10:14:00 +00:00
:updated_at: 2014-07-30 10:14:00 +00:00
:page_title: Chrome extension for explaining bank transactions in FreeAgent

