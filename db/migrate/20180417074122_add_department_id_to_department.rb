class AddDepartmentIdToDepartment < ActiveRecord::Migration[5.1]
  def change
    add_column :nhansus, :department_id, :reference
  end
end
