module Web::StoriesHelper
	def story_states
		Story.state_machine(:state).states.map {|s| [s.human_name, s.name]}
	end
	end
