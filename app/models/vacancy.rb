class Vacancy < ActiveRecord::Base
	belongs_to :department
	has_many :recruitments
	has_many :users, through: :recruitments   
end
