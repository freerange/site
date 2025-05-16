Week 852
========

Week beginning Monday, 12th May 2025.

It was a fairly intense week of work on the [Experience CS] project with the [Raspberry Pi Foundation]. On Thursday Google sent an email to existing users of [CSFirst] linking to the new Curriculum and example Scratch project pages we'd been working on. So in the days leading up to that announcement we wanted to get everything looking good and working well.

The bulk of the work this week involved extending the data model behind the [curriculum content], exposing that through the [Administrate] interface and creating pages that match [Mariam]'s designs. James used [administrate-field-active_storage] (fixing [an issue] along the way) to allow the content team to easily add illustrations to Lessons and Units. Seeing Mariam's illustrations on the page immediately made the pages seem more "real" to me.

<p>
  <img style="border: 1px solid lightgray;" alt="A screenshot of the curriculum page on ExperienceCS showing the units that make up the curriculum, with the grades and subjects they are designed for." src="<%= image_path('blog/2025-05-16-experience-cs-curriculum-page.jpg') %>">
</p>

The sample projects linked to from these initial lessons also means that people can now see and try out the custom scratch editor we've been working on for several weeks.

<%= image_tag('blog/2025-05-16-experience-cs-scratch-project.jpg', alt: 'A screenshot of the scratch project page on ExperienceCS showing the scratch editor next to a collapsable instruction panel.') %>

See if you can solve the [ten block mission], for example! I'm pleased with how well we've made the interface work on small laptops (low-end Chromebooks are particularly popular in some US school districts), but we need to think about what if anything we can do on smaller, mobile devices. Scratch itself does not work particularly well on these devices, so we'd likely have to make quite a lot of changes to our fork of Scratch to support it well, and so far we've been trying to keep our changes to a minimum to help with long-term maintainability.

A busy week, and I think we've done a good job making something everyone is proud to share, while keeping the scope as small and focussed as possible.

All of this didn't leave a huge amount of time for anything else. On Monday I helped [LRUG] host the May meeting at our [Space4] office. Today I met James briefly for lunch on his way to the Isle of Wight.

[Experience CS]: https://experience-cs.org
[Raspberry Pi Foundation]: https://www.raspberrypi.org
[CSFirst]: https://csfirst.withgoogle.com/s/en/home
[curriculum content]: https://experience-cs.org/units
[Mariam]: https://www.mariambagersh.com/
[Administrate]: https://github.com/thoughtbot/administrate
[administrate-field-active_storage]: https://github.com/Dreamersoul/administrate-field-active_storage
[an issue]: https://github.com/Dreamersoul/administrate-field-active_storage/pull/176
[ten block mission]: https://experience-cs.org/projects/ten-block-mission
[LRUG]: https://lrug.org/
[Space4]: https://space4.tech/

:name: week-852
:updated_at: 2025-05-16 13:32:56.395878000 +01:00
:created_at: 2025-05-16 13:32:56.395875000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 852
:extension: markdown
:erb: true
