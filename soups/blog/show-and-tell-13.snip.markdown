Show and Tell 13
----------------

We had 6 of us in the office for Show and Tell 13.

We started off by continuing some of the discussion about Daniel Dennett from Show and Tell 12. I'm certainly still interested in learning more about his work, but I'm yet to do anything about it.

## Google Photos

I briefly demonstrated Google Photos. I took a couple of photos of a little sailing boat on the Thames last night and Google Photos had automatically turned them into a little animated gif which I was able to show. I quite like Google Photos because you get it for free if you're using Google Drive to store your photos - there's no need to upload the images again separately.

## Extracting ID3 tags

I talked through a little script I created to automatically scan a directory for new MP3s and extract the ID3 tags. I started out using [FileWatcher][] but had to look for alternatives when I ran into problems with partially copied files. I [investigated a couple of alternatives][files-changed-gist] before settling on a simple loop that runs every 30 seconds. I avoid extracting data from MP3s I've already seen by comparing a hash of the file to a cache of hashes I've already seen. Paul mentioned that the hash generation was probably quite expensive and that it might be good enough to store information about the file metadata (e.g. last modified) to make things slightly more effiecient. James M mentioned [fswatch][] as a potentially more robust version of FileWatcher, and [md5deep][] as a potentially more efficient way of generating the file hashes.

## Layout on the web

I can't quite remember how we got on to the subject (maybe seeing the layout of Google Photos), but there was some discussion about laying out images and other content on the web. Ben mentioned thegrid.io as something that suggests it takes some of this pain away. Tom mentioned doing something manually in the past although when he brought up the page to show us it had stopped
I think it was Google Photos that sparked a conversation about thegrid.io - https://thegrid.io/ and automatically arranging images/content on a webpage. Tom explained how he'd done that previously (although on loading the page he realised it had stopped working - http://postcards.ntlk.net/the-thames-tunnel/). This reminded Paul that he'd recently seen

Paul demonstrated algebraic expressions in CSS's nth-child selector - https://css-tricks.com/how-nth-child-works/

## Hello, declarative world

Tom took us through the the presentation he gave at Joy of Coding - http://joyofcoding.org/

## Web Audio Weekly workflow

Chris Lowis talked us through his workflow for publishing the web audio weekly newsletters. Using orgmode  - http://orgmode.org/worg/org-contrib/babel/intro.html and ifttt - https://ifttt.com/

## Cloudkit

Tom S talked about Cloudkit - https://developer.apple.com/library/prerelease/ios/documentation/CloudKitJS/Reference/CloudKitJavaScriptReference/index.html which is apparently similiar to Parse - https://parse.com/

## Pub

We finished off with a couple of pints at the Old King's Head.

Discussion in the pub about personal computers and having much more control over them. Alan Kay.

[files-changed-gist]: https://gist.github.com/chrisroos/867d3696278f616cb734
[FileWatcher]: https://github.com/thomasfl/filewatcher
[fswatch]: https://github.com/emcrisostomo/fswatch
[md5deep]: http://md5deep.sourceforge.net/

:render_as: blog
:kind: draft
:is_page: true
:written_with: Kramdown
:author: chris-roos
:created_at: 2015-06-12 15:20:00 +01:00
:updated_at: 2015-06-12 15:20:00 +01:00
:page_title: Show and Tell 13
