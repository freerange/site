require 'vanilla/dynasnip'

class ShowContentInPreTag < Dynasnip
  snip_name "pre"

  usage %|
    Wraps the contents of the given snip in &lt;pre&gt; tags, e.g.

      {pre my_snip}

    You can specify a part to render in pre tags, should you wish:

      {pre my_snip,specific_part}
  |

  def handle(snip_name, part=:content)
    %{<pre>#{app.soup[snip_name].__send__(part || :content)}</pre>}
  end

  self
end