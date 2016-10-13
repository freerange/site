Show and Tell 15
================

There were 9 of us in our office for Show and Tell 15.

In the [write-up of Show and Tell 11][show-and-tell-11] I suggested that we might want to find another venue if there were more than 8 of us. Fortunately, James had the great idea of reorganising our office to make more space: we dismantled a couple of tables and moved things round such that having 9 people didn't feel _too_ cramped.

## Visualising time periods

[James M][james-m] showed us how he's been using [Google's Timeline visualisation][timelines] to help visualise a number of dates relevant to the new [Smart Answer][smart-answers] he's been building for HMRC. James is hoping that this visualisation will make it easier to discuss the rules behind the Smart Answer with the relevant subject matter experts.

## Parallel universes

[Ben G][ben-g] dropped a bit of a bombshell by explaining that we're all living in a parallel universe. We used to be in the Berenstein Bears universe but have, at some point, transitioned to the Berentstain Bears universe! Start your own journey into the rabbit hole of parallel universes with [this research paper][berenstein-bears-blog-post].

## strftime formats

Ben G demonstrated a script he'd created based on this conversion in Slack:

    tomafro:
    LOL @ strftime options
    %p    UPPER-CASE 'AM' or 'PM' based on the given time
    %P    lower-case 'am' or 'pm' based on the given time

    beng:
    There was a website that you entered a date and an
    example and it would generate the most likely
    strftime options to give that result, but it went
    offline last year.

Ben's script takes one or more dates, along with the corresponding desired output formats, and displays a list of `strftime` formats that you could use to generate those outputs.

This reminded me of [Ben's demonstration of Smalltalk's Method Finder at Show and Tell 14][show-and-tell-14-smalltalk-method-finder].

One of the main things I took away from Ben's demonstration was that a [man page for strftime][strftime-man-page] exists. Assuming I remember this then it should save me the time I normally spend searching for [Ruby's Time#strftime docs][strftime-ruby] whenever I want to find the formatting codes.

## Slack bots

James A showed us the [Slack bot server framework][slack-bot-server-framework] that he extracted out of his work to build the integration between [Harmonia][harmonia] and [Slack][slack].

He used a demo Show and Tell bot he'd created to show how easy it was to listen and respond to messages in public and private groups as well as to direct messages.

It looks great and I'd definitely recommended checking it out if you find yourself needing to build such an integration.

## Scraping recipes

[Ryan][ryan] updated us with his progress on [Foodgeeks and Bummy Tummy that he talked about back at Show and Tell 11][show-and-tell-11-foodgeeks-and-bummy-tummy].

Ryan's been focusing on increasing the number of recipes in the [foodgeeks][] database by crawling and scraping various recipe sites that mark up their content using the [hrecipe microformat][hrecipe] or [Schema.org's Recipe format][schema-org-recipe]. He's continually improving the extraction/import code and can currently import about 65-70% of the crawled recipes automatically. This is great but it sounds as though there's still quite a bit of manual work involved to import the remainder.

## Pub

6 of us rounded off the evening over a couple of pints at The Old King's Head.

## Show and Tell 16

As always, do [get in touch][contact] if you're interested in joining us for the next Show and Tell on Weds 9th September.

Until next time.

-- Chris

[ben-g]: https://twitter.com/beng
[berenstein-bears-blog-post]: http://woodbetweenworlds.blogspot.co.uk/2012/08/the-berenstein-bears-we-are-living-in.html
[contact]: /contact
[foodgeeks]: http://www.foodgeeks.com/
[harmonia]: https://harmonia.io
[hrecipe]: http://microformats.org/wiki/hrecipe
[james-m]: /james-mead
[ryan]: http://ryansnyder.me/
[schema-org-recipe]: https://schema.org/Recipe
[show-and-tell-11]: /show-and-tell-11
[show-and-tell-11-foodgeeks-and-bummy-tummy]: /show-and-tell-11#foodgeeks-and-bummy-tummy
[show-and-tell-14-smalltalk-method-finder]: /show-and-tell-14#smalltalk-method-finder
[smart-answers]: https://github.com/alphagov/smart-answers
[slack]: https://www.slack.com
[slack-bot-server-framework]: https://github.com/exciting-io/slack-bot-server
[strftime-man-page]: http://linux.die.net/man/3/strftime
[strftime-ruby]: http://ruby-doc.org/core-2.2.0/Time.html#method-i-strftime
[timelines]: https://developers.google.com/chart/interactive/docs/gallery/timeline

:render_as: blog
:kind: show-and-tell
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-08-14 11:10:00 +01:00
:updated_at: 2015-08-14 11:10:00 +01:00
:page_title: Show and Tell 15
