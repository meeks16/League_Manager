class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.date :start
      t.date :end
      t.string :frequency
      t.integer :number_of_courts

      t.timestamps
    end
  end
end
