class PagesController < ApplicationController
  def show
    name = params.permit(:path)[:path]
    @snip = name.present? ? soup[name] : soup['start']
    @author = soup[@snip.author]
    context = view_context.instance_eval { binding }
    content = ERB.new(@snip.content).result(context)
    html = case @snip.extension
    when 'haml'
      Haml::Engine.new(content).render
    when 'markdown'
      Kramdown::Document.new(content).to_html
    else
      content
    end
    default_layout = (@snip.render_as == 'Blog') ? 'blog' : 'application'
    layout = @snip.layout ? @snip.layout.sub(/-layout$/, '') : default_layout
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
        soups/projects
      )
      backends = backend_dirs.map do |path|
        Soup::Backends::FileBackend.new(Rails.root.join(path))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end
  end
end
