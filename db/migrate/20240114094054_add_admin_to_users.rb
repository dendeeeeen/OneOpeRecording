class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :authority, :integer, default: 0
  end
end
