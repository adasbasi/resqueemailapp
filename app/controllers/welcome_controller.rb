class WelcomeController < ApplicationController
	def index
	end
	def sendmail
		@email = params[:email]
		@time = params[:time]
#		@timetype = params[:timetype]

		#UserMailer.welcome_email(@email).deliver_later
		Resque.enqueue_in(1.minute, Schedular, @email)
		redirect_to root_path
	end
end
