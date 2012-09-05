# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
	  title { generate(:title) }
	  body { generate(:title) }
	  user
	  story
  end
end
