class AddColumnMatch < ActiveRecord::Migration
  def up
  	add_column :matches, :season_id, :int
  end

  def down
  	remove_column :matches, :season_id
  end
end
