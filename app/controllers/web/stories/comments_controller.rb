class Web::Stories::CommentsController < Web::Stories::ApplicationController
  def new
	  @story = Story.find(params[:story_id])
  end

  def create
	  story = Story.find(params[:story_id])
	  comment = story.comments.new(params[:comment])
	  comment.user = current_user
	  if comment.save
		  redirect_to story_path story, :notice => "Comment added"
	  else
		  flash.now.alert "Smth went wrong"
		  render story_path story
	  end
  end

  def index

  end
end
