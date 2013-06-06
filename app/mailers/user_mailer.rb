class UserMailer < ActionMailer::Base
  default from: "contacto@coketas.com"
  
  def contact_confirmation(user)
    @user = user
    mail(:to => "#{user.nombre} <#{user.email}>", :subject => "Contacto")
  end
end
