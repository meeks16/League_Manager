class RenameColumnMatches < ActiveRecord::Migration
  def up
  	rename_column :matches, :home_team, :season_home_team_id
  	rename_column :matches, :away_team, :season_away_team_id
  end

  def down
   	rename_column :matches, :season_home_team_id, :home_team
  	rename_column :matches, :season_away_team_id, :away_team
  end
end
