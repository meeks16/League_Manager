class AddColumnSchedules < ActiveRecord::Migration
  def up
	 add_column :schedules, :timeslot, :int
  end

  def down
  	remove_column :schedules, :timeslot
  end
end
