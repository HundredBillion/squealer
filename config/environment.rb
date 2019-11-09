# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.action_mailer.default_url_options = { :host => 'https://squealer-david-lee.herokuapp.com' }
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'https://squealer-david-lee.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}