class PagesController < ApplicationController
  def show
    name = params.permit(:path)[:path]
    @snip = soup[name]
    @author = soup[@snip.author]
    html = case @snip.extension
    when 'haml'
      Haml::Engine.new(@snip.content).render
    when 'markdown'
      Kramdown::Document.new(@snip.content).to_html
    else
      @snip.content
    end
    layout = @snip.layout ? @snip.layout.sub(/-layout$/, '') : 'application'
    render html: html.html_safe, layout: layout
  end

  private

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
      )
      backends = backend_dirs.map do |path|
        Soup::Backends::FileBackend.new(Rails.root.join(path))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end
  end
end
