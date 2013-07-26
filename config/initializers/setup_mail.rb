ActionMailer::Base.smtp_settings = {
  address:              'smtp.mandrillapp.net',
  port:                 '587',
  authentication:       :plain,
  user_name:            ENV['MANDRIL_USERNAME'],
  password:             ENV['MANDRIL_PASSWORD'],
  enable_starttls_auto: true
}