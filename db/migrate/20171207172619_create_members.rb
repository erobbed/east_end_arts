class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|

      t.integer :group_id
      t.integer :user_id
      t.boolean :group_admin, default: false

      t.timestamps
    end
  end
end
