class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_stm, :surname
end
