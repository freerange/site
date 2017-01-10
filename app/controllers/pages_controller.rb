class PagesController < ApplicationController
  def show
    name = params.permit(:path)[:path]
    @snip = weeknotes[name]
    @author = people[@snip.author]
    @soup = weeknotes
    html = Kramdown::Document.new(@snip.content).to_html
    render html: html.html_safe, layout: 'blog'
  end

  private

  def weeknotes
    @weeknotes ||= Soup.new(Soup::Backends::FileBackend.new(Rails.root.join('soups/weeknotes')))
  end

  def people
    @people ||= Soup.new(Soup::Backends::FileBackend.new(Rails.root.join('soups/people')))
  end
end
