require 'snip_renderer'

module ApplicationHelper
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

  def day_of_week
    Date.today.strftime('%a').downcase
  end

  def include_snip(name)
    snip = Snip.find(name)
    snip_renderer = SnipRenderer.new
    html = snip_renderer.render(snip, binding)
    html.html_safe
  end

  def member(name)
    snip = Person.find(name)
    render partial: 'shared/member', locals: { member: snip }
  end

  def project(name)
    snip = Project.find(name)
    render partial: 'shared/project', locals: { project: snip }
  end

  def by(name)
    initials = name.split('-').map(&:first).join.upcase
    link = link_to(initials, url_to(name))
    "<em>&mdash; #{link}</em>".html_safe
  end

  def externalise_links(content)
    content.gsub(/(href|src)="([^"]*)"/) do
      externalised_link($1, '"', $2)
    end.gsub(/(href|src)='([^']*)'/) do
      externalised_link($1, "'", $2)
    end
  end

  def externalised_link(type, quote, link)
    if link =~ /^http/
      "#{type}=#{quote}#{link}#{quote}"
    else
      absolute_link = "http://#{@domain}" + (link =~ /^\// ? "" : "/") + link
      "#{type}=#{quote}#{absolute_link}#{quote}"
    end
  end

  def link_to_snip(snip)
    link_to(snip.page_title, url_to(snip.name))
  end

  # CSS Naked Day is supposed to last for 48 hours because it's April 9th
  # somewhere in the world for that period of time. This is the best I've
  # come up with based on the furthest UTC offsets on April 9th.
  # https://css-naked-day.github.io
  # https://en.wikipedia.org/wiki/List_of_UTC_time_offsets
  def css_naked_day?
    css_naked_day = Date.parse('April 9').to_time
    css_naked_day_earliest = css_naked_day.beginning_of_day.utc - 11.hours
    css_naked_day_latest = css_naked_day.end_of_day.utc + 13.hours

    Time.zone.now.between?(css_naked_day_earliest, css_naked_day_latest)
  end
end
