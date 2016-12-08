require 'vanilla/dynasnip'

class ListOf < Dynasnip
  def handle(options={})
    options = {:element => 'ul'}.merge(options)

    if kind = options[:kind]
      limit = options[:limit]
      el = options[:element]
      kinds = kind.split(',')

      entries = kinds.flat_map { |k| soup[:kind => k] }.sort_by { |e| e.created_at }.reverse
      entries = entries[0..limit.to_i] unless limit == nil

      value = entries.length + 1

      "<#{el} class='" + kinds.first + "_list' reversed>" + entries.map do |entry|
        title = entry.content.split("\n").first
        url = url_to(entry.name)
        value -= 1
        %{<li value="#{value}"><a href="#{url}">#{title}</a></li>}
      end.join + "</#{el}>"
    else
      app.response.status = 404
      %{Not found}
    end
  end
  self
end
