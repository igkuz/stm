class Story < ActiveRecord::Base

	belongs_to :owner,  :class_name => "User"
	belongs_to :executor, :class_name => "User"

	has_many  :comments

	attr_accessible :title, :description, :executor_id, :state_event

	validates :title, :presence => true,
										:length => { :maximum => 256 }
	validates :description, :presence => true
	validates :executor, :presence => true

	state_machine :state, :initial => :new do

		state :new
		state :started
		state :finished
		state :reopened
		state :accepted

		event :start do
			transition :new => :started
		end

		event :finish do
			transition [:started, :reopened] => :finished
		end

		event :reopen do
			transition :finished => :reopened
		end

		event :accept do
			transition :finished => :accepted
		end

	end

	def to_s
		title
	end

end
