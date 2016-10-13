Week 369
========

## Smart Answers

This was my first week back working on [Smart Answers][smart-answers].

[James][james-mead] and I used Google Hangouts to discuss what we were working on. It was good to speak in person for the first time since 2015!

In our email conversations, [Dai][dai-vaughn] had explained that improving the [Marriage Abroad Smart Answer][marriage-abroad] was one of their top priorities. It currently takes up about 80% of available developer time each month! I decided to get stuck in and slowly start [refactoring it into a better shape][smart-answer-refactor].

While working on Marriage Abroad, I noticed that JavaScript graph visualisation of Smart Answers was broken. I raised a bug for it and James spent some time investigating. James determined that the problem was caused by the [removal of `SVGGraphicsElement.getTransformToElement` from Chrome][chrome-get-transform-to-element-removal], which caused our version of [jointjs][jointjs] to break. Although there's a [fix in jointjs][jointjs-changelog], it appears to rely on a newer version of jQuery than is currently available on GOV.UK, meaning that it's not a simple case of upgrading. We're trying to work out how important this functionality is to help decide whether we should try to fix it or whether we can get away with removing it.

James also spent quite a while reviewing open Pull Requests.

## IR35 tax assurances

After making some of Egos Consulting's suggested tweaks to our [Working Practice Questionnaire][egos-wpq] we sent it to our contacts at GDS to ask them to sign. Assuming they're happy to sign, we should then be able to send it to the GDS Contracting Team.

## Upstart Unicorn Launcher

[James Kassemi][james-kassemi] opened a pull request against our [upstart-unicorn-launcher][upstart-unicorn-launcher] project back in December. We haven't touched the project since [Tom W][tom-ward] wrote it back in June 2013 and probably haven't used it since then either. After checking whether Tom was interested in taking the project, we offered it to James. He accepted and is now the owner. Good luck, James!

Until next time.

-- Chris

[chrome-get-transform-to-element-removal]: https://www.chromestatus.com/feature/5736166087196672
[dai-vaughn]: https://dafyddvaughan.uk/
[egos-wpq]: http://www.egos.co.uk/ir35_wpq.htm
[james-kassemi]: https://github.com/jkassemi
[james-mead]: /james-mead
[jointjs]: http://www.jointjs.com/
[jointjs-changelog]: https://github.com/clientIO/joint/blob/e364cf841cd4362375c41352300d809ae5e21808/CHANGELOG#L29
[marriage-abroad]: https://www.gov.uk/marriage-abroad
[smart-answers]: https://github.com/alphagov/smart-answers
[smart-answer-refactor]: https://github.com/alphagov/smart-answers/blob/master/doc/refactoring.md
[tom-ward]: https://tomafro.net/
[upstart-unicorn-launcher]: https://github.com/freerange/upstart-unicorn-launcher

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2016-03-10 10:35:00 +11:00
:updated_at: 2016-03-10 10:35:00 +11:00
:page_title: Week 369
