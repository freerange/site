task :default => :test

require "rake/testtask"
desc 'Run tests (excluding regression test)'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"].exclude("test/regression_test.rb")
  t.verbose = true
end

namespace :test do
  Rake::TestTask.new('regression' => 'regression:artefacts:generate') do |t|
    t.description = 'Run regression test'
    t.libs << "test"
    t.test_files = FileList["test/regression_test.rb"]
    t.verbose = true
  end

  namespace 'regression' do
    $:.unshift File.join(File.dirname(__FILE__), *%w[lib])
    require 'spider'

    ROOT_PATH = Pathname.new(File.expand_path('..', __FILE__))
    ARTEFACTS_PATH = ROOT_PATH.join('artefacts')

    namespace 'artefacts' do
      desc 'Clear regression test artefacts'
      task 'clear' do
        FileUtils.rm_rf(ARTEFACTS_PATH)
      end

      desc 'Generate regression test artefacts'
      task 'generate' => 'clear' do
        spider = Spider.new(artefacts_path: ARTEFACTS_PATH)
        spider.run
        system(%{find #{ARTEFACTS_PATH} -type f -name '*.html' -depth 1 -exec tidy -m --wrap 0 --sort-attributes alpha --indent auto {} \\;})
        system(%{find #{ARTEFACTS_PATH} -type f -name '*.xml' -depth 1 -exec tidy -m --wrap 0 --sort-attributes alpha --indent auto --input-xml 1 {} \\;})
      end
    end
  end
end

require "date"

def monday_beginning_the_week_of_incorporation
  # Tuesday 13th Jan 2009
  incorporation_date = Date.parse('2009-01-13')
  monday_beginning(incorporation_date)
end

def monday_beginning(date)
  # The `+1` is to deal with `#wday` being 0 based and starting from Sunday
  date - date.wday + 1
end

def weeks_since_incorporation(date)
  monday_beginning_this_week = monday_beginning(date)
  days_since_incorporation = monday_beginning_this_week - monday_beginning_the_week_of_incorporation
  days_since_incorporation / 7.0
end

def week_numbers_and_dates
  current_week_number = weeks_since_incorporation(Date.today).to_i

  (0..current_week_number).map do |week_number|
    monday_in_week = monday_beginning_the_week_of_incorporation + (week_number * 7)
    [week_number, monday_in_week]
  end
end

require "erb"
require_relative "application"

USERNAMES_VS_AUTHORS = {
  'jamesmead' => 'james-mead',
  'chrisroos' => 'chris-roos',
  'chrislowis' => 'chris-lowis'
}

def existing_show_and_tell_event_numbers
  app = Application.new
  app.soup.all_snips.map(&:name).map { |n| (/^show-and-tell-(\d+)$/.match(n) || [])[1] }.compact.map(&:to_i)
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

  desc <<-DESC
  Displays a list of GFR week numbers and dates from the date of incorporation.
  DESC
  task :numbers_and_dates do
    week_numbers_and_dates.each do |(week_number, date)|
      puts "Week #{week_number} begins #{date.strftime('%a %d %b %Y')}"
    end
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

      snip.attributes.delete(:draft)
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

      snip.attributes.delete(:draft)
      snip.created_at = Time.now
      snip.updated_at = Time.now
      snip.save
    end
  end
end

namespace 'show-and-tell' do
  desc <<-DESC
  Creates a new show-and-tell snip.

  By default it calculates the new event number based on existing
  show-and-tell snips, but you can override that by supplying an
  event number in the NUMBER environment variable.
  DESC
  task :create do
    app = Application.new
    snip = app.soup['show-and-tell-nn']

    next_event_number = existing_show_and_tell_event_numbers.max + 1
    event_number = (ENV['NUMBER'] || next_event_number).to_i
    username = `whoami`.chomp
    author = USERNAMES_VS_AUTHORS.fetch(username)

    snip.author = author
    snip.created_at = Time.now
    snip.updated_at = Time.now
    snip.page_title = "Show and Tell #{event_number}"
    snip.name = "show-and-tell-#{event_number}"
    snip.content.gsub!(/Show and Tell NN/, "Show and Tell #{event_number}")
    snip.save
  end

  desc <<-DESC
  Prepares the latest show-and-tell snip for publication.

  By default it calculates the latest event number based on existing
  show-and-tell snips, but you can override that by supplying an
  event number in the NUMBER environment variable.

  If a show-and-tell snip for the relevant number does not exist,
  it will exit with an error message.
  DESC
  task :publish do
    app = Application.new

    latest_event_number = existing_show_and_tell_event_numbers.max
    event_number = (ENV['NUMBER'] || latest_event_number).to_i
    snip_name = "show-and-tell-#{event_number}"
    snip = app.soup[snip_name]
    unless snip
      abort "No show-and-tell snip found for event number #{event_number}"
    end

    snip.attributes.delete(:draft)
    snip.created_at = Time.now
    snip.updated_at = Time.now
    snip.save
  end
end
