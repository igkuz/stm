FactoryGirl.define do

	sequence :title do |n|
		"Title #{n}"
	end

	sequence :body do |n|
		"Body #{n}"
	end

	sequence :name, :aliases => [:surname] do |n|
		"Name#{n}"
	end

end
