# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

require 'rspec/core/rake_task'
require 'spider'

namespace :spec do
  namespace 'regression' do
    namespace 'artefacts' do
      desc 'Clear regression test artefacts'
      task 'clear' do
        spider = Spider.new
        spider.clear_artefacts
      end

      desc 'Generate regression test artefacts'
      task 'generate' => 'clear' do
        spider = Spider.new
        spider.run
        spider.normalize_artefacts
      end
    end
  end
end

require "erb"

USERNAMES_VS_AUTHORS = {
  'jamesmead' => 'james-mead',
  'chrisroos' => 'chris-roos',
  'chrislowis' => 'chris-lowis'
}

def existing_show_and_tell_event_numbers
  Site::Application.show_and_tell_events.all_snips.map(&:name).map { |n| (/^show-and-tell-(\d+)$/.match(n) || [])[1] }.compact.map(&:to_i)
end

templates = Site::Application.templates
weeknotes = Site::Application.weeknotes_pages
weeklinks = Site::Application.weeklinks_pages
showandtell = Site::Application.show_and_tell_events

namespace :week do
  desc <<-DESC
  Displays the GFR week number from the date of incorporation.

  It defaults to today's date but you can override that by supplying
  a parseable date in the DATE environment variable.

  Example: `DATE=2014-03-24 rake week:number`
  => Week beginning 24 Mar 2014 is week 271
  DESC
  task number: :environment do
    date = Date.parse(ENV['DATE']) rescue Date.today
    week_number = Company::GoFreeRange.week_number_for(date).to_i
    week_beginning = date.monday.strftime("%d %b %Y")

    puts "Week beginning #{week_beginning} is week #{week_number}"
  end

  desc <<-DESC
  Displays a list of GFR week numbers and dates from the date of incorporation.
  DESC
  task numbers_and_dates: :environment do
    Company::GoFreeRange.week_numbers_and_dates.each do |(week_number, date)|
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
    task create: :environment do
      template = templates['week-nnn']

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date)).to_i
      username = `whoami`.chomp
      author = USERNAMES_VS_AUTHORS.fetch(username)

      weeknotes << template.attributes.merge({
        name: "week-#{week_number}",
        extension: "markdown",
        author: author,
        created_at: Time.now,
        updated_at: Time.now,
        page_title: "Week #{week_number}",
        content: template.content.gsub(/Week NNN/, "Week #{week_number}")
      })
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
    task publish: :environment do
      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date)).to_i
      snip_name = "week-#{week_number}"
      snip = weeknotes[snip_name]
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
    task create: :environment do
      template = templates['week-nnn-links']

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date)).to_i
      username = `whoami`.chomp
      author = USERNAMES_VS_AUTHORS.fetch(username)

      weeklinks << template.attributes.merge({
        name: "week-#{week_number}-links",
        extension: "markdown",
        author: author,
        created_at: Time.now,
        updated_at: Time.now,
        page_title: "Week #{week_number} - Interesting links",
        content: template.content.gsub(/Week NNN/, "Week #{week_number}")
      })
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
    task publish: :environment do
      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date)).to_i
      snip_name = "week-#{week_number}-links"
      snip = weeklinks[snip_name]
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
    template = templates['show-and-tell-nn']

    next_event_number = existing_show_and_tell_event_numbers.max + 1
    event_number = (ENV['NUMBER'] || next_event_number).to_i
    username = `whoami`.chomp
    author = USERNAMES_VS_AUTHORS.fetch(username)

    showandtell << template.attributes.merge({
      name: "show-and-tell-#{event_number}",
      extension: "markdown",
      author: author,
      created_at: Time.now,
      updated_at: Time.now,
      page_title: "Show and Tell #{event_number}",
      content: template.content.gsub(/Show and Tell NN/, "Show and Tell #{event_number}")
    })
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
    latest_event_number = existing_show_and_tell_event_numbers.max
    event_number = (ENV['NUMBER'] || latest_event_number).to_i
    snip_name = "show-and-tell-#{event_number}"
    snip = showandtell[snip_name]
    unless snip
      abort "No show-and-tell snip found for event number #{event_number}"
    end

    snip.attributes.delete(:draft)
    snip.created_at = Time.now
    snip.updated_at = Time.now
    snip.save
  end
end
