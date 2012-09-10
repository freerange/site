$: << File.dirname(__FILE__)

require "application"
require "vanilla/static"
require "rack/contrib/mailexceptions"

use Vanilla::Static, File.join(File.dirname(__FILE__), "public")
use Rack::Static, :urls => ["/recap/docs"], :root => "/home/freerange/docs/recap"
use Rack::Static, :urls => ["/mocha/docs"], :root => "/home/freerange/docs/mocha"

use Rack::MailExceptions do |mail|
  mail.to         "everyone@gofreerange.com"
  mail.from       "Exception Notifier <exceptions@gofreerange>"
  mail.subject    "[gofreerange.com] %s"
  mail.smtp({
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gofreerange.com",
    :user_name            => "exceptions@gofreerange.com",
    :password             => ENV["SMTP_PASSWORD"],
    :authentication       => "plain",
    :enable_starttls_auto => true
  })
end

run Application.new
