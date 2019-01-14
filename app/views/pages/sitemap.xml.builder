xml.instruct!
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do
  @snips.each do |snip|
    xml.url do
      xml.loc "https://#{@domain}#{url_to snip.name}"
      xml.lastmod snip.updated_at.xmlschema
    end
  end
  @docs.each do |project, doc|
    xml.url do
      xml.loc "https://#{@domain}#{doc[:root]}"
      xml.lastmod doc[:last_updated].xmlschema
    end
  end
end
