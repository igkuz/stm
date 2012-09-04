class Story < ActiveRecord::Base

	belongs_to :owner,  :class_name => "User"
	belongs_to :executor, :class_name => "User"

	has_many  :comments

	attr_accessible :title, :description, :executor_id, :state

	validates :title, :presence => true,
										:length => { :maximum => 256 }
	validates :description, :presence => true
	validates :executor, :presence => true

	state_machine :state, :initial => :new do

		state :new
		state :started
		state :finished
		state :accepted

	end

	def to_s
		title
	end

end
