class SnipRenderer
  def render(snip, context)
    content = ERB.new(snip.content).result(context)
    case snip.extension
    when 'markdown'
      Kramdown::Document.new(content, input: 'GFM', syntax_highlighter: 'rouge').to_html
    else
      content
    end
  end
end
