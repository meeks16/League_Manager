class RemoveColumnsMatches < ActiveRecord::Migration
  def up
  	remove_column :matches, :teamA
  	remove_column :matches, :teamB
  end

  def down
  	add_column :matches, :teamA, :string
  	add_column :matches, :teamB, :string
  end
end
