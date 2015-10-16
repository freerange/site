Week 351
========

This was the second of our two planned weeks working with [Hookline][hookline-tv] (the first was in [week 348][week-348]).

We had three main goals for the week:

1. Exclusively use the new web app to produce playlists that can be sent in response to briefs.

2. Use the new web app to produce public and artist playlists to replace those currently on hookline.tv.

3. Exclusively use the new web app to administer Hookline's music library.

## Responding to briefs

We didn't quite get to the point where Hookline could use the app to produce their playlists. I _think_ we're there technically but the playlists still need some visual love before they can be sent out.

## Replacing playlists on hookline.tv

Aside from the visual love mentioned above I think we're also ready to replace the playlists on hookline.tv with those generated in the app.

### What we did

* Generated different markup for the public and artist playlist pages.

* Avoided using easily discoverable track URLs. We're using JavaScript to request a time-limited track URL, rather than embedding the URL in the HTML. We had to configure CORS in our app to enable this.

* Avoided using easily shareable track URLs. The time-limited URLs mean that they're of limited use when shared.

* Avoided using easily guessable track URLs. We're using short random keys to identify our tracks. This should make it harder for people to guess track URLs than if we were using sequential numbers as keys.

* Built a simple static website to act as another client of the Hookline playlists. Having this as well as hookline.tv helps highlight some of the things that should be extracted from the main app in order to make this useful to people other than Hookline.

## Administering the music library

As of the end of this week, Hookline are now using this app to manage their music library. This replaces the combination of a Google Spreadsheet and Dropbox that they were using previously.

### What we did

* Imported the track data from the Google Spreadsheet into PostgreSQL and started using the data stored in the database instead of the data in the spreadsheet.

* Added a scheduled task to keep the database in sync with tracks manually uploaded to S3. This was a short-term fix that we put in place until we were able to upload tracks through the web interface.

* Added the ability to upload track assets (MP3, WAV and artwork images) to S3 through the web app. This replaces the use of Dropbox + laptop + s3cmd to sync the data to S3.

* Added functionality to rename tracks in S3 when they were renamed in the database.

* Configured a combination of cross-region replication and lifecycle events in S3 to create a backup of the tracks in Glacier.

* Added an incomplete track listing page the app to help Hookline focus on the data they're missing.

* Added the "main genre" attribute to a track so that Hookline can use an export of this data to integrate with some other systems.

* Added some global navigation to the web app to make it easier to use.

## Miscellaneous

* Configured errbit for Hookline.

* Started using Rspec's `instance_double` instead of `double`. We introduced a bug in production because of a problem that would've been caught had we already been using `instance_double`.

## Summary

I enjoyed this second week and was pleased with our progress, despite not quite getting everything done that we'd have liked to.

We don't have any more time booked with Hookline but I'm sure this won't be the end of our collaboration.

Until next time.

-- Chris

[hookline-tv]: http://hookline.tv/
[week-348]: /week-348

:render_as: Blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-10-16 10:45:00 +01:00
:updated_at: 2015-10-16 10:45:00 +01:00
:page_title: Week 351
