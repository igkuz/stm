class ChangeCommentsReference < ActiveRecord::Migration
  def up
	  rename_column :comments, :users_id, :user_id
	  rename_column :comments, :stories_id, :story_id
  end

  def down
	  rename_column :comments, :user_id, :users_id
	  rename_column :comments, :story_id, :stories_id
  end
end
