require "vanilla/dynasnip"

class Feed < Dynasnip
  def handle(*args)
    app.atom_feed({
      :domain => "gofreerange.com",
      :title => "Go Free Range Blog",
      :snips => %w(blog show-and-tell).flat_map { |k| app.soup[:kind => k] }.reject { |s| s.draft },
      :count => 10
    })
  end
  self
end

:render_as: Ruby
