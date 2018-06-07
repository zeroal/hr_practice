class Admins::DepartmentsController < AdminController
	before_filter :find_all_department

	def find_all_department
		@departments = Department.all;
	end

	def new
		@department = Department.new
	end

	def create
		department = Department.new

		department.name = params[:department][:name]
		department.description = params[:department][:description]
		department.save

		redirect_to action: "index"
	end

	def index
		@departments = Department.all		
	end

	def edit
		@department = Department.find_by(id: params[:id])
	end

	def update
		department = Department.find_by(id: params[:id])
		
		department.name = params[:department][:name]
		department.description = params[:department][:description]
		department.save

		redirect_to action: "index"
	end

	def show

	end

	def destroy
		department = Department.find_by(id: params[:id])
		department.destroy
		redirect_to action: "index"
	end
end
