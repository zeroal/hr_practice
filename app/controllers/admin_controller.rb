class AdminController < ApplicationController
	before_action :authenticate_user!,:is_admin

	def is_admin
		if current_user
			if current_user.is_admin == 0
				redirect_to "/home"
			end
		end
	end
end
