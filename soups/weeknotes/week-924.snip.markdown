Week 924
========

Week beginning Monday, 28th September 2026.

## NHS Vaccinations (Mavis) 💉

We've all had our heads down working on the [NHS Manage Vaccinations in Schools] project this week. As [Chris L] mentioned [last week], the system has seen increased load with [School Age Immunisation Service] (SAIS) teams starting their school vaccination programmes for the new academic year. Chris L & [Chris R] have been continuing to diagnose and fix a number of bugs. I've been continuing to work on a feature to allow SAIS teams to add & edit their clinic locations themselves; this is currently a task that has to be done by the Ops team.

I've been enjoying working with [govuk-components], [govuk-form-builder] & [nhsuk-frontend] which we're using to implement the [NHS Design System] - it's very satisfying to slot the different components together and quickly produce a very professional-looking page.

And I'm slowly getting my head around [wicked] which is used extensively in the app to build multi-page wizards. Many of these wizards work with a session-backed [ActiveModel] until the final confirmation step where they write everything to the database. The wizards often have a lot of state associated with them which can make them quite complex beasts. I've spent quite a bit of time recently working out the best way to structure them and write specs for them.

## Worker Co-operatives 🤝

On Wednesday, Chris L participated in the regular monthly CoTech call. I really appreciate Chris making time to attend this - apparently there are moves afoot to run another event in the spring in Manchester! I'm super proud of the part that [GFR] has played in the creation and continued operation of [CoTech]. I can't believe it's almost 10 years since [the founding event] at [Wortley Hall] (the workers' stately home!).

I'm also very encouraged to see that [Solid Fund], a worker co-operative solidarity fund which we contribute to, has started to be a bit more proactive having already paid out £73,000 this year in support of a number of worker co-ops that have fallen on hard times.

## Mission Patch 🚀

This week we received the first multi-item [Mission Patch] (custom laptop stickers) order since I added some shopping basket functionality in the giant pull request that Chris L mentioned [a few weeks ago]. I was pleased that it all went through without any drama.

## Exercise 🏊🏃 

Today Chris L popped out to the [Parliament Hill Lido] at lunchtime for a last outdoor swim of the year. Sadly I've fallen off the wagon of outdoor swimming at the [Jesus Green Lido] - I might try getting back into it this weekend.

In the meantime, Chris R is putting us both to shame by participating in the [Track Wars - Project X event] at the running track in Walton-on-Thames. He managed to run 50kms in 7h23m before retiring hurt - well done, Chris! 🏆

Until next time

-- James

[NHS Manage Vaccinations in Schools]: https://www.manage-vaccinations-in-schools.nhs.uk/start
[Chris L]: /chris-lowis
[last week]: /week-923
[School Age Immunisation Service]: https://www.sais.uk.com/
[Chris R]: /chris-roos
[GFR]: https://gofreerange.com/
[CoTech]: https://www.cotech.uk
[the founding event]: https://wiki.cotech.coop/wiki/Wortley_Hall_2016
[Wortley Hall]: https://wortleyhall.org.uk/
[Solid Fund]: https://www.solidfund.coop/
[Parliament Hill Lido]: https://www.cityoflondon.gov.uk/things-to-do/green-spaces/hampstead-heath/where-to-go-at-hampstead-heath/parliament-hill-lido
[Jesus Green Lido]: https://jesusgreenlido.org/
[Track Wars - Project X event]: https://www.phoenixrunning.co.uk/events/track-wars-project-x
[Mission Patch]: https://mission-patch.com/
[a few weeks ago]: /week-920
[govuk-components]: https://github.com/x-govuk/govuk-components
[govuk-form-builder]: https://github.com/x-govuk/govuk-form-builder
[nhsuk-frontend]: https://github.com/nhsuk/nhsuk-frontend
[NHS Design System]: https://service-manual.nhs.uk/design-system
[wicked]: https://github.com/zombocom/wicked
[ActiveModel]: https://guides.rubyonrails.org/active_model_basics.html

:name: week-924
:updated_at: 2026-10-02 17:06:32.111159000 +01:00
:created_at: 2026-10-02 17:06:32.111156000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 924
:extension: markdown
