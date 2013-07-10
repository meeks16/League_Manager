class CreateSeasonTeams < ActiveRecord::Migration
  def change
    create_table :season_teams do |t|
      t.integer :season_id
      t.integer :team_id
      t.integer :user_id

      t.timestamps
    end
    add_index :season_teams, :season_id
    add_index :season_teams, :team_id
    add_index :season_teams, :user_id
  end
end
