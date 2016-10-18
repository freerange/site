require "vanilla/dynasnip"

class Feed < Dynasnip
  def handle(*args)
    app.atom_feed({
      :domain => "gofreerange.com", # change this
      :title => "Go Free Range Blog", # and this,
      :matching => {:kind => "blog"}, # but probably not this, although you can if you like.
      :count => 10
    })
  end
  self
end

:render_as: Ruby