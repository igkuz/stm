class RemoveTypeColumn < ActiveRecord::Migration
  def up
	  remove_column :stories, :type_id
  end

  def down
	  add_column :stories, :type_id, :integer
  end
end
