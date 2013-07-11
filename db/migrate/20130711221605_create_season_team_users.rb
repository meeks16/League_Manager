class CreateSeasonTeamUsers < ActiveRecord::Migration
  def change
    create_table :season_team_users do |t|
      t.integer :season_team_id
      t.integer :user_id

      t.timestamps
    end
  end
end
