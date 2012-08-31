class Comment < ActiveRecord::Base

	attr_accessible :title, :body

	belongs_to :users
	belongs_to :stories

end
