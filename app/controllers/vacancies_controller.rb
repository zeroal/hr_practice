class VacanciesController < ApplicationController
	def index
		@vacancies = Vacancy.all
	end

	def show
		@vacancy = Vacancy.find_by(id:params["id"])
		recruitment = Recruitment.find_by(vacancy:@vacancy,user:current_user)

		if recruitment
			@applied = true
		else
			@applied = false
		end
		
	end

	def apply
		recruitment = Recruitment.new
		vacancy = Vacancy.find_by(id:params["id"])

		# recruitment.vacancy = vacancy
		# recruitment.user = current_user
		# recruitment.save

		# UserMailer.welcome_email().deliver_now

		redirect_to action: "index"
	end
end

