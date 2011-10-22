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
    xml =<<-EOX
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      #{urls}
</urlset>
    EOX
  end
  self # for the renderer
end

:domain: gofreerange.com
:updated_at: 2010-01-04 11:30:00 +00:00
:created_at: 2010-01-04 11:30:00 +00:00
