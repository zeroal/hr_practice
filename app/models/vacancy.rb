class Vacancy < ActiveRecord::Base
	belongs_to :department
	has_many :recruitments
end
