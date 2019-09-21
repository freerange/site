require 'snip_renderer'

class PagesController < ApplicationController
  include ERB::Util

  helper_method :url_to, :render_snip

  ROOT_SNIP_NAME = 'start'.freeze

  def show
    name = params.permit(:path)[:path]
    @snip = name.present? ? Snip.find(name) : Snip.find(ROOT_SNIP_NAME)
    @author = Snip.find_by_name(@snip.author)
    respond_to do |format|
      format.html do
        html = render_snip(@snip)
        layout = layout_for(@snip)
        render html: html.html_safe, layout: layout
      end
    end
  end

  def feed
    @domain = 'gofreerange.com'
    @snips = Bloggable.all.sort_by { |s| s.updated_at }.reverse.take(10)
  end

  def sitemap
    @domain = 'gofreerange.com'
    @snips = Snip.all(only_pages: true)
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
