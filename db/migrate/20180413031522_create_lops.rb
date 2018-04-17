class CreateLops < ActiveRecord::Migration[5.1]
  def change
    create_table :lops do |t|
      t.string :khoihoc
      t.string :lophoc
      t.integer :syso
      t.references :department, foreign_key: true, allow_null: true

      t.timestamps
    end
  end
end
