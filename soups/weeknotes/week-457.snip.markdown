Week 457
========

Afternoon, folks.

We've spent this week working from [TOG][the-office-group] Bloomsbury and from home, and have mostly been focussed on the [Asset Manager][asset-manager] project.

[James][james-mead] took Tuesday off to enjoy a walk on the South Downs.

## Asset Manager

We started Monday with a short planning session for our Asset Manager work. Given how much there is to do, we can sometimes struggle to know what to work on. We hope that a short weekly planning session will help keep us focussed.

Our aims for this week were to try to get a subset of [Whitehall][whitehall] assets served by Asset Manager and to at least come up with a plan for the work required to avoid using [NFS][nfs] for a long-term store of assets in Asset Manager.

[Chris][chris-lowis] and I paired on the first of our weekly goals by working toward being able to remove Whitehall assets from Asset Manager. We thought we'd made good progress until discovering a problem with our custom [CarrierWave][carrer-wave] storage engine: the asset is being removed from Asset Manager correctly but the database column containing the filename isn't being reset. Unfortunately, CarrierWave's use of meta-programming, inheritance and ActiveRecord callbacks is proving to make this quite hard to debug.

James has made good progress on the second of our weekly goals. He's introduced a Fake S3 server that we plan to use to simulate [S3][aws-s3] in development and has started investigating the changes required to enable backups of our assets stored on S3. Making the necessary changes to [nginx][nginx] continues to be harder than we'd like due to a lack of testing around the integration of nginx and the Rails app.

While investigating a failing test in Whitehall I noticed that there were a few deprecation notices in the output. I've started to try to remove these in order to reduce the noise in the test output.

## Digital Outcomes & Specialists

We were a little disappointed to learn that we were unsuccessful in our bid for the [end-to-end testing work][wp1455] for GOV.UK. We wish the winning team all the best and look forward to seeing how they approach the problem.

In other Digital Outcomes & Specialists news, Chris spent some time participating in DXW's, [The Great British Digital Outcomes Armchair Audit][dos-audit]. If you're interested in the quality of the opportunities available on the DOS Framework then you might want to take a look too.

## Trello

While we've become much better at keeping on top of our GFR [Trello][trello] board, we still have the odd card that ends up being neglected. We have a standing item in our end of week meeting to go through these cards but have tended to avoid doing it because we don't want to distract from the meeting by having all of us go through all the cards.

James has now added a [Harmonia][harmonia] task to prompt us to find these neglected cards and move them to an existing "discussing" list in preparation for the meeting on Friday. We hope that splitting the task like this will allow us to keep the meeting itself much more focussed.

## Accounts

We've had a very positive experience with our new accountant so far and they're hoping to have our annual accounts ready to review early next week.

We also really appreciate [Proactive Paul][proactive-accountant]'s speedy response in handing over to the new accountant.

## VPNs

Chris successfully used the VPN that James has deployed (see [Show & Tell 34][show-and-tell-34-vpn] for more info about James's set-up). This will hopefully avoid some of the problems Chris has encountered when working remotely and relying on public Wi-Fi.

Until next time.

-- Chris

[asset-manager]: https://github.com/alphagov/asset-manager
[aws-s3]: https://aws.amazon.com/s3/
[carrer-wave]: https://github.com/carrierwaveuploader/carrierwave
[chris-lowis]: /chris-lowis
[dos-audit]: https://www.dxw.com/2017/10/the-great-british-digital-outcomes-armchair-audit/
[harmonia]: https://harmonia.io/
[james-mead]: /james-mead
[nfs]: https://en.wikipedia.org/wiki/Network_File_System
[nginx]: https://nginx.org/
[proactive-accountant]: http://proactive.uk.net/
[show-and-tell-34-vpn]: /show-and-tell-34#vpn
[the-office-group]: http://www.theofficegroup.co.uk/
[trello]: https://trello.com/
[whitehall]: http://github.com/alphagov/whitehall
[wp1455]: https://www.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists/opportunities/5122

:name: week-457
:updated_at: 2017-10-20 14:51:02.317000000 +01:00
:created_at: 2017-10-20 14:51:02.316998000 +01:00
:render_as: Blog
:kind: blog
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 457
:extension: markdown
