class AddGameToSeasonTeams < ActiveRecord::Migration
  def up
  	add_column :season_teams, :match_played, :int
  	add_column :season_teams, :match_wins, :int
  	add_column :season_teams, :match_losses, :int
  end

  def down
  	remove_column :season_teams, :match_played
  	remove_column :season_teams, :match_wins
  	remove_column :season_teams, :match_losses
  end
  
end
