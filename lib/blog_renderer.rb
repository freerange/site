require 'vanilla/renderers/base'

module Vanilla::Renderers
  class BlogRenderer < Base
    def prepare(snip, part=:content, args=[], enclosing_snip=snip)
      @snip = snip
    end

    def process_text(content)
      renderer = Vanilla::Renderers.const_get(@snip.written_with).new(@app)
      entry_content = renderer.render(@snip)
      author = @snip.author
      template = @app.soup['blog-template']
      @app.render(template).gsub("ENTRY_CONTENT", entry_content).gsub("ENTRY_AUTHOR", author)
    end
  end
end
