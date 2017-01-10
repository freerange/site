class PagesController < ApplicationController
  def show
    name = params.permit(:path)[:path]
    @snip = soup[name]
    @author = soup[@snip.author]
    html = Kramdown::Document.new(@snip.content).to_html
    layout = @snip.layout.sub(/-layout$/, '')
    render html: html.html_safe, layout: layout
  end

  private

  def soup
    @soup ||= begin
      backends = %w(weeknotes weeklinks blog show-and-tell people).map do |path|
        Soup::Backends::FileBackend.new(Rails.root.join("soups/#{path}"))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end
  end
end
