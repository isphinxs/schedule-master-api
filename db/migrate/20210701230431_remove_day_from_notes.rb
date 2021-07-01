class RemoveDayFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :day_id
  end
end
