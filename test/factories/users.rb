# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user, aliases: [:executor] do
	  name
	  surname
	  email { "#{name}.#{surname}@example.com".downcase }
	  password "pass"
  end
end
