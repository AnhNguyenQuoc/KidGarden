class ChangeTypeOfAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :admin, :integer, default: 1
  end
end
