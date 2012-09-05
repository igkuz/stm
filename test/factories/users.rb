# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence (:name) { |n| "Name#{n}" }

  factory :user, aliases: [:executor] do
	  name { generate(:name) }
	  surname { generate(:name) }
	  email { "#{name}.#{surname}@example.com".downcase }
	  password "pass"
  end
end
