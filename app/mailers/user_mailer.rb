class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(email)
		@email = email

		mail(to: @email, subject: 'Deneme')
		
	end

end
