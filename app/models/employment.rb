class Employment < ApplicationRecord
    belongs_to :departments
    has_one :phanconggiangday


    validates_presence_of :hoten, :ngaysinh, :gioitinh, :cmnd, :ngaycapcmnd, :noisinh, :diachithuongtru, :noiohiennay, :dtdd
end
