class SnipRenderer
  def render(snip, context)
    content = ERB.new(snip.content).result(context)
    case snip.extension
    when 'haml'
      Haml::Engine.new(content).render
    when 'markdown'
      Kramdown::Document.new(content).to_html
    else
      content
    end
  end
end
