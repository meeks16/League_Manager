class ModifySchedules < ActiveRecord::Migration
  def up
  	add_column :schedules, :date, :datetime
  	add_column :schedules, :court, :int
  	add_column :schedules, :teamA, :int
  	add_column :schedules, :teamB, :int
  end

  def down
  	remove_column :schedules, :date
  	remove_column :schedules, :court
  	remove_column :schedules, :teamA
  	remove_column :schedules, :teamB
  end
end
