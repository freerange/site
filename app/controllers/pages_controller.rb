require 'snip_renderer'

class PagesController < ApplicationController
  include ERB::Util

  helper_method :url_to, :render_snip

  ROOT_SNIP_NAME = 'start'.freeze

  def show
    name = params.permit(:path)[:path]
    @snip = name.present? ? Snip.find(name) : Snip.find(ROOT_SNIP_NAME)
    @author = Snip.find_by_name(@snip.author)
    html = render_snip(@snip)
    layout = layout_for(@snip)
    render html: html.html_safe, layout: layout
  end

  def feed
    @domain = 'gofreerange.com'
    @snips = Bloggable.all.sort_by { |s| s.updated_at }.reverse.take(10)
  end

  def sitemap
    @domain = 'gofreerange.com'
    @snips = Snip.all(only_pages: true)
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
end
