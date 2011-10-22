require 'vanilla/dynasnip'

class PageTitle < Dynasnip

  def handle(default = nil)
    app.request.snip.page_title || default
  end

  self
end