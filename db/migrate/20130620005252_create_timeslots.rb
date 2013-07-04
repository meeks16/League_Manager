class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.string :name
      t.timestamps
    end
  end
end
