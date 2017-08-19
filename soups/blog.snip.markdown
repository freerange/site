<div id="blog_articles">
  <h2>Recent articles</h2>
  <ol class="blog_list" reversed>
    <% Bloggable.all.to_enum.with_index(1).reverse_each do |snip, index| %>
      <%= content_tag(:li, link_to(snip.page_title, url_to(snip.name)), value: index) %>
    <% end %>
  </ol>
</div>

:layout: blog-index-layout

:created_at: 2010-11-04 10:46:27 +0000
:created_sha: e3ec4ca2d47461b081d382aeee899e0622341696
