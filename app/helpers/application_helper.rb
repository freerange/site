module ApplicationHelper
  def article_date(time)
    suffix = case time.day
    when 1, 21, 31
      "st"
    when 2, 22
      "nd"
    when 3, 23
      "rd"
    else
      "th"
    end

    time.strftime("%A %d#{suffix} %B, %Y")
  end

  def list_of(options={})
    options = {:element => 'ul'}.merge(options)

    if kind = options[:kind]
      limit = options[:limit]
      el = options[:element]
      kinds = kind.split(',')

      entries = kinds.flat_map { |k| @soup[:kind => k] }.reject { |s| s.draft }.sort_by { |e| e.created_at }.reverse
      entries = entries[0..limit.to_i] unless limit == nil

      value = entries.length + 1

      html = "<#{el} class='" + kinds.first + "_list' reversed>" + entries.map do |entry|
        title = entry.content.split("\n").first
        url = url_to(entry.name)
        value -= 1
        %{<li value="#{value}"><a href="#{url}">#{title}</a></li>}
      end.join + "</#{el}>"
      html.html_safe
    else
      raise 'No kind specified'
    end
  end

  def url_to(snip_name)
    @soup[snip_name] ? "/#{snip_name}" : "[Snip '#{snip_name}' not found]"
  end

  def body_class(snip)
    return "" unless snip
    case snip.kind
    when "blog", "draft"
      "blog"
    when "project"
      "project"
    else
      ""
    end
  end
end
