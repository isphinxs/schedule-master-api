class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :title
      t.string :month
      t.string :day
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
