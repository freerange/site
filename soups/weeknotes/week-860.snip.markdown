Week 860
========

Happy Friday from a hot and humid London.

Over the last two weeks we've had time to spend on important but not urgent tasks for [Experience CS](https://experience-cs.org). I hesitate to use the term "technical debt" because, as [Joel explains](https://blog.mocoso.co.uk/posts/talks/take-back-control-of-code-quality/), keeping code quality up is something we try to do all the time rather than tackle every so often. But I think it's fair to say that in getting ready for launch we prioritised some high-value features over some longer term ones.

For example, we were relying on an unreleased fork of [Scratch](https://scratch.mit.edu/) that includes a number of enhancements that haven't yet made it into the mainline version. However we were experiencing some hard-to-debug issues with this fork that we're not well-positioned to investigate. To make our project more maintainable in the longer term we decided to switch to using the mainline Scratch code and wait until the new features are ready for wider use (at which point it should be easier to adopt them). Since the old fork was created a number of fairly significant code organisation changes have happened in the Scratch codebase, so Seb did the hard work of unpicking those. This difficulty confirmed the value in doing the work now - it would have only been harder for our future selves, or colleagues, to unpick this the longer we left it.

We'd made a couple of quick compromises to get a [teaching resources](https://experience-cs.org/teaching-resources) page ready for launch. But this week Mariam and I had time to pair on it and implement some nicer design touches. I also took the time to factor out a couple of [ViewComponents](https://viewcomponent.org/) and make sure their names and parameters matched up with their Figma equivalents.

We moved some hard-coded HTML content into our [Administrate](https://github.com/thoughtbot/administrate) CMS to allow other team members to maintain the content. One of the minor downsides of allowing anyone to change content is that URLs based on that content may also change. As we all know, [Cool URIs don't change](https://www.w3.org/Provider/Style/URI), but if they have to at least we can put in redirects for the old URIs. James spent some time using [friendly_id](https://github.com/norman/friendly_id) to make this happen.

Chris added some useful documentation to the project so that in future we don't have to struggle to remember how to, for example, make a database model translatable. As we document as we go using [good commit messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) our documentation was able to link to example commits to show other developers how to do things.

## In other news

We had an interesting conversation with a research team at Cambridge University about a project proposal we put in back in [Week 842](/week-842). The project is about supporting parents to spend more time reading books with their children.

We said goodbye to [Leigh](https://www.linkedin.com/in/leighaspin) who's been our (talented and patient) Product Manager on the Experience CS project. We wish him all the best in his next project and look forward to working together again one day!

Some of our friends from [CoTech](https://cotech.uk) attended the [Co-ops Congress](https://www.uk.coop/events-and-training/co-op-congress) in Rochdale and [showed off the new CoTech branding](https://community.coops.tech/t/cotech-new-branding/4450/3).

:name: week-860
:updated_at: 2025-07-11 11:50:34.979325000 +01:00
:created_at: 2025-07-11 11:50:34.979325000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 860
:extension: markdown
