class Web::Stories::ApplicationController < Web::ProtectedController
	 private

	def resource_story
		Story.find(params[:story_id])
	end
end