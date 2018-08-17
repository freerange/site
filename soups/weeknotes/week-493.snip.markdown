Week 493
========

On Tuesday we took James out to lunch to celebrate his birthday. We enjoyed some tasty food and riverside views at the [The Narrow](https://www.gordonramsayrestaurants.com/the-narrow) in Limehouse. For the rest of the week we continued our work for [BHRRC](https://www.business-humanrights.org/).

## Modern Slavery Registry

We continued our work on the Business and Human Rights Resource Centre's [Modern Slavery Registry](https://www.modernslaveryregistry.org/). Some of the larger pieces of work were:

- Moving the storage of modern slavery statement snapshots out of the postgres database and into Amazon's S3. We used Rails' new [ActiveStorage backend](https://github.com/bhrrc/modernslaveryregistry.org/commit/8f689bbf723b7c7ca950cad127ed8fa2601aa382) to do this.
- We [made it easier to bulk upload](https://github.com/bhrrc/modernslaveryregistry.org/commit/638d1b02c6c2398bb4487abe7428766c533eaa40) statements that fall under a specific legislation. This will help the team add a large number of statements under the Californian legislation.
- We [improved the search](https://github.com/bhrrc/modernslaveryregistry.org/commit/7df17f0d3501f6ca549f1260b7bb8a353b14b6c1) functionality by leveraging postgres's full text searching and [search aliases](https://github.com/bhrrc/modernslaveryregistry.org/commit/b3005af3d3172b4b46e9049575a375f204f30d3b).
- [Linking statements](https://github.com/bhrrc/modernslaveryregistry.org/commit/0fc15a876685b19a64fe5c022e21f5c3a5e6e121) to their corresponding company pages on the BHRRC website.
- [Displaying a chart](https://github.com/bhrrc/modernslaveryregistry.org/commit/8489b88b9afcc653f152ea0f65c0b88ce17205c4) of the number of new statements added over time for admins.
- Make it easier to create a local [full-text index](https://github.com/bhrrc/modernslaveryregistry.org/commit/2be43ce4ddb987bdde604553f2249ab629ca4bce) of all the PDF statements uploaded. This makes it easier for the team to analyse the content of the statements. We may want to add a feature like this to the site in the future but for now we've decided to add the statements to the team's [OneDrive](https://office.live.com/start/OneDrive.aspx?omkt=en%2DUS) account where the text can be indexed.
- Create [scripts to provision the production environment on AWS](https://github.com/bhrrc/modernslaveryregistry.org/commit/52ae41f4b1da13e32b56355dce2f1bec65048dfb)

:name: week-493
:updated_at: 2018-07-13 11:19:39.638550000 +01:00
:created_at: 2018-07-13 11:19:39.638542000 +01:00
:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-lowis
:page_title: Week 493
:extension: markdown
