class AddLatToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :location, :lat
    add_column :events, :long, :string
  end
end
