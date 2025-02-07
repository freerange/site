class SnipRenderer
  def render(snip, context)
    content = ERB.new(snip.content).result(context)
    case snip.extension
    when 'markdown'
      Kramdown::Document.new(content, input: 'GFM').to_html
    else
      content
    end
  end
end
