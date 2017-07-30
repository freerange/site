class Company
  def initialize(incorporation_date:)
    @incorporation_date = incorporation_date
  end

  GoFreeRange = new(incorporation_date: Date.parse('2009-01-13'))

  def week_number_for(date)
    monday_beginning_this_week = date.monday
    days_since_incorporation = monday_beginning_this_week - monday_beginning_the_week_of_incorporation
    days_since_incorporation / 7.0
  end

  def week_numbers_and_dates
    current_week_number = week_number_for(Date.today).to_i

    (0..current_week_number).map do |week_number|
      monday_in_week = monday_beginning_the_week_of_incorporation + (week_number * 7)
      [week_number, monday_in_week]
    end
  end

  private

  def monday_beginning_the_week_of_incorporation
    @incorporation_date.monday
  end
end
