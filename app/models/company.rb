class Company
  attr_reader :incorporated_on

  def initialize(incorporated_on:)
    @incorporated_on = incorporated_on
  end

  GoFreeRange = new(incorporated_on: Date.parse('2009-01-13'))

  def week_number_for(date)
    days_since_incorporation = date.monday - @incorporated_on.monday
    (days_since_incorporation / 7.0).to_i
  end

  def week_numbers_and_dates(last_date: Date.today)
    current_week_number = week_number_for(last_date)

    (0..current_week_number).map do |week_number|
      monday_in_week = @incorporated_on.monday + (week_number * 7)
      [week_number, monday_in_week]
    end
  end
end
