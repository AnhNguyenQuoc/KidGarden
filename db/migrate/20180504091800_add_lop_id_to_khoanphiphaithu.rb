class AddLopIdToKhoanphiphaithu < ActiveRecord::Migration[5.1]
  def change
    add_reference :khoanphiphaithus, :lop, foreign_key: true
  end
end
