unless Rails.env.production?
  require 'timecop'
  time_now = ENV['TIME_NOW']
  Timecop.freeze(Time.parse(time_now)) if time_now
end
