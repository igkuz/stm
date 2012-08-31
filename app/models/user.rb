class User < ActiveRecord::Base

	has_many  :stories, :dependent => :destroy,
	                    :foreign_key => "owner_id"

	has_many  :tasks, :class_name => "Story",
	                  :dependent => :nullify,
	                  :foreign_key => "executor_id"

	has_many  :comments,  :dependent => :destroy

	has_secure_password
  validates_presence_of :password, :on => :create
  attr_accessible :email, :name, :password,:password_confirmation, :surname

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end

end
