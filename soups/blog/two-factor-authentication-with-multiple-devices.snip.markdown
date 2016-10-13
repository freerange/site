Two-factor Authentication with Multiple Devices
===============================================

As a bit of a follow-up to our recent [blog post on Sharing Credentials][Sharing Credentials], we thought we'd tell you of a little trick we've come across.

As I [mentioned][Sharing Credentials - Problems], we've held off setting up [2FA][] for some of our shared accounts, because we didn't want to tie the account to one person's mobile phone. However, we've just had success setting up our shared Dropbox account to use 2FA for _either_ of our mobile phones.

The way we did it was to go through the [normal procedure for setting up two-step verification][Dropbox 2-step verification instructions]. We chose to use the [Google Authenticator][] app on our phones and (here's the "clever" bit), we _both_ scanned the QR code with our mobile phones. We then confirmed that both our phones were generating the same security codes at the same time.

This seems to be working really nicely and we're adopting the same tactics with a number of our other shared accounts. Perhaps this isn't news to you, but hopefully it might help someone!

-- James.


[Sharing Credentials]: /sharing-credentials
[Sharing Credentials - Problems]: /sharing-credentials#problems
[2FA]: http://en.wikipedia.org/wiki/Multi-factor_authentication
[Dropbox 2-step verification instructions]: https://www.dropbox.com/en/help/363
[Google Authenticator]: http://support.google.com/accounts/bin/answer.py?hl=en&answer=1066447


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2014-10-20 16:54:00 +01:00
:updated_at: 2014-10-20 16:54:00 +01:00
:page_title: Two-factor Authentication with Multiple Devices
