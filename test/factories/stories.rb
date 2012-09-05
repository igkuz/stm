# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence (:title) {|n| "Title #{n}"}

  factory :story do
	  title { generate(:title) }
	  description "TestDescription"
	  state "new"
	  executor
  end

end
