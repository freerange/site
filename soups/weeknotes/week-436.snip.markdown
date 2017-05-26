Week 436
========

Afternoon folks.

We've spent the majority of our time working on [Manuals Publisher][manuals-publisher]; trying to get as much done before we hand it over at the end of the month.

We've worked at [TOG][the-office-group] Bloomsbury, TOG King's Cross and from home. It's been generally quieter in TOG Bloomsbury this week which makes it a much nicer place to work.

## Manuals Publisher

I think we've made some good progress this week despite me getting into a bit of a hole trying to simplify the Section model.

[Chris][chris-lowis] and [James][james-mead] paired on getting the app [upgraded to Rails 5][manuals-publisher-pr-1145] before Chris then [upgraded it to Rails 5.1][manuals-publisher-pr-1153]. This upgrade also saw us upgrading Mongoid from 4 to 6.

James [removed some unnecessary Gems from the Gemfile][manuals-publisher-pr-1151] and [updated others][manuals-publisher-pr-1154]. He was able to remove unnecessary version constraints from the Gemfile along the way. It's long been our preference to avoid specifying version constraints in the Gemfile and to rely on our tests and due diligence to avoid breaking things when we upgrade.

I made [some][manuals-publisher-pr-1141] [changes][manuals-publisher-pr-1148] that should hopefully reduce the number of opportunities for our database to get out of sync with the Publishing API. These sort of changes should allow us to remove some of the workaround scripts that have been created to get this data back in sync.

James tracked down and [fixed a problem that meant we were seeing exceptions if validation errors caused sections to fail to save][manuals-publisher-pr-1146].

We spent some time discussing the possibility of using the data in the Publishing API as our primary data source. This was always a longer term goal of the project although we weren't convinced we'd get there. Now that the code is simpler we're in a better position to at least spike on this. Such a spike could help us decide whether to continue improving the app to try to keep the local database in sync with the Publishing API or whether to switch straight to using the Publishing API as our primary data source.

I'm happy that we're going to leave the app in a much better state than it was but I'm also slightly disappointed that we didn't make quite as many improvements as we'd have liked.

## Harmonia and Webhooks

James investigated a number of exceptions reported from our [Webhooks app][webhooks]. The app was experiencing timeouts when communicating with [Harmonia][harmonia]. Having spoken to [James A][james-adam] it sounds as though this is caused by the large iCal feed we use to trigger some of our tasks. We've attempted to alleviate this problem by using a Harmonia-specific calendar instead of our main GFR one and by [reducing the number of times we sign in to Harmonia][webhooks-pr-26].

## Errbit

James created [PR 1196 in the errbit project][errbit-pr-1196] to allow us to receive more frequent exception notifications. This was promptly merged after a short discussion which is great!

I'm off to France next week so I'll leave you in the capable hands of Chris and James :-)

Until next time.

-- Chris

[chris-lowis]: /chris-lowis
[errbit-pr-1196]: https://github.com/errbit/errbit/pull/1196
[harmonia]: https://harmonia.io/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[manuals-publisher-pr-1141]: https://github.com/alphagov/manuals-publisher/pull/1141
[manuals-publisher-pr-1145]: https://github.com/alphagov/manuals-publisher/pull/1145
[manuals-publisher-pr-1146]: https://github.com/alphagov/manuals-publisher/pull/1146
[manuals-publisher-pr-1148]: https://github.com/alphagov/manuals-publisher/pull/1148
[manuals-publisher-pr-1151]: https://github.com/alphagov/manuals-publisher/pull/1151
[manuals-publisher-pr-1153]: https://github.com/alphagov/manuals-publisher/pull/1153
[manuals-publisher-pr-1154]: https://github.com/alphagov/manuals-publisher/pull/1154
[manuals-publisher]: https://github.com/alphagov/manuals-publisher
[the-office-group]: http://www.theofficegroup.co.uk/
[webhooks]: https://github.com/freerange/webhooks
[webhooks-pr-26]: https://github.com/freerange/webhooks/pull/26

:name: week-436
:updated_at: 2017-05-26 15:11:10.432454000 +01:00
:created_at: 2017-05-26 15:11:10.432443000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 436
:extension: markdown
