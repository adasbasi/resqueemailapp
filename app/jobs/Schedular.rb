class Schedular
	@queue = :schedular

	def self.perform(email)
		UserMailer.welcome_email(email).deliver_later
	end
end
