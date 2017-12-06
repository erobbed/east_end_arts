class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.integer :group_id

      t.timestamps
    end
  end
end
