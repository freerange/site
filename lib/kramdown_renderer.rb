require 'vanilla/renderers/base'
require 'kramdown/document'

class KramdownRenderer < ::Vanilla::Renderers::Base
  def process_text(content)
    Kramdown::Document.new(content).to_html
  end
end