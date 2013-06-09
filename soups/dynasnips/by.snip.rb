class By < Dynasnip
  def handle(person=nil)
    if person
      initials = person.split("-").map(&:first).join
      "<em>&mdash; {l #{person}, #{initials.upcase}}</em>"
    else
      app.response.status = 404
      %{Not found}
    end
  end

  self
end
