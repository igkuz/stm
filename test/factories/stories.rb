# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
	  title "TestTitle"
	  description "TestDescription"
	  state "new"
  end
end
