Week 433
========

Afternoon folks. I trust you're all well.

I feel as though we've had quite a productive week despite (or because of?) the bank holiday.

[Chris L][chris-lowis] rejoined us on Wednesday after a long weekend away.

We continue to spend the majority of our time working on [Manuals Publisher][manuals-publisher] for GDS with some GFR and [CoTech][co-tech] thrown in around the sides.

## Manuals Publisher

We met with [Paul Bowsher][paul-bowsher] for one of our regular catch-ups on Wednesday. Paul seemed happy with our progress and for us to continue in the direction we're heading. The only additional request was for us to get the app upgraded to [Rails 5.1][rails-5-1-blog-post].

Our focus this week has been on:

### Simplifying the renderers

  * [Convert renderers to presenters][manuals-publisher-pr-1050]
  * [Standardise section presenter][manuals-publisher-pr-1055]
  * [Use `delegate` instead of explicit delegation][manuals-publisher-pr-1057]
  * [Remove SectionHeaderExtractor and dependencies][manuals-publisher-pr-1059]

### Simplifying the exporters

  * [Collapse formatters and RummagerIndexer into SearchIndexAdapter][manuals-publisher-pr-1046]
  * [Introduce OrganisationsAdapter & inline OrganisationFetcher into it][manuals-publisher-pr-1053]
  * [Add missing require statement to adapter classes][manuals-publisher-pr-1056]
  * [Remove unnecessary examples from Publishing API exporter specs][manuals-publisher-pr-1064]
  * [Extract Manual#all_sections_are_minor? from ManualUpdateType][manuals-publisher-pr-1067]

### Persisting Sections

  * [Rename Section#id to Section#uuid][manuals-publisher-pr-1052]
  * [Rename ManualRecord::Edition#section_ids to #section_uuids][manuals-publisher-pr-1065]
  * [Rename ManualRecord::Edition#removed_section_ids to #removed_section_uuids][manuals-publisher-pr-1066]
  * [Inline Section#build into Section#new][manuals-publisher-pr-1068]

### Upgrading to Rails 4

  * [Use lower case controller names in routes.rb][manuals-publisher-pr-1061]
  * [Remove unused SectionEdition scopes][manuals-publisher-pr-1062]
  * [Remove explicit dependency on Rack][manuals-publisher-pr-1063]

---

## GFR

[James A][james-adam] has recently increased the number of tasks we're able to create in [Harmonia][harmonia]. We've immediately made use of this increase by moving the tasks from our [IFTTT][ifttt] + Google Calendar + [Trello][trello] workaround to Harmonia. Thanks, James!

Since upgrading our [TOG][the-office-group] membership to co-working we've been in a bit of mess with the invoices/payments. [James][james-mead] went through them all in detail on Tuesday and finally got to the bottom of the confusion.

Chris L recently suggested that we make regular contributions to charity. We all agreed and made our first donation this month. Harmonia chose me and I chose to donate to Great Ormond Street after the care they gave a friend's daughter when she was sick.

---

## CoTech

It feels as though there's been a bit more activity on the CoTech front recently. We've had a few emails from people looking to get involved, we've agreed to a "CoTech summer camp" and [Chris Croome][chris-croome] from [WebArchitects][webarchitects] has been busy configuring a [Discourse][discourse] server for the organisation.

Until next time.

-- Chris

[chris-croome]: https://github.com/chriscroome
[chris-lowis]: /chris-lowis
[co-tech]: https://www.coops.tech/
[discourse]: https://www.discourse.org/
[harmonia]: https://harmonia.io/
[ifttt]: https://ifttt.com/
[james-adam]: http://lazyatom.com/
[james-mead]: /james-mead
[manuals-publisher-pr-1046]: https://github.com/alphagov/manuals-publisher/pull/1046
[manuals-publisher-pr-1050]: https://github.com/alphagov/manuals-publisher/pull/1050
[manuals-publisher-pr-1052]: https://github.com/alphagov/manuals-publisher/pull/1052
[manuals-publisher-pr-1053]: https://github.com/alphagov/manuals-publisher/pull/1053
[manuals-publisher-pr-1055]: https://github.com/alphagov/manuals-publisher/pull/1055
[manuals-publisher-pr-1056]: https://github.com/alphagov/manuals-publisher/pull/1056
[manuals-publisher-pr-1057]: https://github.com/alphagov/manuals-publisher/pull/1057
[manuals-publisher-pr-1059]: https://github.com/alphagov/manuals-publisher/pull/1059
[manuals-publisher-pr-1061]: https://github.com/alphagov/manuals-publisher/pull/1061
[manuals-publisher-pr-1062]: https://github.com/alphagov/manuals-publisher/pull/1062
[manuals-publisher-pr-1063]: https://github.com/alphagov/manuals-publisher/pull/1063
[manuals-publisher-pr-1064]: https://github.com/alphagov/manuals-publisher/pull/1064
[manuals-publisher-pr-1065]: https://github.com/alphagov/manuals-publisher/pull/1065
[manuals-publisher-pr-1066]: https://github.com/alphagov/manuals-publisher/pull/1066
[manuals-publisher-pr-1067]: https://github.com/alphagov/manuals-publisher/pull/1067
[manuals-publisher-pr-1068]: https://github.com/alphagov/manuals-publisher/pull/1068
[manuals-publisher]: https://github.com/alphagov/manuals-publisher
[paul-bowsher]: https://twitter.com/boffbowsh
[rails-5-1-blog-post]: http://weblog.rubyonrails.org/2017/4/27/Rails-5-1-final/
[the-office-group]: http://www.theofficegroup.co.uk/
[trello]: https://trello.com/
[webarchitects]: https://www.webarchitects.coop/

:name: week-433
:updated_at: 2017-05-05 14:42:40.523096000 +01:00
:created_at: 2017-05-05 14:42:40.523084000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 433
:extension: markdown
