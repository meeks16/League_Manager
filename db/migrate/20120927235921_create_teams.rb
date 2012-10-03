class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :sets_played
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
