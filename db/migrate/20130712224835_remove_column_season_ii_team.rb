class RemoveColumnSeasonIiTeam < ActiveRecord::Migration
  def up
  	remove_column :season_teams, :season_team_user_id
  end

  def down
  	add_column :season_teams, :season_team_user_id, :int
  end
end
