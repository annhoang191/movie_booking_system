require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module MovieBooking
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.default_locale = :vi
    config.assets.compile = true
    config.generators do |g|
      g.test_framework  :rspec, :fixture => false
      g.view_specs      false
      g.helper_specs    false
    end
  end
end
