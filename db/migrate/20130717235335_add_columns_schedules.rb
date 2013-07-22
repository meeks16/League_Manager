class AddColumnsSchedules < ActiveRecord::Migration
  def up
  	add_column :schedules, :winner, :int
  end

  def down
  	remove_column :schedules, :winner
  end
end
