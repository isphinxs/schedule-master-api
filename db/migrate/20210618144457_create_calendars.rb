class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.string :title
      t.integer :start_month
      t.integer :start_year
      t.integer :end_month
      t.integer :end_year

      t.timestamps
    end
  end
end
