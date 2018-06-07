class Department < ActiveRecord::Base
	has_many :vacancies
end
