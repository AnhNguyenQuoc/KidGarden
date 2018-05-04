class CreatePhanconggiangdays < ActiveRecord::Migration[5.1]
  def change
    create_table :phanconggiangdays do |t|
      t.references :lop, foreign_key: true
      t.references :employment, foreign_key: true

      t.timestamps
    end
  end
end
