atom_feed(id: "tag:x,2008-06-01:kind/x") do |f|
  f.title 'Go Free Range Blog'
  f.updated @snips.first.updated_at
  @snips.each do |snip|
    path = url_to(snip.name)
    id = "tag:#{@domain},#{(snip.created_at || Time.now).to_date}:#{path}"
    url = "http://#{@domain}#{path}"
    f.entry(snip, id: id, url: url, updated: snip.updated_at || snip.created_at, published: snip.created_at) do |e|
      e.title snip.page_title || snip.title || snip.name
      content = externalise_links(render_snip(snip))
      e.author do |a|
        a.name snip.author || @domain
      end
      e.content content, type: 'html'
    end
  end
end
