require 'vanilla/renderers/base'
require 'kramdown/document'

module Vanilla::Renderers
  class Kramdown < Base
    def process_text(content)
      ::Kramdown::Document.new(content).to_html
    end
  end
end
