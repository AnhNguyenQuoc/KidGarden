class CreateEmployments < ActiveRecord::Migration[5.1]
  def change
    create_table :employments do |t|
      t.string :hoten
      t.datetime :ngaysinh
      t.boolean :gioitinh
      t.string :tengoikhac, allow_null: true
      t.integer :sohieucongchuc, allow_null: true
      t.integer :cmnd
      t.datetime :ngaycapcmnd
      t.string :noicapcmnd
      t.string :tenxeptkb, allow_null: true
      t.string :dantoc, allow_null: true
      t.string :tongiao, allow_null: true
      t.string :quoctich, allow_null: true
      t.string :noisinh
      t.string :diachithuongtru
      t.string :noiohiennay
      t.integer :dtcoquan, allow_null: true
      t.integer :dtnharieng, allow_null: true
      t.integer :dtdd
      t.string :email, allow_null: true
      t.boolean :tinhtranghonnhan, allow_null: true
      t.string :thanhphanxuatthan, allow_null: true
      t.string :dienuutiengd, allow_null: true
      t.string :dienuutienbanthan, allow_null: true
      t.string :nangkieu, allow_null: true
      t.string :suckhoe, allow_null: true
      t.string :nhommau, allow_null: true
      t.integer :chieucao, allow_null: true
      t.integer :cannang, allow_null: true
      t.boolean :khuyettan, allow_null: true
      t.string :stk, allow_null: true
      t.string :nganhangmotaikhoan, allow_null: true
      t.datetime :ngaybatdaudongbhxh, allow_null: true
      t.string :sobhxh, allow_null: true
      t.datetime :ngayhopdong, allow_null: true
      t.datetime :ngaytuyendung, allow_null: true
      t.string :hethongtuyendung, allow_null: true
      t.string :coquantuyendung, allow_null: true
      t.string :congviecduocgiao, allow_null: true
      t.datetime :ngayvecoquanhiennay, allow_null: true
      t.string :thuocloaicanbo, allow_null: true
      t.string :nhomcvhiennay, allow_null: true
      t.boolean :dangnghibhxh, allow_null: true
      t.datetime :ngayvaonganhgd, allow_null: true
      t.string :chucvuhientai, allow_null: true
      t.float :hesophucap, allow_null: true
      t.timestamps
    end
  end
end
