# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

require 'spider'

namespace :spec do
  namespace 'regression' do
    namespace 'artefacts' do
      desc 'Clear regression test artefacts'
      task 'clear' => 'environment' do
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
    week_number = Company::GoFreeRange.week_number_for(date)
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
      template = Template.find('week-nnn')

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date))

      Weeknotes.create(template.attributes.merge({
        name: "week-#{week_number}",
        extension: "markdown",
        author: Person.current_name,
        created_at: Time.now,
        updated_at: Time.now,
        page_title: "Week #{week_number}",
        content: template.content.gsub(/Week NNN/, "Week #{week_number}")
      }))
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
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date))
      snip_name = "week-#{week_number}"
      snip = Weeknotes.find(snip_name)

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
      template = Template.find('week-nnn-links')

      date = Date.parse(ENV['DATE']) rescue Date.today
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date))

      Weeklinks.create(template.attributes.merge({
        name: "week-#{week_number}-links",
        extension: "markdown",
        author: Person.current_name,
        created_at: Time.now,
        updated_at: Time.now,
        page_title: "Week #{week_number} - Interesting links",
        content: template.content.gsub(/Week NNN/, "Week #{week_number}")
      }))
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
      week_number = (ENV['WEEK'] || Company::GoFreeRange.week_number_for(date))
      snip_name = "week-#{week_number}-links"
      snip = Weeklinks.find(snip_name)

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
  task create: :environment do
    template = Template.find('show-and-tell-nn')

    event_number = (ENV['NUMBER'] || ShowAndTell.latest_event_number + 1).to_i

    ShowAndTell.create(template.attributes.merge({
      name: "show-and-tell-#{event_number}",
      extension: "markdown",
      author: Person.current_name,
      created_at: Time.now,
      updated_at: Time.now,
      page_title: "Show and Tell #{event_number}",
      content: template.content.gsub(/Show and Tell NN/, "Show and Tell #{event_number}")
    }))
  end

  desc <<-DESC
  Prepares the latest show-and-tell snip for publication.

  By default it calculates the latest event number based on existing
  show-and-tell snips, but you can override that by supplying an
  event number in the NUMBER environment variable.

  If a show-and-tell snip for the relevant number does not exist,
  it will exit with an error message.
  DESC
  task publish: :environment do
    event_number = (ENV['NUMBER'] || ShowAndTell.latest_event_number + 1).to_i
    snip_name = "show-and-tell-#{event_number}"
    snip = ShowAndTell.find(snip_name)
    unless snip
      abort "No show-and-tell snip found for event number #{event_number}"
    end

    snip.attributes.delete(:draft)
    snip.created_at = Time.now
    snip.updated_at = Time.now
    snip.save
  end
end
