class Employment < ApplicationRecord
    belongs_to :departments, optional: true
    has_one :phanconggiangday

    validates :hoten, :presence => {:message => "Họ tên không được để trống!!!"}
    validates :ngaysinh, :presence => {:message => "Ngày sinh  không được để trống!!!"}
    validates :gioitinh, :presence => {:message => "Giới tính không được để trống!!!"}
    validates :cmnd, :presence => {:message => "Chứng minh không được để trống!!!"}
    validates :ngaycapcmnd, :presence => {:message => "Ngày cấp cmnd không được để trống!!!"}
    validates :noisinh, :presence => {:message => "Nơi sinh không được để trống!!!"}
    validates :diachithuongtru, :presence => {:message => "Địa chỉ thường trú không được để trống!!!"}
    validates :noiohiennay, :presence => {:message => "Nơi ở hiện tại không được để trống!!!"}
    validates :dtdd, :presence => {:message => "Điện thoại di động không được để trống!!!"}, numericality: { only_integer: true, message: "Phải là số cơ!!"}
    validates :dtcoquan, numericality: { only_integer: true, :message => "Phải là số cơ!!"}, allow_blank: true
end
