class AddColumnMatches < ActiveRecord::Migration
  
  def up
  	add_column :matches, :game_id, :int
  end

  def down
  	remove_column :matches, :game_id
  end
end
