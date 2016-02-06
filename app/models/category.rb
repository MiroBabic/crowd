class Category < ActiveRecord::Base
	has_one :project
end
