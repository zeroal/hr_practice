class VacanciesController < ApplicationController
	def index
		@vacancies = Vacancy.all
	end

	def show

	end
end
