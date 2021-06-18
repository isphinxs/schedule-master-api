class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.string :weekday

      t.timestamps
    end
  end
end
