Week 220
========

This was another short week, post-Easter, and a pretty quiet one at that, especially as [Chris](/chris-roos) was away on holiday in Australia. I hope you're having fun, Chris.

## SSL on a single sub-domain

Having been away on holiday myself for a couple of weeks (trying hard not to look at a computer), it took me quite a while to catch up with what's been going on. To ease myself back into some technical work, I decided to pick up a relatively benign looking card about enabling SSL for one of our sub-domains.

Unfortunately as far as I can tell it's not possible to enable SSL for a single sub-domain while not responding to SSL on the base domain or on the other sub-domains. Looking on the bright side, I learnt a fair bit about the SSL extension, [Server Name Indication](http://wiki.apache.org/httpd/NameBasedSSLVHostsWithSNI), and the X.509v3 extension for [Subject Alternative Name](http://wiki.cacert.org/FAQ/subjectAltName).

## P35 submission

[Tom](/tom-ward) has been grappling with the mysteries of submitting our P35 to HMRC via the [Basic PAYE Tools](http://www.hmrc.gov.uk/payerti/payroll/bpt/index.htm). It didn't help that the HMRC server appeard to be down or overloaded for much of a 24-hour period, but he got it submitted in the end.

## Ruby Manor 4

[James A](/james-adam) has been busy with preparations for [Ruby Manor 4](http://rubymanor.org/4/). Regrettably, I'm not going to be able to make it this year. It's a shame because the [list of talks](http://rubymanor.org/4/#schedule) looks excellent and the venue sounds great. I hope all the attendees enjoy the conference and appreciate the effort that James A, [Tom Stuart](https://twitter.com/tomstuart) and [Murray](https://twitter.com/hlame) have put into it.

## 3-2-1 launch?

Tom has been doing some thinking the experience that he and Chris gained on [Project Los Roques](http://gofreerange.com/week-218#project-los-roques) and how we might offer a similar short engagement to prospective clients as a "product". In particular he's been thinking about how we could have some kind of skeleton application which would include common libraries to save time setting them up.

## MiniTest extension

In another vain attempt to do something short and self-contained, I went back to try to finish off some changes to [MiniTest](https://github.com/seattlerb/minitest) which I started a while ago. The idea was to provide a robust way to run a single MiniTest test by specifying a file and a line number with the idea that this making editor integration easier.

I have the basics of it working, but I've been struggling to come up with the best way to make it available: pull request to MiniTest, a MiniTest extension gem, or something else. Even though MiniTest provides a number of extension points, it's pretty awkward to define a new test runner extending the functionality of the existing one.

## Heylist!

James A has also been keeping an eye on [HeyList!](http://heyli.st/). If you want to tap into the [real pulse](http://gofreerange.com/say-hello-to-heylist) of the conference, you might want to consider following the [Ruby Manor 4 list](https://twitter.com/rubymanor/ruby-manor-4) which currently has 107 members. It'll be interesting to see how many people use the list on Saturday and how useful they found it.

## Printer kits

After a short delay due to temporary difficulties getting hold of some [Arduino Ethernets](https://github.com/freerange/printer/wiki/Component-list#or-arduino-ethernet-6533-42), James A has sent out a few more [Printer kits](http://gofreerange.com/printer-kit). I'm looking forward to seeing what people do with them.

Anyway, that's your lot for this week. Have a great weekend!

-- James

:render_as: Blog
:kind: blog
:is_page: true
:written_with: Kramdown
:author: james-mead
:created_at: 2013-04-05 10:29:00 +00:00
:updated_at: 2013-04-05 10:29:00 +00:00
:page_title: Week 220

