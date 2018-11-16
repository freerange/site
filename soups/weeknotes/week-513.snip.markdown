Week 513
========

We're continuing the fourth sprint on the [Crown Marketplace app][crown-marketplace] development. Following our company retrospective last Friday we decided to spend a bit more time in the CCS office co-located with the rest of the dxw team and colleagues at CCS. We were there on Monday and Tuesday and spent the rest of the week between our offices in Whitechapel and working from home.

## Crown Marketplace

We made some progress adding a new framework to the service. This framework allows public sector buyers to procure management consultancy services from suppliers. We were pleased to see some similarity with the previous framework we added. Suppliers under this framework also offer their services under different lots and there is some variation in the areas of the country that individual suppliers can work. We were able to re-use some of the user interface patterns that have been developed previously. The main hurdle is again in the quality of data that we have to import into the application. The information about which suppliers offer which services and in which regions has been collected by sending the suppliers a spreadsheet to complete. These spreadsheets don't enforce any rules on the data that is added so there is considerable work to get them in a consistent form to allow their data to be added to the application's database. We are learning that this is one of the significant challenges in adding new journeys to the service and we are starting to think of ways to help.

After quite a lot of work we managed to deploy and enable a log-in system for the service using Amazon's [Cognito service](https://aws.amazon.com/cognito/). It's been tricky to know whether we've been doing the right thing here. We've had some indication that the use of Cognito is a temporary solution while we wait for another authentication solution to be developed. However we also know from experience that temporary solutions often become permanent ones and we feel that whatever we put into production should be well-written and tested. To that end we spent some time [writing tests](https://github.com/Crown-Commercial-Service/crown-marketplace/tree/17c8b1166e9bdd4de774ae00fa5ef1378637f879/spec/lib/cognito) for the [JWT](https://jwt.io/) based token-exchange flow that Cognito uses, and our integration of it into the rails application using OmniAuth.

We made a number of refactorings that allowed us to [remove some error-prone duplication](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/d6063a20ece09557e3a86e968b9ffca204d5f789) from our view code. We also added the beginning of a [simple calculator](https://github.com/Crown-Commercial-Service/crown-marketplace/commit/cd3cab5913e9377aa1547024c8287aada71ee464) to allow buyers of supply teacher services to calculate what fee they could expect to pay the agency suppliers if they take on a teacher as a permanent employee.

## CoTech

I did a bit of preparatory work for the annual [CoTech gathering][cotech-2018] at [Space4][space4]. We've decided to move the CoTech website from Wordpress to a static site generator to allow more people to contribute to it and avoid some of the issues with keeping a Wordpress installation up-to-date. I finished migrating the existing data to Jekyll, added the [repository to the git.coop Gitlab instance](https://git.coop/cotech/website), added [some issues](https://git.coop/cotech/website/issues) for us to work through at the gathering and made a start on a [continuous integration pipeline](https://git.coop/cotech/website/blob/e733ed08e8455eadb96919a486d890c8cb4b7cc9/.gitlab-ci.yml) to build the static pages. I've been impressed with Gitlab's built-in Docker-based CI system something that Github seems to be catching up with their new [Github Actions](https://github.com/features/actions) tool.

[cotech-2018]: https://community.coops.tech/t/cotech-space4-gathering-29-30th-november-2018/1033
[crown-marketplace]: https://github.com/Crown-Commercial-Service/crown-marketplace
[space4]: http://space4.tech/

:name: week-513
:updated_at: 2018-11-16 12:07:21.012460000 +00:00
:created_at: 2018-11-16 12:07:21.012460000 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 513
:extension: markdown
