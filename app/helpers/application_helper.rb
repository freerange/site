require 'snip_renderer'

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

      entries = kinds.flat_map { |k| Site::Application.soup[:kind => k] }.reject { |s| s.draft }.sort_by { |e| e.created_at }.reverse
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

  def tagline
    options = [
     "We are exceptionally talented &amp; experienced software developers.",
     "We are a crack team of kick-ass <em>space engineers</em>.",
     "We hunt <em>web-ninjas</em> and <em>code-rockstars</em> before breakfast, and build software from their bones and stringy bits.",
     "We use computers and our <em>indomitable</em> will to transform <em>pure thought</em> into <em>digital magic</em>.",
     "We make digital stuff.<br>You know, clicky things.",
     "We build the crystal cities of the future.",
     "We invented the Internet.<br>OK, not really, but we're pretty good at it.",
     "We deliver software, hewn from <em>pure thought</em>, using a pickaxe made of <em>inspiration</em>.",
     "We are the unicorn-riding horsemen of the <em>awesome</em>pocalypse."
    ]
    index = ENV['TAGLINE_INDEX'] || rand(options.length)
    html = options[index.to_i]
    html.html_safe
  end

  def include_snip(name)
    snip = Site::Application.soup[name]
    if snip.nil?
      raise "Snip included within '#{@snip.name}' not found: '#{name}'"
    end
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
end
