class PagesController < ApplicationController
  def show
    path = Rails.root.join('soups/weeknotes')
    backend = Soup::Backends::FileBackend.new(path)
    soup = Soup.new(backend)
    name = params.permit(:path)[:path]
    snip = soup[name]
    html = Kramdown::Document.new(snip.content).to_html
    render html: html.html_safe
  end
end
