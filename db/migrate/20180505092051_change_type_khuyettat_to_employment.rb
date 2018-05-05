class ChangeTypeKhuyettatToEmployment < ActiveRecord::Migration[5.1]
  def change
    change_column :employments, :khuyettan, :string
  end
end
