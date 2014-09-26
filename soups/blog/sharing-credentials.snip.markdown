Sharing Credentials
===================

The idea that _everyone_ has joint responsibility for _everything_ is deeply engrained in the ethos of our company. One of the main benefits of this approach is that we're all aware of the state of the company, how the company operates, what the company is planning, etc. It also means we're not dependent on any one person for getting things done.

We also strive to run a paperless office and in doing so we make use of many online services. However, the combination of these two approaches means that we all need access to these online services.

While a few of these services allow you to have multiple users for a single account, or at least some notion of an organisation, the majority of them do not. There are also a few services that do allow multiple users per account, but only as part of an expensive monthly plan.

This leaves us with a problem: how can we share credentials for each of these services?

## Early days

In the early days we used a shared text file zipped with a password. Also, given that at this point we didn't have many services to secure, we tended to use a number of well-known passwords.

However, as we used more and more services, this tactic started becoming a significant security risk and we decided to look for an alternative solution.

## Keychain and Dropbox

I can't remember what else we considered, but in the end we decided to use an [Apple keychain][] shared on [Dropbox][]. Keychains are stored as a single file and while there was a theoretical race condition where two people updated the file simultaneously, in practice this never caused us a significant problem.

There's obviously some risk in trusting all your company credentials to a cloud service like Dropbox, but we hoped that this was somewhat mitigated by the fact that keychain files are encrypted using [Triple DES][].

Although this solution served us well for a number of years, it didn't offer integration with any browsers. Although the built-in password management functionality in Safari and Chrome does store credentials in the default "login" keychain, there didn't seem to be a way to have them use multiple keychains.

Most of us were already using the excellent [1Password][] application and typically we'd look up the credentials for a given service in the shared company keychain and then save them in our personal 1Password keychains. This was less than ideal, both from a user experience point of view and a security point of view.

## 1Password and Dropbox

So soon after Agile Bits released the [multiple vaults functionality][] in 1Password v4 in October last year, we decided to migrate our trusty Apple keychain to a 1Password vault shared on Dropbox. This transition was pretty painless and the new system is working well. Yay!

However, nothing's perfect and there are a couple of niggles that we'd like to improve on...

### Niggles

I tend to use [multiple Chrome profiles][] to separate my personal and work browser sessions. At the moment the selected 1Password vault seems to be set _globally_ across all Chrome profiles. It would be really nice if I could select the appropriate vault for each profile and have the selected vault stay associated with that profile.

There are some services, e.g. [Google Apps for Work][], where we have _individual_ credentials as well as company ones. It doesn't seem appropriate to store the individual credentials in the shared company vault, so I've been storing them in my personal 1Password vault.

I've noticed a few times recently when I've got them muddled up with my personal credentials for the same service. This situation can be further confused when we have such individual accounts on a client's domain. I'm thinking of setting up a _third_ 1Password vault which will contain my GFR-related individual credentials, and similar additional vaults for any such client-related accounts.

## Problems

Even using these solutions, sharing a single account for a service can be still be problematic. For example you often have to enter personal details for an individual. We usually try to avoid entering genuinely personal data, but this can be problematic, especially for things like name or phone number. We don't have a perfect solution for this, but we do have some ideas. Watch this space!

In order to improve security, we've setup [multi-factor authentication][] for a number of services where we have multiple users on a single account, but doing this for a shared account would be prohibitively restrictive. However, this hasn't yet become a significant problem.

We'd love to hear from you if you've come up with a better way to do this kind of thing.

-- James.


[Apple keychain]: http://en.wikipedia.org/wiki/Keychain_(Apple)
[Dropbox]: https://www.dropbox.com/
[Triple DES]: http://en.wikipedia.org/wiki/Triple_DES
[1Password]: https://agilebits.com/onepassword
[multiple vaults functionality]: https://learn2.agilebits.com/1Password4/Mac/en/whats-new.html#multiple-vaults
[Google Apps for Work]: http://www.google.com/enterprise/apps/business/
[multiple Chrome profiles]: https://support.google.com/chrome/answer/2364824?hl=en-GB
[multi-factor authentication]: http://en.wikipedia.org/wiki/Multi-factor_authentication


:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2014-09-26 12:13:00 +01:00
:updated_at: 2014-09-26 12:13:00 +01:00
:page_title: Sharing Credentials
