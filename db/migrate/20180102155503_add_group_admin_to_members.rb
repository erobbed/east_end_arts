class AddGroupAdminToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :groupadmin, :boolean, default: false
  end
end
