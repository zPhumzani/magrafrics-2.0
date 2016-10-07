class VisitorMailer < ApplicationMailer
  def contact_email(name, email, subject, message)
  	@name = name
  	@email = email
  	@message = message
  	@subject = subject
  	mail(from: @email, 
  		to: 'magrafrics2.0@gmail.com',
  		subject: @subject)
  end
end
