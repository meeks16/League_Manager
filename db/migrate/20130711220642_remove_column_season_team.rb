class RemoveColumnSeasonTeam < ActiveRecord::Migration
  def up
  	remove_column :season_teams, :user_id	
  end

  def down
  	add_column :season_teams, :user_id, :int
  end
end
