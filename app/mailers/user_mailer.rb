class UserMailer < ApplicationMailer
	def welcome_email()
    	mail(to: "fajar.kemaswarsa@gmail.com", subject: 'Welcome to My Awesome Site')
  	end
end
