class AddLopIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :lop, foreign_key: true, allow_null: true
  end
end
