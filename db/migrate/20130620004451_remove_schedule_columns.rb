class RemoveScheduleColumns < ActiveRecord::Migration
  def up
  	remove_column :schedules, :"when"
  end

  def down
  	add_column :schedules, :"when", :string
  end
end
