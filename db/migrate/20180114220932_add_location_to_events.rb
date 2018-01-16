class AddLocationToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :lat, :location
    remove_column :events, :long, :string
  end
end
