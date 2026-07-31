Week 915
========

Week beginning Monday, 27th July 2026.

Chris Roos has been on holiday this week. James and I have mostly been working on our project with the NHS.

## NHS Vaccinations (Mavis)

The features we are currently working on allow School Aged Immunisation Services (SAIS) teams to set up and invite patients to clinics. These clinics can be run outside of a school and have their own mechanisms for inviting patients to attend. In particular we've been working on allowing SAIS teams to reschedule appointments.

There are a number of other features in the application that allow a model to start, or re-enter a "draft" status and for any changes to be committed after a number of questions have been answered. The application uses the [wicked](https://github.com/zombocom/wicked) gem to structure these one-page-per-question "wizard" like flows.

James has been working to refactor the wizards that have been added to the clinic booking workflows to use code that is shared by the other "draft" models in the system. Meanwhile I've been making changes so that an already-booked appointment can be changed by creating a new draft, re-asking any questions that are relevant to the property being changed (such as the appointment time or location), and then replacing the existing appointment with the new one (and notifying the patient).

The clinic functionality is currently being piloted which means it's difficult to make any major changes to it that could impact the outcome of the pilot. For now that's meant nursing a pretty long-running branch with quite a lot of commits on it, but we've worked out a way of hiding some of these features behind a feature flag, so we're hopeful we'll be able to get them merged and (manually) tested before too long.

I was excited (and also a little bit jealous) to see [Thomas](https://github.com/thomasleese) open a PR to remove old migrations. It's one of my [favourite](https://github.com/alphagov/signon/pull/2217) [things](https://github.com/alphagov/whitehall/pull/7675) to do.

## Other things

We caught up with some admin today. James has been going through the time-consuming process of providing our insurance broker with all the information they need to renew our policies.

I've [documented the process](https://github.com/freerange/jam-coop/blob/main/docs/rotating_keys.md) we followed to rotate API tokens in [jam.coop](https://jam.coop) after patching the KindaRails2Shell vulnerability ([CVE-2026-66066](https://discuss.rubyonrails.org/t/cve-2026-66066-possible-arbitrary-file-read-and-remote-code-execution-in-active-storage-variant-processing/91432)) earlier in the week. Fun times!

Have an excellent weekend.

-- Chris

:name: week-915
:updated_at: 2026-07-31 12:08:00.616176926 +01:00
:created_at: 2026-07-31 12:08:00.616175794 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 915
:extension: markdown
