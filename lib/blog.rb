require 'vanilla/renderers/base'

module Vanilla::Renderers
  class Blog < Base
    def default_layout_snip
      soup['blog-layout']
    end

    def prepare(snip, part=:content, args=[], enclosing_snip=snip)
      @snip = snip
    end

    def process_text(content)
      renderer = Vanilla::Renderers.const_get(@snip.written_with).new(@app)
      entry_content = renderer.render(@snip)
      author = @app.soup[@snip.author]
      author_name = author.name.split("-").map { |s| s.capitalize }.join(" ")
      author_image = author.image
      template = @app.soup['blog-template']
      @app.render(template).gsub("ENTRY_CONTENT", entry_content).gsub("ENTRY_AUTHOR_IMAGE", author_image).gsub("ENTRY_AUTHOR", author_name).gsub("ENTRY_DATE", article_date(@snip.created_at))
    end
    
    def article_date(time)
      suffix = case time.day.to_s.match(/(\d$)/)[0]
      when "1"
        "st"
      when "2"
        "nd"
      when "3"
        "rd"
      else
        "th"
      end
        
      time.strftime("%A %d#{suffix} %B")
    end
  end
end
