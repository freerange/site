Week 368
========

## IR35 Tax Assurances

Early in the week we heard back from [Egos Consultancy][] about our IR35 situation regarding our work for [GDS][]. As expected they confirmed that the combination of our contract and working practices fall outside IR35.

They also suggested some small changes to the [Working Practices Questionnaire][] that we'd completed in the previous week. During the course of this week [Chris][] & I collaboratively addressed these changes to the questionnaire in preparation for sending it to GDS.

## Smart Answers

I started work back on Smart Answers this week. I only managed to fit in 1.5 days and I ended up spending the whole time reviewing the backlog of pull requests that had built up while Erik was working on Smart Answers single-handed.

The most urgent one involved [the removal of some functionality in the State Pension Calculator][pr-2192], so I tackled that one first. I also reviewed updates to the [Child Maintenance Calculator][pr-2166] and [to the Benefits Cap Calculator][pr-2242].

Then there was the inevitable bunch of pull requests for the [Marriage Abroad Smart Answer][] which needed reviewing:

* [Italy, Philippines and South Africa][pr-2197]
* [Kuwait][pr-2258]
* [Bulgaria][pr-2200]

I also reviewed a pull request [upgrading the version of Ruby used in the app to v2.2.4][pr-2199] and another which [tweaked the maximum size of one of the caches][pr-2238].

Lastly I closed a pull request which was simply [a demonstration of how to reproduce a bug][pr-2239]. Having recorded the bug in Trello, I didn't think it was worthwhile keeping the pull request open.

## Hookline

### Google Chrome Bug

I continued my investigation into why a number of MP3 tracks wouldn't play in Google Chrome. I had previously noticed that `ffprobe` (part of [FFmpeg][]) gave an error when trying to parse the problematic MP3, whereas it correctly parsed the MP3's which play OK in Chrome. At around this time I also discovered that Chrome uses parts of FFmpeg to play audio files, so this seemed to be highly relevant.

[I emailed the FFmpeg mailing list][ffmpeg-email] and asked for help. One of the developers said that it was a bug and raised a [ticket in their system][ffmpeg-ticket]. Not long afterwards the bug was fixed, although there was some scepticism from other people that this was a sensible fix and/or that the "probe" code around MP3's with [ID3 tags][] is very robust.

There's been no real explanation of what the problem was other than the [commit which fixes it][ffmpeg-fix-commit]. I hoped that there would be a way to work around the problem by changing the ID3 tag on that MP3 and asked about this on the mailing list. I wanted to avoid having to wait for FFmpeg to release the fix and then for Chrome to include the release in a release of Chrome, all of which would probably take ages. However, at this point I raised this problem as a [bug report for Google Chrome][google-chrome-bug-report] to try to hurry them along.

Rather than waiting for the Chrome bug to be fixed, I then had a go at working around the problem. I used `ffmpeg` to re-encode the original WAV file to MP3, but this time I re-tagged it with the artwork and other metadata (using [taglib-ruby][]) to closely match the original MP3. Some combination of doing this seemed to (magically) avoid the bug and so I replaced the original problematic MP3 and the track played OK in Google Chrome. Yay!

I then wrote a simple script to use `ffprobe` to check all the other tracks in our database for the same problem. Fortunately it seems to be a real edge case and I didn't find any other problematic tracks.

### Ordering Tracks in Playlist

Later this week, I finally got round to merging some work I'd done back in November 2015 on allowing the user to control the order of tracks in a playlist.

I used a combination of [jQuery UI's Sortable][jquery-ui-sortable] and the [ranked-model gem][ranked-model] to implement a progressively enhanced drag-and-drop UI for changing the order of tracks within a playlist.

The work wasn't complete, but at least I got a bunch of local changes merged into the `master` branch and deployed to production.

Anyway, apart from the usual company admin tasks, I think that's everything we got up to.

Until next time.

-- James

[Egos Consultancy]: http://www.egos.co.uk/
[GDS]: https://gds.blog.gov.uk/
[Working Practices Questionnaire]: http://www.egos.co.uk/ir35_wpq.htm
[Chris]: /chris-roos
[pr-2192]: https://github.com/alphagov/smart-answers/pull/2192
[pr-2166]: https://github.com/alphagov/smart-answers/pull/2166
[pr-2242]: https://github.com/alphagov/smart-answers/pull/2242
[Marriage Abroad Smart Answer]: https://www.gov.uk/marriage-abroad
[pr-2197]: https://github.com/alphagov/smart-answers/pull/2197
[pr-2258]: https://github.com/alphagov/smart-answers/pull/2258
[pr-2200]: https://github.com/alphagov/smart-answers/pull/2200
[pr-2199]: https://github.com/alphagov/smart-answers/pull/2199
[pr-2238]: https://github.com/alphagov/smart-answers/pull/2238
[pr-2239]: https://github.com/alphagov/smart-answers/pull/2239
[FFmpeg]: https://www.ffmpeg.org/
[ffmpeg-email]: http://ffmpeg.org/pipermail/ffmpeg-user/2016-January/030435.html
[ffmpeg-ticket]: https://trac.ffmpeg.org/ticket/5205
[ffmpeg-fix-commit]: http://git.videolan.org/?p=ffmpeg.git;a=commitdiff;h=77864be44a0daeae846d7395b3cb682a22ce99a9
[ID3 tags]: http://id3.org/id3v2.3.0
[google-chrome-bug-report]: https://code.google.com/p/chromium/issues/detail?id=582898
[taglib-ruby]: https://github.com/robinst/taglib-ruby
[jquery-ui-sortable]: https://jqueryui.com/sortable/
[ranked-model]: https://github.com/mixonic/ranked-model

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2016-02-28 10:59:00 +01:00
:updated_at: 2016-02-29 10:43:00 +01:00
:page_title: Week 368
