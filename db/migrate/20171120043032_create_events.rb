class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :details
      t.string :location
      t.integer :group_id

      t.timestamps
    end
  end
end
