require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Parking
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Devise
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
    config.active_record.time_zone_aware_types = [:datetime, :time]
    config.active_record.default_timezone = :local

    config.time_zone = 'Brazil/East'
   
  end
end
