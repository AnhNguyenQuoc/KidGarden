class DropCongViecDuocGiaoEmployment < ActiveRecord::Migration[5.1]
  def change
    remove_column :employments, :congviecduocgiao
  end
end
