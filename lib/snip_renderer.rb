class SnipRenderer
  def render(snip, context)
    formats = []
    formats << 'erb' if snip.erb
    formats << 'markdown' if snip.extension == 'markdown'

    formats.inject(snip.content) do |content, format|
      case format
      when 'erb'
        ERB.new(content).result(context)
      when 'markdown'
        Kramdown::Document.new(content, input: 'GFM', syntax_highlighter: 'rouge', hard_wrap: false).to_html
      else
        content
      end
    end
  end
end
