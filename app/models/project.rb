class Project < ActiveRecord::Base

	has_many :contributionss
	has_many :users, :through => :contributions
end
