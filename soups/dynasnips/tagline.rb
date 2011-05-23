class Tagline < Dynasnip

  def handle(*args)
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
    options[rand(options.length)]
  end

  self
end