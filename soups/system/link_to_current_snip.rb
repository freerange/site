require 'vanilla/dynasnip'

class LinkToCurrentSnip < Dynasnip
  usage %|
    Renders a link to the current snip, or the snip currently being edited
    (if we're currently editing)
  |

  def handle(*args)
    link_to app.request.snip_name
  end

  self
end