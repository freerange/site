Date::DATE_FORMATS[:full_ordinal] = -> date do
  date.strftime("%A #{ActiveSupport::Inflector.ordinalize(date.day)} %B, %Y")
end
