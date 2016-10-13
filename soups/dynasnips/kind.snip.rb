require 'vanilla/dynasnip'
require 'atom'
require 'date'

class Kind < Dynasnip
  def handle(kind, limit=10, as=:html)
    as = as.to_sym
    snips = app.soup.with(:kind => kind)
    entries = snips.sort_by { |s| s.created_at || Time.at(0) }.reverse[0...limit.to_i].map do |snip|
      render_entry_in_template(snip, as, kind)
    end
    render_entry_collection(snips, entries, as, kind)
  end

  def render_entry_in_template(snip, as, kind)
    rendered_contents = externalise_links(prepare_snip_contents(snip))
    case as
    when :html
      snip_template.
        gsub('SNIP_KIND', kind).
        gsub('SNIP_NAME', snip.name).
        gsub('CREATED_AT', snip.created_at.to_s || '').
        gsub('SNIP_CONTENT', rendered_contents)
    when :xml
      Atom::Entry.new do |e|
        e.published = snip.created_at
        e.updated = snip.updated_at || snip.created_at
        e.content = Atom::Content::Html.new(rendered_contents)
        e.title = snip.name
        e.authors = [Atom::Person.new(:name => snip.author || domain)]
        e.links << Atom::Link.new(:href => "http://#{domain}#{url_to(snip.name)}")
        e.id = "tag:#{domain},#{(snip.created_at.to_s || Date.today.to_s).split[0]}:/#{snip.name}"
      end
    end
  end

  def prepare_snip_contents(snip)
    app.render(snip)
  end

  def externalise_links(content)
    content.gsub(/href="\//, "href=\"http://#{domain}/").gsub(/src="\//, "src=\"http://#{domain}/")
  end

  def render_entry_collection(snips, entries, as, kind)
    case as
    when :html
      entries.join
    when :xml
      Atom::Feed.new do |f|
        f.title = feed_title
        f.updated = snips[0].updated_at
        f.id = "tag:#{domain},2008-06-01:kind/#{kind}"
        f.entries = entries
      end.to_xml
    end
  end

  attribute :feed_title, "Go Free Range Blog"
  attribute :domain, "gofreerange.com"
  attribute :snip_template, %{
    <div class="snip SNIP_KIND">
      <div class="details">
        {link_to_current_snip}
        <p class="created_at">CREATED_AT</p>
      </div>
      <div class="content">
        SNIP_CONTENT
      </div>
    </div>
  }

  self
end