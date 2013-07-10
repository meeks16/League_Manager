class AddColumnSeasons < ActiveRecord::Migration
  def up
  	add_column :seasons, :league_name, :string
  end

  def down
  	remove_column :seasons, :league_name
  end
end
