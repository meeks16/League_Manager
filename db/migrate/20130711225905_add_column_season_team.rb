class AddColumnSeasonTeam < ActiveRecord::Migration
  def up
  	add_column :season_teams, :season_team_user_id, :int
  end

  def down
  	remove_column :season_teams, :season_team_user_id
  end
end
