require 'vanilla/dynasnip'

class BodyClass < Dynasnip
  def handle(*args)
    return "" unless app.request.snip
    case app.request.snip.kind
    when "blog", "draft"
      "blog"
    when "project"
      "project"
    else
      ""
    end
  end
  self
end