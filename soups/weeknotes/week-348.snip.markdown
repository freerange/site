Week 348
========

Chris was away on Monday, so I spent a half-day finishing up some [Smart Answers][] tasks and then took care of some GFR admin. We spent the rest of the week working with [Amy][] and [Rachel][] from [Hookline][].

## Hookline

Hookline broker deals between independent music artists and people who want to license the music e.g. broadcasters, film producers, advertising agencies, games developers, etc. They offer a 60:40 revenue split in the artist's favour and a non-exclusive contract.

### Background

We [^1] first chatted to Hookline back in April 2013 when they had a slightly different business model in mind and were looking at applying to the [Digital R&D Fund for the Arts][] for a grant. At the time I vaguely remember that we encouraged them to focus on proving the business model before spending a lot of money on building software.

Since then they've been successfully signing up artists and licensing their music using relatively manual processes, making use of services like [Google spreadsheets][], [Dropbox][], Echosign, etc - I think it's really impressive how far they've got.

Their music catalogue is now big enough that the manual processes are taking up a lot of their time. This, along with the fact that they now have a really good understanding of how they want to do everything, means that it's a sensible point to automate some of the processes.

### A Product Idea

Along the way it's also become apparent that there's not really any good commercial software out there to manage a music catalogue, especially not any representing good value-for-money. They've done some market research and have come to the conclusion that there's a gap in the market for such a product.

We chatted to Amy and Rachel a few weeks ago and agreed to collaborate on building this product. The idea is that initially we'll focus on automating Hookline's manual processes, but in doing so we hope to build a product that could be useful to other music companies. Amy and Rachel will then be able to demo the product to their music industry contacts and hopefully generate some sales.

So Team Hookline joined us at GFRHQ from Tuesday to Friday and we started building the product. It was really refreshing to work on a new app and to work so collaboratively with the product owners.

<p>
  <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="4" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:37.5% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAGFBMVEUiIiI9PT0eHh4gIB4hIBkcHBwcHBwcHBydr+JQAAAACHRSTlMABA4YHyQsM5jtaMwAAADfSURBVDjL7ZVBEgMhCAQBAf//42xcNbpAqakcM0ftUmFAAIBE81IqBJdS3lS6zs3bIpB9WED3YYXFPmHRfT8sgyrCP1x8uEUxLMzNWElFOYCV6mHWWwMzdPEKHlhLw7NWJqkHc4uIZphavDzA2JPzUDsBZziNae2S6owH8xPmX8G7zzgKEOPUoYHvGz1TBCxMkd3kwNVbU0gKHkx+iZILf77IofhrY1nYFnB/lQPb79drWOyJVa/DAvg9B/rLB4cC+Nqgdz/TvBbBnr6GBReqn/nRmDgaQEej7WhonozjF+Y2I/fZou/qAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://instagram.com/p/7xmpNdRAjR/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_top">Hookline partnered w/ Go Free Range this week to start building some magical features for music libraries. Very excited about what&#39;s coming!</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by Amy Wagner (@amyeeew) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2015-09-18T14:19:44+00:00">Sep 18, 2015 at 7:19am PDT</time></p></div></blockquote>
  <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
</p>

### Playlist Pages

One of the things Rachel has to do a lot is to respond to briefs by sending out a curated playlist of tracks matching the brief. Up until now she's been creating a new Dropbox folder for each playlist, copying over the relevant tracks, and sharing the folder with the requester. However, that means ending up with multiple copies of the tracks. This isn't great and is rapidly becoming unsustainable as they increasingly want to send out large WAV versions of the tracks.

Ideally what they wanted was a way to easily pick a set of tracks from their catalogue and have them served up on a playlist web page. The playlist page was to have audio players for previewing the MP3 files and download links for the WAV files, with all the audio files hosted on [Amazon S3][].

### Walking Skeleton

We decided to start with a simple Rails app, but to do without ActiveRecord initially by querying their master Google spreadsheet from within the Rails app using the [google_drive gem][] and OAuth 2. This worked out really nicely and allowed us to make quite rapid progress. It also meant that we didn't have to worry about keeping our database in sync with the master spreadsheet.

We also elected to start by simply generating a chunk of HTML to be pasted into a page on their existing Wordpress site. This seemed sensible, because if this is going to be a product used by other companies, we may well want to keep the public-facing pages in a separate app. Once we had a simple walking skeleton up and running, we deployed the app to [Heroku][].

Chris used the [S3cmd sync][] command line tool to get all the relevant audio files from Dropbox onto S3. He also wrote a rake task to update the master spreadsheet with data about which audio files were available on S3. While he was doing all this, I looked for an audio player we could use. In the end I chose to use [audio.js][] via the [audiojs-rails gem][], because it seemed to offer the best combination of cross-browser support and skin-ability.

The next step was to introduce a database (Postgres) into the Rails app and persist the playlists so they could be edited and re-generated. I got a bit stuck on this due to some ActiveRecord association and validation weirdness, but I was interested to come across [ActiveRecord::AutosaveAssociation][autosave-association] in the process.

### Pretty, Pretty

In the meantime, Amy got busy styling our rough HTML pages using [Bourbon][] and [Neat][]. It's amazing how motivating it was to see the site looking so good at such an early stage!

We wanted to be able to display artwork next to the tracks on the playlist page, so Amy downloaded suitable image files from the Wordpress site and Chris used S3cmd again to upload them onto S3. Once Chris had added the images to the generated HTML and Amy had added audio.js to the Wordpress site, we could create pretty decent looking playlist pages via our amazing copy & paste technology™.

### Coming Soon

The week was a lot of fun and it was satisfying to have got something relatively end-to-end working pretty well. We plan to have another week working on the product in a week's time, so I'm looking forward to that.

Anyway, that's your lot for now. Until next time.

-- James

[^1]: [Tom][], [James A][], Chris & I

[Smart Answers]: https://github.com/alphagov/smart-answers
[Hookline]: http://hookline.tv/
[Tom]: /tom-ward
[James A]: /james-adam
[Amy]: http://amyeee.com/
[Rachel]: https://twitter.com/rachmenzies
[Digital R&D Fund for the Arts]: http://www.artsdigitalrnd.org.uk/
[google_drive gem]: https://github.com/gimite/google-drive-ruby
[S3cmd sync]: http://s3tools.org/s3cmd-sync
[Bourbon]: http://bourbon.io/
[Neat]: http://neat.bourbon.io/
[audio.js]: http://kolber.github.io/audiojs/
[audiojs-rails gem]: https://github.com/subosito/audiojs-rails
[Heroku]: https://www.heroku.com/
[Google spreadsheets]: https://www.google.co.uk/sheets/about/
[Dropbox]: http://www.dropbox.com/
[Amazon S3]: https://aws.amazon.com/s3/
[autosave-association]: http://api.rubyonrails.org/classes/ActiveRecord/AutosaveAssociation.html

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:created_at: 2015-09-25 17:38:00 +01:00
:updated_at: 2015-09-25 17:38:00 +01:00
:page_title: Week 348
