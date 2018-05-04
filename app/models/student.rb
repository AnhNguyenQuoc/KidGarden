class Student < ApplicationRecord

    belongs_to :lop

    validates_presence_of :hoten, :ngaysinh, :gioitinh, :choohientai, :hokhauthuongtru,
     :noisinh, :quequan, :tencha, :nghenghiepcha, :dienthoaibo, :tenme, :nghenghiepme, :dienthoaime
end
