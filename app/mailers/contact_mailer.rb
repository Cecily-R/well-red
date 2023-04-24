class ContactMailer < ApplicationMailer
  def contact_message(name, email, message)
    @name = name
    @message = message
    mail(to: 'cec1rowland@gmail.com', from: email, subject: 'New Website Message')
  end
end