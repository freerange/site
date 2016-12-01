Week 407
========

* Mon: Both worked at BFI
* Wed: Both worked at TOG, Bloomsbury
* Fri: Both worked with Ben at BFI

## Business development

We continued our discussions with [GDS][] about working on a number of possible projects. In the meantime we also tried to find out more about the implementation of the [Competition & Markets Authority][]'s [investigation into the Retail Banking Market][retail-banking-market-investigation] [pdf] which seems to relate to some of the motivations behind our [Credit Union project][]. It appears that [Payments UK][] have helped establish the [Implementation Entity Steering Group][] which is supposed to be driving the project forward. We'd love to know more about this project and so if anyone knows anything, please get in touch!

  * Chris replied to an email from Jack at Fairmondo

## Website

  * Website: Add Smart Answers to the Recent Work - https://github.com/freerange/site/commit/21b5d7538102e9eefb88cd8ac56df3fbe5facc3c
  * Website: Only display curated list of ~3 projects in Recent Work - https://github.com/freerange/site/pull/38
  * Website: Added FutureLearn Video project to our list of projects - https://github.com/freerange/site/pull/37

## Wiki

  * Added a bit of info about MVPs & time/scope/cost triangle to our Prospective Client checklist on our internal wiki
  * Created wiki page with recommended insurers

## Operations

  * Worked out why our SPF DNS record mentions Amazon SES - GFR Video
  * Incorporated improved fix into all recap-deployed websites - https://github.com/tomafro/recap/issues/115#issuecomment-255058393

## Open source

  * Mocha: YAML serialisation - booked time to discuss on Wed
  * Mocha: Allow generation of return values by block with invocation argument - Chris asked for further clarification
  * James & Chris did some investigation into running the Mocha build on Ruby v1.8.6, but failed. So then merged a PR requiring >= v1.8.7 in gemspec - https://github.com/freerange/mocha/pull/208
  * Open source: James checked build passed with HEAD version of JRuby - https://github.com/freerange/mocha/issues/274#issuecomment-257445355
  * Discussed & paired on Mocha serialization

  * Open source: James released new versions of the introspection ( https://rubygems.org/gems/introspection/versions/0.0.4) & instantiator (https://rubygems.org/gems/instantiator/versions/0.0.7) gems prompted by a comment by Charles Nutter - https://github.com/freerange/mocha/issues/274#issuecomment-256157095

  * Asked why interrupt signal was ignored in Ruby bug
    * https://bugs.ruby-lang.org/issues/12832#note-6
    * https://bugs.ruby-lang.org/issues/12832#note-9

  * Email Anna Shipman about Smart Answers
  * Email to Anna Shipman about Smart Answers - https://groups.google.com/a/gofreerange.com/d/msg/members/bJvhsgvf2hw/cqMio-CmAwAJ

## Company admin

  * Received our first "real" letter via UK Postbox
  * Book-keeping: Chris wrote up some notes on how we handle VAT on USD transactions and on what is allowable as an expense for coffee/lunch based on input from Proactive Paul
  * Went through Trello "Later" list
  * Did some more thinking about which Harmonia tasks could be outsourced/automated
  * Chris played around a bit more with IFTTT to create cards in Trello based on events in Google Calendar. However, we were a bit alarmed to discover that if the card creation failed, we were not notified even though an error showed up in the IFTTT log. We're planning to investigate alternatives to IFTTT in the future.
  * Went through Trello board
  * Went through Trello Later list
  * Agreed goals for week
  * Continued going through project ideas

## The Office Group

  * Initial categorisation of TOG subscription & deposit
  * Collected TOG Lounge membership cards & Bloomsbury Way building passes
  * Annoying faff with TOG invoices with incorrect dates - credit notes & new invoices issued; also uncertainty around how to explain transactions in FreeAgent
  * Arranged to collect TOG passes

## Music Library

  * Positive feedback about Music Library website from a client and a suggested improvement
  * Arranged a meeting with Hookline about plans for the Music Library project
  * Music Library: James added a filter to the Papertrail logging to reduce the rate of log messages so that we mostly stay within the free plan - http://help.papertrailapp.com/kb/how-it-works/log-filtering/

## Fun times

On Friday we met up with [Ben G][] at the [Benugo Bar & Kitchen at the BFI on the Southbank][bfi-benugo] with the vague idea of building something fun using software.

  * Purchase of chess-related hardware
  * Fri: Both worked at BFI with Ben on Game Soundtrack project
  * Arrange a time to work with Ben G - 10am on Friday at BFI Benugo


[GDS]: https://www.gov.uk/government/organisations/government-digital-service
[Competition & Markets Authority]: https://www.gov.uk/government/organisations/competition-and-markets-authority
[retail-banking-market-investigation]: https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/523755/retail_banking_market_pdr.pdf
[Credit Union project]: /credit-union
[Payments UK]: http://www.paymentsuk.org.uk/
[Implementation Entity Steering Group]: http://www.paymentsuk.org.uk/policy/payments-CMA-remedy-phase1/temporary
[Ben G]: https://twitter.com/beng
[bfi-benugo]: http://www.benugo.com/restaurants/bfi-bar-kitchen

:name: week-407
:updated_at: 2016-11-28 15:44:09.909500000 +00:00
:created_at: 2016-11-28 15:44:09.909489000 +00:00
:render_as: Blog
:kind: draft
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Week 407
:extension: markdown
