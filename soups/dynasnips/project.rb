require 'vanilla/dynasnip'

class Project < Dynasnip
  def handle(name=nil)
    if name
      piece = app.soup[name]
      template = app.soup["project"].template

      if piece.images
        images_html = piece.images.map do |image_url|
          %{<li><img src="/images/folio/#{image_url}" /></li>}
        end.join
      else
        images_html = ""
      end

      template.gsub("NAME", piece.display_name).
               gsub("IMAGES", images_html).
               gsub("CONTENT", app.render(piece))
    else
      app.response.status = 404
      %{Not found}
    end
  end
  self
end

:template: |
  <div class="project-desc">
    <h3>NAME</h3>
    CONTENT
  </div>