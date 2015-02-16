class By < Dynasnip
  def handle(*people)
    if people.any?
      attribution = people.map do |person|
        initials = person.split("-").map { |name| name[0] }.join
        "{l #{person}, #{initials.upcase}}"
      end.join(', ')
      "<em>&mdash; #{attribution}</em>"
    else
      app.response.status = 404
      %{Not found}
    end
  end

  self
end
