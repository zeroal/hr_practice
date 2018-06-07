class Admins::VacanciesController < AdminController	
	before_filter :find_all_department

	def find_all_department
		@departments = Department.all;
	end

	def new
		@vacancy = Vacancy.new
	end

	def create
		vacancy = Vacancy.new
		department = Department.find_by(id: params[:vacancy][:department_id])

		vacancy.title = params[:vacancy][:title]
		vacancy.description = params[:vacancy][:description]
		vacancy.department = department
		vacancy.start_date = params[:vacancy][:start_date].to_date
		vacancy.end_date = params[:vacancy][:end_date].to_date
		vacancy.save

		redirect_to action: "index"
	end

	def index
		@vacancies = Vacancy.all
	end

	def edit
		@vacancy = Vacancy.find_by(id: params[:id])
		@vacancy.start_date = @vacancy.start_date.strftime("%d/%m/%Y")
		@vacancy.end_date = @vacancy.end_date.strftime("%d/%m/%Y")
	end

	def update
		vacancy = Vacancy.find_by(id: params[:id])
		department = Department.find_by(id: params[:vacancy][:department_id])

		vacancy.title = params[:vacancy][:title]
		vacancy.description = params[:vacancy][:description]
		vacancy.department = department
		vacancy.start_date = params[:vacancy][:start_date].to_date
		vacancy.end_date = params[:vacancy][:end_date].to_date
		vacancy.save

		redirect_to action: "index"
	end

	def destroy
		vacancy = Vacancy.find_by(id: params[:id])
		vacancy.destroy
		redirect_to action: "index"
	end
end
