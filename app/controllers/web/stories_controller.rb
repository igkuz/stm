class Web::StoriesController < Web::ProtectedController
  def new
	  @story = Story.new
  end

  def create
	  @story = Story.new(params[:story])
	  if @story.save
		  redirect_to root_path, :notice => "Story created"
	  else
		  render "new"
	  end
  end

  def index
	  @stories = Story.all
  end

	def edit

	end
end
