require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ideahunt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
	config.assets.initialize_on_precompile = true
	config.secret_key = '2937230cde0e0b32c54b7acff4463bd56155bc0694984d9764abf5dfb4628236be7d8d468e72fb6404107141edebd7e84f4cc3837871efc99b5c6702b242be50'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
  end
end
