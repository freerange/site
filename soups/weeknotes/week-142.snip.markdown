Week 142
========

We're now three weeks into the Gov UK project, although I think our deep immersion makes it feel somewhat longer.  Longer in a good way, that is.

We're currently working on the [Corporate government website](http://digital.cabinetoffice.gov.uk/2011/10/07/corporate-government-websites/) but there's plenty more going on in the wider [GDS development team](https://github.com/alphagov).  As the team grows so it becomes more important to have some consistency in approach.  To that end the whole team spent some time chatting about a range of topics including coding styles, testing approaches and branching strategies.  While we're completely behind the idea of consistency across projects we couldn't help but take a little dig at the decision to use [ERB over HAML](https://github.com/alphagov/whitehall/commit/fdb497987a53a34ef83bcf7bf57de9a86f09d8f8) :-).

Having the discussion reminded me how lucky GFR are to have all worked with each other for a number of years: I think we have a pretty good shared understanding of how to work together.

I spent most of Tuesday working with [Pete](http://twitter.com/#!/yahoo_pete) to question some of the assumptions set out in the wireframes we're using.  We feel pretty lucky to be working with both [Neil](http://twitter.com/#!/neillyneil) and Pete: they're very knowledgable about the product *and* completely open to our questioning.

This week has also seen a couple of departmental editors starting to play with the initial version of the app and provide feedback, which is incredibly valuable.

## GFR

[Tom's](http://tomafro.net/) been banging on about buying computer equipment through the company for ages.  Jase's laptop dying was the perfect opportunity for him to raise the issue again and we now have two fancy new MacBook Airs in the GFR family.

Working full time on Gov UK has lead us to neglect some of the GFR projects we (well, [James](http://lazyatom.com/)) started.  We're still using them but they're not getting any active development love at the moment.

## The Office

We spent a few hours on Saturday moving all our office furniture  from my flat into our new office.  The next step is to find some time when we're all available to tidy, organise, decorate and generally make it somewhere that we want to be.

## Other

I was intrigued to know what this was the 142nd week of.  I had assumed, correctly as it turns out, that it was of the life of the company but wanted to double check.

    $ ruby -rdate -e"\
    days_since_incorporation = Date.parse('2011-10-07') - Date.parse('2009-01-13'); \
    puts 'Week: ' + (days_since_incorporation / 7.0).to_i.to_s"
    Week: 142

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2011-10-09 15:00:00 +01:00
:updated_at: 2011-10-09 15:00:00 +01:00
:page_title: Week 142