class AddColumnSeason < ActiveRecord::Migration
  def up
  	add_column :seasons, :number_of_timeslots, :int
  end

  def down
  	remove_column :seasons, :number_of_timeslots
  end
end
