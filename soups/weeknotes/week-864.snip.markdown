Week 864
========

Week beginning Monday, 4th August 2025.

I travelled back from a long weekend on the Isle of Wight on Monday and, for once, managed to work quite effectively on the ferry and two train journeys. Chris R returned from holiday on Tuesday.

## Experience CS

Fraser, a new staff engineer at [RPF], joined the team on Monday. To help Fraser get up to speed, I wrote some documentation about how our continuous integration build & deployment works as well as a contributing guide on how we try to [create a useful git history].

We continued to focus on the work to make [the Experience CS app] translatable via integrations with [Crowdin]. I think we're nearly there, but it's been quite a bit of work. I found [the `twitter_cldr` gem] which is based on [Unicode's Common Locale Data Repository] and used [its date formatting] to make some of our existing localisation robust to region-specific locale variants.

Seb wired up the RPF global navigation web component to allow users to switch between locales. This is only enabled for admin users in production for the moment until all the content is actually translated. Seb also did some digging into some problems we seem to be having around the refreshing of OAuth tokens. He's come up with a hypothesis for why this might be happening and he's planning to add some logging to prove whether or not this is correct.

Alongside all this, Chris L had some positive discussions with internal users about some proposed integration with Salesforce. While there's still a longer-term plan to integrate with Salesforce, he's managed to identify and make some relatively small changes to an existing non-Salesforce admin dashboard to immediately make life a lot easier for the relevant users. The experience and skill to be able to do this kind of thing is so under-rated!

## Other news

On Thursday, on his way to work Chris R stopped to help a woman who had fallen over, but fell sideways off his stationary bike and hurt his hip. He had to retire hurt later that morning. He's since been checked out at the hospital, but is awaiting the results of an X-ray. Hopefully it's not too serious!🤞

On Friday, having finally managed to obtain some historic bank statements, Chris L managed to reconcile the [CoTech] fund accounts. I checked over our draft annual accounts. I think [our accountants] must be using [the end-of-year functionality built in to FreeAgent], because this was much easier than in previous years - it was much easier to cross-check figures in the accounts with figures in the FreeAgent Profit & Loss and Balance Sheet reports.

I also spent some time working out what we need to do about the upcoming requirement to [verify your identity with Companies House] if you are a company Director or a Person with Significant Control. Until now we only had a single account on Companies House, but it seems as if we now each need an account along with a matching [GOV.UK OneLogin] account. We can use the latter to prove our identity. What wasn't immediately obvious from the warning emails is that although the new rules come into force on 18 Nov, we don't actually need to verify our identity until we submit our next [Confirmation Statement] in January next year!

I sorted out some admin relating to the renewal of our Group Income Protection insurance policy and started looking at the documents about renewing our Business insurance policy. I'm hoping to shop around for this via a broker specialising in worker co-operatives who has an "introducer agreement" with [workers.coop].

## Interesting links

* [Parliament Protect module for Drupal] - To protest against the wildly unpopular and ill-conceived Online Safety Act, this blocks all UK Parliament IP address range visitors from accessing any content and redirect them to either a silly, satirical form, or a custom message of your choice.
* [GitHub CEO delivers stark message to developers: Embrace AI or get out] - More crazy hype from another AI-pilled CXO and (yet) another reason to move away from GitHub.
* [Evaluating AI: How to think about vendors, technology, and power] - A more balanced take on the AI hype.
* [AI industry horrified to face largest copyright class action ever certified] - The last AI-related link, I promise! "Copyright class actions could financially ruin AI industry, trade groups say." Here's hoping!
* [Introducing the Director of Homeland Security] - I'm not a fan of the politics of South Park, but I can't help enjoy their recent lampooning of Trump and his cronies.
* [Sandstorm] - I recently revisited this open-source project; it seems to have matured into a possible self-hosted alternative to elements of Google Workspace and Trello. I'm quite tempted to suggest we try it out within [GFR].
* A random email notification from Vimeo led me to watch [this delightful video of Timmy Printface], the [origins] of the receipt printer project that lives on in [the Good Enough guestbook] that [James A] has built.

[RPF]: https://www.raspberrypi.org/
[create a useful git history]: https://tekin.co.uk/2018/07/resources-for-creating-useful-revision-histories
[the Experience CS app]: https://experience-cs.org/
[the `twitter_cldr` gem]: https://github.com/twitter/twitter-cldr-rb
[Unicode's Common Locale Data Repository]: https://cldr.unicode.org/
[its date formatting]: https://github.com/twitter/twitter-cldr-rb/blob/2b65e4b494924f80a8d15fc0fd2efd0cd8090ba0/README.md#dates-and-times
[Crowdin]: https://crowdin.com/
[our accountants]: https://www.goddardsolutions.co.uk/
[the end-of-year functionality built in to FreeAgent]: https://support.freeagent.com/hc/en-gb/articles/12669047187858-End-of-Year-accounts-essentials-for-accountants
[verify your identity with Companies House]: https://www.gov.uk/guidance/verifying-your-identity-for-companies-house
[GOV.UK OneLogin]: https://www.gov.uk/using-your-gov-uk-one-login
[Confirmation Statement]: https://ewf.companieshouse.gov.uk/help//en/stdwf/confirmationStatementHelp.html
[Parliament Protect module for Drupal]: https://www.drupal.org/project/parli_protect
[GitHub CEO delivers stark message to developers: Embrace AI or get out]: https://www.businessinsider.com/github-ceo-developers-embrace-ai-or-get-out-2025-8
[Evaluating AI: How to think about vendors, technology, and power]: https://werd.io/evaluating-ai/
[this delightful video of Timmy Printface]: https://vimeo.com/22439313
[origins]: /say-hello-to-timmy-printface
[the Good Enough guestbook]: https://guestbook.goodenough.us/
[James A]: /james-adam
[Sandstorm]: https://sandstorm.org/
[GFR]: /
[CoTech]: https://www.cotech.uk/
[workers.coop]: http://localhost:3000/week-864
[Introducing the Director of Homeland Security]: https://www.youtube.com/watch?v=kD4EE6qVIBI
[AI industry horrified to face largest copyright class action ever certified]: https://arstechnica.com/tech-policy/2025/08/ai-industry-horrified-to-face-largest-copyright-class-action-ever-certified/

:name: week-864
:updated_at: 2025-08-10 13:05:21.256708000 +01:00
:created_at: 2025-08-10 13:05:21.256704000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 864
:extension: markdown
