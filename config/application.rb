require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Starterapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.autoload_paths += %W(#{config.root}/lib)

    config.assets.precompile += %w(flatly.js flatly.css)
    config.secret_token = '2f9b48d028a423b32901a3a560237ffa9141f57630e803daf98d161e96273e38d4f4b7656993e3d15a05db02b5e1db1909e5d2cd9090023a38b54175d00be921'

    config.generators do |g|
      g.helper false
      g.stylesheets false
      g.javascripts false
      g.test_framework :rspec
    end
  end
end
