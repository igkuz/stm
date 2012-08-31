class Story < ActiveRecord::Base

	belongs_to :owner,  :class_name => "User"
	belongs_to :executor, :class_name => "User"

	has_many  :comments

	attr_accessible :title, :description, :executor, :state, :type

	validates :title, :presence => true,
										:length => { :maximum => 256 }
	validates :description, :presence => true
	validates :executor, :presence => true

end
