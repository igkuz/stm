class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  attr_accessible :email, :name, :password,:password_confirmation, :surname

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end

end
