class RemoveColumnsIiSchedules < ActiveRecord::Migration
  def up
  	remove_column :schedules, :"hour"
  	remove_column :schedules, :"match"
  	remove_column :schedules, :"opponent"
  end

  def down
  	add_column :schedules, :"hour", :string
  	add_column :schedules, :"match", :string
  	add_column :schedules, :"opponent", :string
  end
end
