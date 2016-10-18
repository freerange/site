require 'vanilla/dynasnip'

class Member < Dynasnip
  def handle(name=nil)
    if name
      member = app.soup[name]
      template = app.soup["member"].template
      # TODO: produce hCard?
      template.gsub("NAME", member.name.split("-").map { |s| s.capitalize }.join(" ")).
               gsub("SITE", member.site).
               gsub("TWITTER", member.twitter).
               gsub("IMAGE", member.image).
               gsub("CONTENT", app.render(member))
    else
      app.response.status = 404
      %{Not found}
    end
  end
  self
end

:name: member
:template: |
  <img src="IMAGE" alt="Photo of NAME"/>
  <div class="info">
    <h3>NAME</h3>
    <p class="links"><a href="http://SITE">Website</a> / <a href="http://twitter.com/TWITTER">Twitter</a></p>
    <div class="bio">CONTENT</div>
  </div>
