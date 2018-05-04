class CreateTaisanlops < ActiveRecord::Migration[5.1]
  def change
    create_table :taisanlops do |t|
      t.string :tentaisan
      t.string :donvitaisan
      t.string :nguontaisan
      t.integer :soluong
      t.references :lop, foreign_key: true

      t.timestamps
    end
  end
end
