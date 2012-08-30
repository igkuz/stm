class CreateStories < ActiveRecord::Migration
	def change
		create_table :stories do |t|
			t.string    :title
			t.text      :description
			t.integer   :type
			t.string    :state
			t.integer   :owner_id
			t.integer   :executor_id

      t.timestamps
    end
  end
end
