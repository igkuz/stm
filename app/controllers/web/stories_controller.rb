class Web::StoriesController < Web::ProtectedController
  def new
	  @story = Story.new
  end

  def create
	  @story = Story.new(params[:story])
	  @story.owner = current_user
	  if @story.save
		  redirect_to stories_path, :notice => "Story created"
	  else
		  render "new"
	  end
  end

  def index
	  @stories = Story.all
  end

	def show
		@story = Story.find(params[:id])
		@comment = @story.comments.build
	end

	def edit
		show
	end

	def update
		@story = Story.find(params[:id])
		if @story.update_attributes(params[:story])
			redirect_to story_path(@story), :notice => "Successfully updated"
		else
			flash.now.alert "Smth went wrong"
			render "edit"
		end
	end

end
