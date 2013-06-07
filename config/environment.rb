# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Coketas::Application.initialize!

ActionMailer::Base.smtp_settings = YAML.load_file(
    Rails.root.join('config', 'mailers.yml'))[Rails.env].try(:to_options)