require 'vanilla/dynasnip'

class Sitemap < Dynasnip
  attribute :domain, "gofreerange.com"
  def handle
    urls = app.soup[:is_page => true].map { |snip|
      %{
        <url>
          <loc>http://#{domain}#{url_to snip.name}</loc>
          <lastmod>#{snip.updated_at.xmlschema}</lastmod>
        </url>
      }
    }
    docs = ["recap", "mocha"].map { |project|
      root = "/#{project}/docs"
      # files = Dir["/home/freerange/docs/#{project}/**/*"]
      files = Dir["/Users/jamesmead/freerange/#{project}/**/*"]
      last_updated = files.map { |f| File.mtime(f) }.sort.last || Time.at(0)
      %{
        <url>
          <loc>http://#{domain}#{docs}</loc>
          <lastmod>#{last_updated.xmlschema}</lastmod>
        </url>
      }
    }
    xml =<<-EOX
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      #{urls}
      #{docs}
</urlset>
    EOX
  end
  self # for the renderer
end

:domain: gofreerange.com
:updated_at: 2010-01-04 11:30:00 +00:00
:created_at: 2010-01-04 11:30:00 +00:00
