class RenameColumnMatch < ActiveRecord::Migration
  def up
  	rename_column :matches, :timeslot, :timeslot_id
  end

  def down
   	rename_column :matches, :timeslot_id, :timeslot
  end
end
