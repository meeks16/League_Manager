class AddColumnsMatch < ActiveRecord::Migration
  def up
  	add_column :matches, :home_team, :int
  	add_column :matches, :away_team, :int
  end

  def down
    remove_column :matches, :home_team
  	remove_column :matches, :away_team
  end
end
