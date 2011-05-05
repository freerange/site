require 'vanilla/dynasnip'

class LinkTo < Dynasnip
  usage %|
The link_to dyna lets you create links between snips: 

  {link_to blah} 

would insert a link to the blah snip.|

  def handle(snip_name, link_text=snip_name, part=nil)
    link_to(link_text, snip_name, part)
  end

  self
end