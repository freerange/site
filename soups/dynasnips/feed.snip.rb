require "vanilla/dynasnip"

class Feed < Dynasnip
  def handle(*args)
    app.atom_feed({
      :domain => "gofreerange.com",
      :title => "Go Free Range Blog",
      :matching => {:kind => "blog"},
      :count => 10
    })
  end
  self
end

:render_as: Ruby
