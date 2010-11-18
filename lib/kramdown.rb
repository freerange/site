require 'vanilla/renderers/base'
require 'kramdown/document'

class ::Vanilla::Renderers::Kramdown < ::Vanilla::Renderers::Base
  def process_text(content)
    Kramdown::Document.new(content).to_html
  end
end