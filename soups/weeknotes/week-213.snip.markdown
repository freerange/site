Week 213
========

As a reader of this blog, it's unlikely you'll know what 'تعليم الناس كيفية تحضير الشاي' means.  You also won't realise that these words are written in the wrong direction - Arabic should go right-to-left, not left-to-right.  Until last week I didn't know either of these things either, but having spent almost a fortnight now internationalising [Inside Government](https://www.gov.uk/government) I now know these things and more.

On the surface, providing content in a number of different languages seems a straightforward problem to solve, but when you get down to the details a lot of subtle problems appear.  Dealing with right-to-left scripts used for languages such as Arabic, Urdu, Hebrew and more is just one.  When you start showing content in these languages, it shows up just how many design decisions are affected by the direction of the text.

Luckily on Monday we had some help with this specific problem when [notorious road menace Edd Sowden](https://twitter.com/edds/status/300565594791624705
) came to our office to help.  Using the power of [sass](http://sass-lang.com/), we've [created specific stylesheets](https://github.com/alphagov/whitehall/blob/master/app/assets/stylesheets/frontend/right-to-left.scss) for right-to-left pages.  When these are compiled the, right-to-left flag lets us override any styling we need to make the design work.  I think it's a neat and simple solution.

We've also been working on building an interface to translate a subset of the documents that make up the majority of [Inside Government](https://www.gov.uk/government) content.  We can display translated content through the front end, but without any way to input it's obviously not ideal!  Given the complex structure of these documents, we have to work hard to ensure the translation interface isn't itself too complicated.

The final part we've been working on is translating all the static text and labels.  We've added 44 new languages, ranging from [Azərbaycanca](http://en.wikipedia.org/wiki/Azerbaijani_language) to [Tiếng Việt](http://en.wikipedia.org/wiki/Vietnamese_language).  All 45 of these will have at least some content (mainly provided by the [Foreign & Commonwealth Office](https://www.gov.uk/government/organisations/foreign-commonwealth-office)), though some will obviously be better supported than others.  James A has some tools to help share CSVs of language keys with translators (as sadly we weren't able to use [localeapp.com](http://www.localeapp.com)).  When you start getting into the nitty gritty of counting, pluralisation, generated phrases, capitalisation, date formats and more it becomes apparent what a complex task this is.

## Outside Government ##

Other than GDS work, things have been quiet.  On Tuesday we had our monthly evening out, bonding over Byron burgers and a couple of pints in The Reliance, but other than that it's been all GDS.

Elsewhere, James A has sadly [shut down postalinter.net](http://interblah.net/the-postal-internet-office-is-shutting-down), his nudge against making things fast.  James M continues to investigate and plug away issues relating to mocha (resulting in bug reports such [as this one](https://github.com/seattlerb/minitest/issues/240)).

Until next time,

Tom

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: tom-ward
:created_at: 2013-02-18 13:00:00 +00:00
:updated_at: 2013-02-18 13:00:00 +00:00
:page_title: Week 213
