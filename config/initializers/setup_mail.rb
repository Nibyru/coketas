ActionMailer::Base.smtp_settings = {
  address:              'smtp.mandrillapp.net',
  port:                 '587',
  user_name:            ENV['MANDRIL_USERNAME'],
  password:             ENV['MANDRIL_PASSWORD'],
}
