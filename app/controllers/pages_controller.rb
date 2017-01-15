require 'atom'

class PagesController < ApplicationController
  include ERB::Util

  helper_method :url_to

  ROOT_SNIP_NAME = 'start'.freeze

  def show
    name = params.permit(:path)[:path]
    @snip = name.present? ? soup[name] : soup[ROOT_SNIP_NAME]
    @author = soup[@snip.author]
    html = render_snip(@snip)
    default_layout = (@snip.render_as == 'Blog') ? 'blog' : 'application'
    layout = @snip.layout ? @snip.layout.sub(/-layout$/, '') : default_layout
    render html: html.html_safe, layout: layout
  end

  def feed
    domain = 'gofreerange.com'
    snips = %w(blog show-and-tell).flat_map { |k| soup[kind: k] }.reject { |s| s.draft }.sort_by { |s| s.updated_at }.reverse.take(10)
    xml = Atom::Feed.new do |f|
      f.title = 'Go Free Range Blog'
      f.updated = snips.first.updated_at
      f.id = "tag:x,2008-06-01:kind/x"
      snips.each do |snip|
        f.entries << Atom::Entry.new do |e|
          e.published = snip.created_at
          e.updated = (snip.updated_at || snip.created_at)
          e.content = Atom::Content::Html.new(h(render_snip(snip)))
          e.title = snip.title || snip.name
          e.authors = [Atom::Person.new(name: snip.author || domain)]
          e.links << Atom::Link.new(href: "http://#{domain}#{url_to(snip.name)}")
          e.id = "tag:#{domain},#{(snip.created_at || Time.now).to_date}:#{url_to(snip.name)}"
        end
      end
    end.to_xml
    render inline: xml, layout: false
  end

  private

  def url_to(snip_name, part=nil)
    return root_path if snip_name == ROOT_SNIP_NAME && part.nil?
    url = "/#{CGI.escape(snip_name)}"
    url += "/#{CGI.escape(part)}" if part
    url
  end

  def render_snip(snip)
    context = view_context.instance_eval { binding }
    content = ERB.new(snip.content).result(context)
    case snip.extension
    when 'haml'
      Haml::Engine.new(content).render
    when 'markdown'
      Kramdown::Document.new(content).to_html
    else
      content
    end
  end

  def soup
    @soup ||= begin
      backend_dirs = %w(
        soups
        soups/weeknotes
        soups/weeklinks
        soups/blog
        soups/show-and-tell
        soups/wiki
        soups/people
        soups/projects
      )
      backends = backend_dirs.map do |path|
        Soup::Backends::FileBackend.new(Rails.root.join(path))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end
  end
end
