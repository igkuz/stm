# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
	  name "TestName"
	  surname "TestSurname"
	  email "123@mail.ru"
	  password "pass"
  end
end
