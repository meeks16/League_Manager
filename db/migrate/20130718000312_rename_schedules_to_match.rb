class RenameSchedulesToMatch < ActiveRecord::Migration
  def self.up
  	rename_table :schedules, :matches
  end
  
  def self.down
  	rename_table :matches, :schedules
  end
end
