class By < Dynasnip
  def handle(person)
    initials = person.split("-").map(&:first).join
    "<em>&mdash; {l #{person}, #{initials.upcase}}</em>"
  end

  self
end
