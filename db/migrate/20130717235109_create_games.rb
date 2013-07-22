class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :match_id
      t.integer :teamA_score
      t.integer :teamB_score
      t.integer :sequence_id

      t.timestamps
    end
  end
end
