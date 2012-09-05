# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :story do
	  title
	  description "TestDescription"
	  state "new"
	  executor
  end

end
