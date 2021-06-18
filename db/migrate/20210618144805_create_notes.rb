class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.boolean :is_active, default: true
      t.references :calendar, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
