ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "prueba-coketas.herokuapp.com",
  :user_name            => "sarriagada87@gmail.com",
  :password             => "yosoymuyfeliz",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"