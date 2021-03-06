Week 403
========

Chris spent quite a bit of time this week working on getting his houseboat ready to re-launch. I mainly worked on our Music Library project in collaboration with [Hookline][].

### Trello

On Monday, as has become our habit of late, Chris & I met up and worked together at the [Benugo cafe at the BFI][bfi-benugo]. We've got into a good rhythm of going through our main company Trello board at the beginning of each week and picking out tasks that we want to aim to do that week. Although we still have a big backlog of cards, it feels as if we're much more on top of things than we have been.

### Virtual office

Having signed up for a UK Postbox address [a couple of weeks ago][virtual-office], this week we tested it was working by sending a letter to the new address. Having confirmed it was working OK, we started changing our address with various entities, e.g. HMRC, Companies House, our bank, etc.

### Mocha

We both did a small amount of work on [Mocha][] to move us closer to a v1.2 release.

### Annual accounts

Chris spoke to our accountant, Paul, to see whether they could get to the bottom of the remaining discrepancy between our FreeAgent accounts and the annual accounts generated by Paul. Although they managed to close the gap a bit further, we're still left with a small discrepancy. Paul is happy that this small discrepancy is [not material to the accounts][materiality], so we gave him the go-ahead to submit our accounts to Companies House and HMRC.

### Credit union

I [replied][comment-2930917130] [to][comment-2930903634] some questions about our [credit union project][] on our blog.

### Prospective client

Following on from [the work he did last week][prospective-client-faqs], Chris sent an excellent reply to a prospective client explaining how we would approach the project he has in mind, e.g. identifying a [minimum viable product][MVP], and [avoiding micro-services][monolith-first] early in the project.

### Music Library project

I did a bunch of work mostly around adding client- and server-side validation, and better handling of errors. Some of this led me into wanting to refactor our existing JavaScript and write some unit tests for it.

#### Javascript unit tests

I spent a while looking at the myriad ways available to do this, but in the end I simply split the code up into "modules" using anonymous functions and wrote tests using [Jasmine][]. I used the [jasmine-rails gem][] to set this up and later added the [jasmine-jquery-rails gem][] in order to be able to make use of [jasmine-jquery][]'s matchers and HTML fixtures.

I'm not totally convinced about having the HTML fixtures in separate files, but I thought I'd give them a go. I struggled a bit to get the HTML fixtures working. However, I eventually managed it thanks to a combination of [this Github comment][comment-48640368] and [this blog post][using-jasmine-with-rails-4.1].

#### Non-ActiveRecord models

Even though for the moment we're building the system just for Hookline, we're considering trying to offer it as a product for other music publishers. In order to capture Hookline-specific behaviour, we'd already introduced a Publisher ActiveModel class, with a static Hookline instance.

As an extension of this I recently wanted to introduce a Catalogue class, but I wanted both Publisher & Catalogue to have IDs so that ActiveRecord models could reference them. Thus I decided to use [Paul B][]'s [ActiveRecordLikeInterface][] which has worked pretty nicely.

#### Large zip files

Towards the end of the week I had some "fun" using [Rubyzip][] to create large (5GB+) zip files using the AWS SDK to upload them to an S3 bucket.

The first problem I had was that the zip file I created didn't appear to have a "central directory" which meant that some tools couldn't unzip the file. This turned out to be a mistake in the way I was using Rubyzip.

Secondly the Ruby version of the AWS SDK refused to upload my file, because it was too big to be handled by [Aws::S3::Object#put][] which only does single-part uploads. I spent a while trying to work out how to use the SDK to do multi-part uploads when I fortuitously stumbled upon [Aws::S3::Object#upload_file][] which automatically uses a multi-part upload for larger files. It particularly nice, because it spawns multiple threads to upload the parts in parallel.

Anyway that's all for this week. Until next time.

-- James

[Hookline]: http://hookline.tv/
[bfi-benugo]: http://www.benugo.com/restaurants/bfi-bar-kitchen
[virtual-office]: /week-401#virtual-office
[Mocha]: https://mocha.jamesmead.org
[materiality]: https://en.wikipedia.org/wiki/Materiality_(auditing)
[credit union project]: /credit-union
[comment-2930917130]: /project-credit-union-day-1#comment-2930917130
[comment-2930903634]: /project-credit-union-day-1#comment-2930903634
[prospective-client-faqs]: /week-402#potential-client-faqs
[MVP]: https://en.wikipedia.org/wiki/Minimum_viable_product
[monolith-first]: http://martinfowler.com/bliki/MonolithFirst.html
[Jasmine]: http://jasmine.github.io/
[jasmine-rails gem]: https://github.com/searls/jasmine-rails
[jasmine-jquery-rails gem]: https://github.com/travisjeffery/jasmine-jquery-rails
[jasmine-jquery]: https://github.com/velesin/jasmine-jquery
[using-jasmine-with-rails-4.1]: http://nicholshayes.co.uk/blog/?p=507
[comment-48640368]: https://github.com/searls/jasmine-rails/issues/123#issuecomment-48640368
[Paul B]: http://po-ru.com/
[ActiveRecordLikeInterface]: https://github.com/alphagov/whitehall/blob/84cb4717e2c1d710e71972e02a3afec957bce8f5/lib/active_record_like_interface.rb
[Rubyzip]: https://github.com/rubyzip/rubyzip
[Aws::S3::Object#put]: http://docs.aws.amazon.com/sdkforruby/api/Aws/S3/Object.html#put-instance_method
[Aws::S3::Object#upload_file]: http://docs.aws.amazon.com/sdkforruby/api/Aws/S3/Object.html#upload_file-instance_method

:name: week-403
:updated_at: 2016-10-24 11:48:57.541017000 +01:00
:created_at: 2016-10-24 11:48:57.541012000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 403
:extension: markdown
