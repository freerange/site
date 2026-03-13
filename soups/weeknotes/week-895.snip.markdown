Weeks 894 and 895
=================

Weeks beginning Monday 2nd and 9th March.

We've spent the past two weeks continuing to work on the GOV.UK publishing project with [dxw](https://www.dxw.com/).
Specifically focussing on building prototypes of tools that could be used to help improve the health of the [Topic Taxonomy](https://www.gov.uk/government/publications/govuk-topic-taxonomy-principles/govuk-taxonomy-principles).

## Extracting new Topic taxonomy taxons

[James](/james-mead) has continued exploring the idea of extracting new child topics from leaf taxons (i.e. those with no child taxons below them) that contain more than the desired 300 documents.
He's built on the work started in [week 893](/week-893) by testing variations of the topic generation algorithm and by creating some [static HTML pages](https://alphagov.github.io/govuk-document-clustering-experiment/) that allow the output to be explored more easily.
There's lots of information in the [repository](https://github.com/alphagov/govuk-document-clustering-experiment) if you're interested in more detail.
We've shared this with one of the information architects at GDS so we'll wait to see what they make of the suggestions.

## Suggesting Topic taxonomy taxons to publishers

[Chris](/chris-lowis) and I have been exploring how we might suggest Topic taxons when authors are publishing on GOV.UK.
We're testing this by finding similar documents to the one being authored and suggesting the Topic taxons associated with those similar documents.
We're using [RubyLLM](https://rubyllm.com/) with [OpenRouter](https://openrouter.ai/) and the [qwen3-embedding-4b model](https://huggingface.co/Qwen/Qwen3-Embedding-4B) to generate embeddings for most of the content published on GOV.UK in 2025.
We're then using [sqlite](https://sqlite.org/index.html) with the [sqlite_vec extension](https://github.com/asg017/sqlite-vec) to perform a similarity search to find the 5 documents that are most similar to the source document.
We finally return the Topic taxons associated with those similar documents so that we can evaluate whether they look like sensible suggestions.

We ran into a problem where some of published documents were exceeding the context window of the embedding model so we've started to play with the [Tokenizers Ruby Gem](https://github.com/ankane/tokenizers-ruby) and the appropriate qwen3 tokenizer to check the tokenized length of the content before sending it for embedding.

We're currently generating the output of this as a static site using the same pattern we introduced in the [national applicability experiment](https://github.com/alphagov/govuk-national-applicability-experiment) where we use Rake's `file` tasks to process each source document into an html page.
This has the advantage of allowing us to make changes downstream of the embedding step without having to also regenerate all the embeddings.

It's looking promising but there's still a bit more work to do before we can start showing this to other people to get some feedback.

## In non-GDS news:

- Chris, James and I spent an enjoyable and productive day at [Space4](https://space4.tech/) last Friday working together in person.
- We've had a few more conversations about possible projects later in the year.
- Chris has added [a page about CoTech's work](https://coops.tech/work) to the CoTech website.
- Chris and I have both agreed to take on new offices from April as both of our current spaces are unavailable from the end of this month.

Until next time.

-- Chris

:name: week-895
:updated_at: 2026-03-13 13:39:20.692797288 +00:00
:created_at: 2026-03-13 13:39:20.692795557 +00:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Weeks 894 and 895
:extension: markdown
