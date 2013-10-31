class AddColumnToGames < ActiveRecord::Migration
  def up
  	add_column :games, :number, :int
  end

  def down
  	remove_column :games, :number
  end
end