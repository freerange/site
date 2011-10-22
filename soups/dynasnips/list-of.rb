require 'vanilla/dynasnip'

class ListOf < Dynasnip
  def handle(options)
    options = {:element => 'ul'}.merge(options)

    kind = options[:kind]
    limit = options[:limit]
    el = options[:element]

    entries = soup[:kind => kind].sort_by { |e| e.created_at }.reverse
    entries = entries[0..limit.to_i] unless limit == nil

    value = entries.length + 1

    "<#{el} class='" + kind + "_list' reversed>" + entries.map do |entry|
      title = entry.content.split("\n").first
      url = url_to(entry.name)
      value -= 1
      %{<li value="#{value}"><a href="#{url}">#{title}</a></li>}
    end.join + "</#{el}>"
  end
  self
end