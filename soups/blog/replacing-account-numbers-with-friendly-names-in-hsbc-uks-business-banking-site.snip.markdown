Replacing account numbers with friendly names in HSBC UK's business banking site
=======

We've recently opened a second HSBC Business Money Manager account in order to maintain separate pots of money for different liabilities that we want to track. Unfortunately, this has left us with two (well, three really) very similar looking accounts in the banking interface.

<%= image_tag('blog/hsbc-with-unfriendly-account-numbers.png', alt: 'Screenshot showing HSBC business banking with account numbers') %>

I don't think we had an opportunity to choose the name of the account, and I can't find any functionality to rename it now, so resorted to playing with JavaScript to get what I was after. The result is that we can now display friendly account names making it easy to choose which account to select at a glance.

<%= image_tag('blog/hsbc-with-friendly-account-names.png', alt: 'Screenshot showing HSBC business banking with friendly account names') %>

This might seem a bit gimmicky but I think it's good to remember that the web offers us this ability to customise our experience of the sites we interact with.

## To play along at home (assuming you're using Chrome):

* Take a copy of the [user script](https://gist.github.com/chrisroos/8862244)
* Replace the account numbers and names
* Open the [Chrome extensions page](chrome://extensions/)
* Drag the user script from your computer on to the extensions page
* Visit HSBC banking and you should (hopefully) see that your account numbers have been replaced by the friendly names.

## Future ideas

This is very much a toy project but I can already see some things that we could do if we found it useful.

* Turn the user script into a full blown browser extension.
* Store the account numbers to names mapping in user preferences somewhere. I'm not sure this is possible with a user script but it certainly would be if it was an extension.
* Load the account numbers to names mapping from somewhere external. This would make it easier for multiple people to share the same mappings.
* Build on this tiny project to really customise HSBC so that it becomes much better at doing the things we need.


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2014-02-07 13:25:00 +00:00
:updated_at: 2014-02-07 13:25:00 +00:00
:page_title: Replacing account numbers with friendly names in HSBC UK's business banking site
