class AddDayToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :day, :integer
  end
end
