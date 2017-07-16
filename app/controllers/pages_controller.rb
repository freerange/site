require 'atom'
require 'action_controller/metal/exceptions'
require 'snip_renderer'

class PagesController < ApplicationController
  include ERB::Util

  helper_method :url_to

  ROOT_SNIP_NAME = 'start'.freeze

  def show
    name = params.permit(:path)[:path]
    @snip = name.present? ? soup[name] : soup[ROOT_SNIP_NAME]
    if @snip.nil?
      render text: "Soup not found: #{name}", status: :not_found
      return
    end
    @author = soup[@snip.author]
    html = render_snip(@snip)
    layout = layout_for(@snip)
    render html: html.html_safe, layout: layout
  end

  def feed
    @domain = 'gofreerange.com'
    snips = %w(blog show-and-tell).flat_map { |k| soup[kind: k] }.reject { |s| s.draft }.sort_by { |s| s.updated_at }.reverse.take(10)
    xml = Atom::Feed.new do |f|
      f.title = 'Go Free Range Blog'
      f.updated = snips.first.updated_at
      f.id = "tag:x,2008-06-01:kind/x"
      snips.each do |snip|
        f.entries << Atom::Entry.new do |e|
          e.published = snip.created_at
          e.updated = (snip.updated_at || snip.created_at)
          content = externalise_links(render_snip(snip))
          e.content = Atom::Content::Html.new(content)
          e.title = snip.title || snip.name
          e.authors = [Atom::Person.new(name: snip.author || @domain)]
          e.links << Atom::Link.new(href: "http://#{@domain}#{url_to(snip.name)}")
          e.id = "tag:#{@domain},#{(snip.created_at || Time.now).to_date}:#{url_to(snip.name)}"
        end
      end
    end.to_xml
    render inline: xml, layout: false
  end

  def sitemap
    @domain = 'gofreerange.com'
    @snips = soup[:is_page => true].reject { |s| s.draft }
    @docs = ["recap", "mocha"].inject({}) do |projects, project|
      root = "/#{project}/docs"
      files = Dir["/home/freerange/docs/#{project}/**/*"]
      last_updated = files.map { |f| File.mtime(f) }.sort.last || Time.at(0)
      projects[project] = { root: root, last_updated: last_updated }
      projects
    end
  end

  private

  def url_to(snip_name, part=nil)
    return root_path if snip_name == ROOT_SNIP_NAME && part.nil?
    url = "/#{CGI.escape(snip_name)}"
    url += "/#{CGI.escape(part)}" if part
    url
  end

  def render_snip(snip)
    snip_renderer = SnipRenderer.new
    context = view_context.instance_eval { binding }
    snip_renderer.render(snip, context)
  end

  def layout_for(snip)
    default_layout = (snip.render_as == 'Blog') ? 'blog' : 'application'
    snip.layout ? snip.layout.sub(/-layout$/, '') : default_layout
  end

  def soup
    Site::Application.soup
  end

  def externalise_links(content)
    content.gsub(/(href|src)="([^"]*)"/) do
      externalised_link($1, '"', $2)
    end.gsub(/(href|src)='([^']*)'/) do
      externalised_link($1, "'", $2)
    end
  end

  def externalised_link(type, quote, link)
    if link =~ /^http/
      "#{type}=#{quote}#{link}#{quote}"
    else
      absolute_link = "http://#{@domain}" + (link =~ /^\// ? "" : "/") + link
      "#{type}=#{quote}#{absolute_link}#{quote}"
    end
  end
end
