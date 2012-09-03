class ChangeTypeColumn < ActiveRecord::Migration
  def up
	  rename_column :stories, :type, :type_id
  end

  def down
	  rename_column :stories, :type_id, :type
  end
end
