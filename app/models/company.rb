class Company
  def initialize(incorporation_date:)
    @incorporation_date = incorporation_date
  end

  GoFreeRange = new(incorporation_date: Date.parse('2009-01-13'))

  def week_number_for(date)
    days_since_incorporation = date.monday - @incorporation_date.monday
    (days_since_incorporation / 7.0).to_i
  end

  def week_numbers_and_dates
    current_week_number = week_number_for(Date.today)

    (0..current_week_number).map do |week_number|
      monday_in_week = @incorporation_date.monday + (week_number * 7)
      [week_number, monday_in_week]
    end
  end
end
