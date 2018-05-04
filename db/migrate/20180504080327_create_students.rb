class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :hoten
      t.datetime :ngaysinh
      t.boolean :gioitinh
      t.string :choohientai
      t.string :hokhauthuongtru
      t.string :noisinh
      t.string :quequan
      t.string :dantoc
      t.string :dienchinhsach
      t.boolean :canngheo
      t.string :tencha
      t.string :nghenghiepcha
      t.integer :dienthoaibo
      t.string :tenme
      t.string :nghenghiepme
      t.integer :dienthoaime

      t.timestamps
    end
  end
end
