class AddDepartmentIdToEmployment < ActiveRecord::Migration[5.1]
  def change
    add_reference :employments, :department, foreign_key: true
  end
end
