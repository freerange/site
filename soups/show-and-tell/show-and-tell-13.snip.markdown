Show and Tell 13
================

We had 6 of us in the office for Show and Tell 13.

We kicked off with a continuation of the discussion about [Daniel Dennett][dennett] from Show and Tell 12. This renewed my interest in learning more about his work, but I'm yet to do anything about it.

## Google Photos

I briefly demonstrated [Google Photos][google-photos]. I took a couple of photos of a little sailing boat on the Thames last night and Google Photos had automatically turned them into a little animated gif which I was able to show. I particularly like the fact that Google Photos sits on top of [Google Drive][google-drive], and that just by uploading photos to Drive, I get these automated creations for free.

## Extracting ID3 tags

I talked through a little script I created to automatically scan a directory for new MP3s and extract the ID3 tags. I started out using [FileWatcher][file-watcher] but had to look for alternatives when I ran into problems with partially copied files. I [investigated a couple of alternatives][files-changed-gist] before settling on a simple loop that runs every 30 seconds. I avoid extracting data from MP3s I've already seen by comparing a hash of the file to a cache of hashes I've already seen. [Paul B][paul-b] mentioned that the hash generation was probably quite expensive and that it might be good enough to store information about the file metadata (e.g. last modified) to make things slightly more efficient. [James M][james-m] mentioned [fswatch][] as a potentially more robust version of FileWatcher, and [md5deep][] as a potentially more efficient way of generating the file hashes.

## Layout on the web

I think it was the demonstration of Google Photos that kicked off some discussion about grid layouts on the web. [Ben G][ben-g] mentioned [The Grid][the-grid] as something that claims to take the pain out of laying content out manually. Tom talked about doing this sort of grid based layout by hand in the past, and how it was actually relatively trivial once he'd sketched it all out and understand how it works. This all reminded Paul that he'd recently read, and been surprised to learn, about [algebraic expressions in CSS's nth-child selector][nth-child].

## Hello, declarative world

[Tom S][tom-s] took us through the presentation he gave at the [Joy of Coding][joy-of-coding]. His talk was about declarative programming in Ruby and he walked us through the code he created for the presentation. While I can't say I followed all of it, it was certainly interesting to see a declarative system based on relatively simple concepts be used to solve problems.

## Web Audio Weekly workflow

[Chris L][chris-l] talked us through his workflow for publishing the [Web Audio Weekly newsletters][waw]. He uses [ifttt][] recipes to collect emails, tweets and bookmarks and save them all as text files in a Dropbox folder which is synced to his laptop. He uses the [Emacs Directory Editor][emacs-dired] to go through things he's collected over the week and uses those as the basis for the newsletter. I really like these sort of systems that are created by gluing other services together.

## Cloudkit

Tom S mentioned [Apple's CloudKit JS][cloudkit-js] which sounds pretty interesting. It appears to offer a way to build a browser based JavaScript version of existing iOS / OSX CloudKit apps. I haven't looked at this in any detail but it sounds very similar to the [JavaScript SDK for Amazon AWS][aws-js-sdk], and someone else mentioned the similarity to [Parse][parse].

## Pub

We finished off with a couple of pints at the Old King's Head where Ben talked about Alan Kay's ideas of personal computers and how we should have much more control of them.

## Show and Tell 14

As always, do [get in touch][] if you're interested in joining us for the next Show and Tell on Weds 8th July.

Until next time.

-- Chris

[aws-js-sdk]: http://aws.amazon.com/sdk-for-browser/
[ben-g]: https://twitter.com/beng
[chris-l]: http://blog.chrislowis.co.uk/
[cloudkit-js]: https://developer.apple.com/library/prerelease/ios/documentation/CloudKitJS/Reference/CloudKitJavaScriptReference/index.html
[dennett]: https://en.wikipedia.org/wiki/Daniel_Dennett
[emacs-dired]: http://www.gnu.org/software/emacs/manual/html_node/emacs/Dired.html
[file-watcher]: https://github.com/thomasfl/filewatcher
[files-changed-gist]: https://gist.github.com/chrisroos/867d3696278f616cb734
[fswatch]: https://github.com/emcrisostomo/fswatch
[get in touch]: /contact
[google-drive]: https://www.google.co.uk/drive/
[google-photos]: https://www.google.com/photos/about/
[ifttt]: https://ifttt.com/
[james-m]: http://jamesmead.org/
[joy-of-coding]: http://joyofcoding.org/
[md5deep]: http://md5deep.sourceforge.net/
[nth-child]: https://css-tricks.com/how-nth-child-works/
[parse]: https://parse.com/
[paul-b]: http://po-ru.com/
[the-grid]: https://thegrid.io/
[tom-s]: http://codon.com/
[waw]: http://blog.chrislowis.co.uk/waw.html

:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2015-06-26 15:20:00 +01:00
:updated_at: 2015-06-26 17:20:00 +01:00
:page_title: Show and Tell 13
:layout: show-and-tell-layout
