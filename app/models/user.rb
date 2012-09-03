class User < ActiveRecord::Base

	has_secure_password

	has_many  :stories, :dependent => :destroy,
	                    :foreign_key => "owner_id"

	has_many  :tasks, :class_name => "Story",
	                  :dependent => :nullify,
	                  :foreign_key => "executor_id"

	has_many  :comments,  :dependent => :destroy


  validates :password,  :presence => true,
												:on => :create

	validates :email, :uniqueness => true

  attr_accessible :email, :name, :password,:password_confirmation, :surname

	def full_name
		"#{name} #{surname}"
	end

end
