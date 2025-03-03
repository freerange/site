Week 821
========

Week beginning Monday 7 October, 2024.

[Chris][chris-lowis] had this week off so [James][james-mead] and I kept things ticking along.

## Mission Patch &#128640;

James continued to port the app from [SvelteKit][svelte-kit] to [Rails][ruby-on-rails], merging PRs that add the patch designer and print functionality into the Rails app.

The patch designer in Rails is currently a basic version that works without JavaScript: enhancing it with JavaScript will come later and should mean that the user experience remains unchanged from the existing SvelteKit version. Although it's been deployed it's currently protected behind a login until we're ready to switch to the Rails version of the patch designer.

In contrast, the print functionality is already feature complete so the Rails version is now being used to generate the print-ready artwork in production. We produce these print-ready images by using [Ferrum][ferrum] to render the SVG in a headless browser and use the browser's screenshot functionality to save it as a PNG. Although the end-to-end tests were passing with the Rails implementation we wanted a little more confidence that we hadn't broken anything. James wrote some scripts to generate a large(ish) number of mission patches using both SvelteKit and Rails versions of the app and then compared them using `diff`. This led to the discovery that generating the patches in this way doesn't appear to be deterministic! He initially saw that there were ocassionally differences in the binary files generated by the SvelteKit and Rails versions but then later discovered that printing the same image using the same app multiple times could also lead to different binary files. Despite these differences in the binaries we haven't been able to detect any differences visible to our human eyes so accepted that the Rails version is at parity with the SvelteKit version. It's worth noting that the SVGs were identical so the differences do seem to be coming from the way the browser saves the image as a PNG. This all sounds similar to the problem I was seeing when running the end to end tests locally, i.e. a difference in the PNG generated on my machine versus the one stored in the fixture file.

We received a couple of orders for the 48 pack of stickers from the [UK Parliament][uk-parliament] during the week: it's always satisfying to see the designs pop up in Slack when an order comes in.

## Jam &#127926;

I spent an inordinate amount of time trying to understand how much we owed in VAT for sales we made on Jam to customers in the EU. I think I've finally got to the bottom of it but still have some work to do to check that we've been reporting it correctly for historic sales.

[chris-lowis]: /chris-lowis
[ferrum]: https://ferrum.rubycdp.com/
[james-mead]: /james-mead
[ruby-on-rails]: https://rubyonrails.org/
[svelte-kit]: https://kit.svelte.dev/
[uk-parliament]: https://www.parliament.uk/

:name: week-821
:updated_at: 2024-10-14 10:37:00.000000000 +01:00
:created_at: 2024-10-14 10:37:00.000000000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Week 821
:extension: markdown
