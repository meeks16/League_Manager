class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :when
      t.string :hour
      t.string :match
      t.string :opponent

      t.timestamps
    end
  end
end
