class PagesController < ApplicationController
  def show
    name = params.permit(:path)[:path]
    @snip = soup[name]
    @author = soup[@snip.author]
    html = Kramdown::Document.new(@snip.content).to_html
    render html: html.html_safe, layout: 'blog'
  end

  private

  def soup
    @soup ||= begin
      backends = %w(weeknotes people).map do |path|
        Soup::Backends::FileBackend.new(Rails.root.join("soups/#{path}"))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end
  end
end
