class Plan < ActiveRecord::Base
	has_many :attendances
	has_many :users, :through => :attendances
end
