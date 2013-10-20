class AddColumnsToSeasonTeam < ActiveRecord::Migration
  
  def up
  	add_column :season_teams, :sets_played, :int
  	add_column :season_teams, :wins, :int
  	add_column :season_teams, :losses, :int
  end

  def down
  	remove_column :season_teams, :sets_played
  	remove_column :season_teams, :wins
  	remove_column :season_teams, :losses
  end
  
end
