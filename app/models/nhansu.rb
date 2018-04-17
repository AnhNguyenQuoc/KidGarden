class Nhansu < ApplicationRecord
    belongs_to :department


    


    validates :hoten, presence: true
    validates :ngaysinh, presence: true
    validates :gioitinh, presence: true, inclusion: {in: [true, false]}
    validates :cmnd, presence: true
    validates :ngaycapcmnd, presence: true
    validates :noisinh, presence: true
    validates :diachithuongtru, presence: true
    validates :noiohiennay, presence: true
    validates :dtdd, presence: true




end



