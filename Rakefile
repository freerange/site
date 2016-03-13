task :default => :test

require "rake/testtask"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.ruby_opts << "-rubygems"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

require "date"

def monday_beginning(date)
  # The `+1` is to deal with `#wday` being 0 based and starting from Sunday
  date - date.wday + 1
end

def weeks_since_incorporation(date)
  # Tuesday 13th Jan 2009
  incorporation_date = Date.parse('2009-01-13')
  monday_beginning_the_week_of_incorporation = monday_beginning(incorporation_date)
  monday_beginning_this_week = monday_beginning(date)
  days_since_incorporation = monday_beginning_this_week - monday_beginning_the_week_of_incorporation
  days_since_incorporation / 7.0
end

namespace :week do
  desc <<-DESC
  Displays the GFR week number from the date of incorporation.

  It defaults to today's date but you can override that by supplying
  a parseable date in the DATE environment variable.

  Example: `DATE=2014-03-24 rake week:number`
  => Week beginning 24 Mar 2014 is week 271
  DESC
  task :number do
    date = Date.parse(ENV['DATE']) rescue Date.today
    week_number = weeks_since_incorporation(date).to_i
    week_beginning = monday_beginning(date).strftime("%d %b %Y")

    puts "Week beginning #{week_beginning} is week #{week_number}"
  end
end
