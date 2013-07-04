class AddTimeslotColumn < ActiveRecord::Migration
  def up
  	add_column :timeslots, :season_id, :int
  end

  def down
  	remove_column :timeslots, :season_id
  end
end
