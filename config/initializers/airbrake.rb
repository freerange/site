if Rails.env.production?
  Airbrake.configure do |config|
    config.api_key = ENV.fetch('AIRBRAKE_API_KEY')
    config.host    = ENV.fetch('AIRBRAKE_HOST')
    config.port    = 443
    config.secure  = config.port == 443
  end
end
