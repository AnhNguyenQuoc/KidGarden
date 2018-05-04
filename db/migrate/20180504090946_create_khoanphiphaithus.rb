class CreateKhoanphiphaithus < ActiveRecord::Migration[5.1]
  def change
    create_table :khoanphiphaithus do |t|
      t.string :tendichvu
      t.decimal :phidichvu
      t.string :loaidichvu
      t.boolean :kieudichvu
      t.string :hinhthuc

      t.timestamps
    end
  end
end
