class CreateEmployments < ActiveRecord::Migration[5.1]
  def change
    create_table :employments do |t|
      t.string :hoten
      t.datetime :ngaysinh
      t.boolean :gioitinh
      t.string :tengoikhac
      t.integer :sohieucongchuc
      t.integer :cmnd
      t.datetime :ngaycapcmnd
      t.string :noicapcmnd
      t.string :tenxeptkb
      t.string :dantoc
      t.string :tongiao
      t.string :quoctich
      t.string :noisinh
      t.string :diachithuongtru
      t.string :noiohiennay
      t.integer :dtcoquan
      t.integer :dtnharieng
      t.integer :dtdd
      t.string :email
      t.boolean :tinhtranghonnhan
      t.string :thanhphanxuatthan
      t.string :dienuutiengd
      t.string :dienuutienbanthan
      t.string :nangkieu
      t.string :suckhoe
      t.string :nhommau
      t.integer :chieucao
      t.integer :cannang
      t.boolean :khuyettan
      t.string :stk
      t.string :nganhangmotaikhoan
      t.datetime :ngaybatdaudongbhxh
      t.string :sobhxh
      t.datetime :ngayhopdong
      t.datetime :ngaytuyendung
      t.string :hethongtuyendung
      t.string :coquantuyendung
      t.string :congviecduocgiao
      t.datetime :ngayvecoquanhiennay
      t.string :thuocloaicanbo
      t.string :nhomcvhiennay
      t.boolean :dangnghibhxh
      t.datetime :ngayvaonganhgd
      t.string :chucvuhientai
      t.float :hesophucap
      t.timestamps
    end
  end
end
