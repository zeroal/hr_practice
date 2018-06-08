class HomeController < ApplicationController
	layout 'admin'
	before_filter :find_all_department
	before_action :authenticate_user!

	def find_all_department
		@departments = Department.all;
	end

	def index
		
	end
end
