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

require "erb"
require_relative "application"

USERNAMES_VS_AUTHORS = {
  'jamesmead' => 'james-mead',
  'chrisroos' => 'chris-roos'
}

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

  namespace :notes do
    desc <<-DESC
    Creates a new weeknotes snip for the current GFR week.

    By default it calculates the GFR week number based on today's
    date, but you can override that either by supplying a parseable
    date in the DATE environment variable or by setting the WEEK
    environment variable to the GFR week number.
    DESC
    task :create do
      app = Application.new
      snip = app.soup['week-nnn']

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || weeks_since_incorporation(date)).to_i
      username = `whoami`.chomp
      author = USERNAMES_VS_AUTHORS.fetch(username)

      snip.author = author
      snip.created_at = Time.now
      snip.updated_at = Time.now
      snip.page_title = "Week #{week_number}"
      snip.name = "week-#{week_number}"
      snip.content.gsub!(/Week NNN/, "Week #{week_number}")
      snip.save
    end

    desc <<-DESC
    Prepares the current weeknotes snip for publication.

    By default it calculates the GFR week number based on today's
    date, but you can override that either by supplying a parseable
    date in the DATE environment variable or by setting the WEEK
    environment variable to the GFR week number.

    If a weeknotes snip for the relevant GFR week does not exist,
    it will exit with an error message.
    DESC
    task :publish do
      app = Application.new

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || weeks_since_incorporation(date)).to_i
      snip_name = "week-#{week_number}"
      snip = app.soup[snip_name]
      unless snip
        abort "No weeknotes snip found for GFR week number #{week_number}"
      end

      snip.kind = 'blog'
      snip.created_at = Time.now
      snip.updated_at = Time.now
      snip.save
    end
  end

  namespace :links do
    desc <<-DESC
    Creates a new weeklinks snip for the current GFR week.

    By default it calculates the GFR week number based on today's
    date, but you can override that either by supplying a parseable
    date in the DATE environment variable or by setting the WEEK
    environment variable to the GFR week number.
    DESC
    task :create do
      app = Application.new
      snip = app.soup['week-nnn-links']

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || weeks_since_incorporation(date)).to_i
      username = `whoami`.chomp
      author = USERNAMES_VS_AUTHORS.fetch(username)

      snip.author = author
      snip.created_at = Time.now
      snip.updated_at = Time.now
      snip.page_title = "Week #{week_number} - Interesting links"
      snip.name = "week-#{week_number}-links"
      snip.content.gsub!(/Week NNN/, "Week #{week_number}")
      snip.save
    end

    desc <<-DESC
    Prepares the current weeklinks snip for publication.

    By default it calculates the GFR week number based on today's
    date, but you can override that either by supplying a parseable
    date in the DATE environment variable or by setting the WEEK
    environment variable to the GFR week number.

    If a weeklinks snip for the relevant GFR week does not exist,
    it will exit with an error message.
    DESC
    task :publish do
      app = Application.new

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || weeks_since_incorporation(date)).to_i
      snip_name = "week-#{week_number}-links"
      snip = app.soup[snip_name]
      unless snip
        abort "No weeklinks snip found for GFR week number #{week_number}"
      end

      snip.kind = 'blog'
      snip.created_at = Time.now
      snip.updated_at = Time.now
      snip.save
    end
  end
end
