require 'vanilla/dynasnip'

class PageTitle < Dynasnip
  def handle
    app.request.snip.page_title || app.request.snip.name
  end

  self
end