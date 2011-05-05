require 'vanilla/dynasnip'

class Index < Dynasnip
  def get(*args)
    list = app.soup.instance_eval { @backend }.send(:all_snips).sort_by { |a| a.updated_at || Time.at(0) }.reverse.map { |snip|
      "<li>#{link_to snip.name}</li>"
    }
    "<ol>#{list}</ol>"
  end

  self
end