class Taisanlop < ApplicationRecord
  belongs_to :lop

  validates_presence_of :tentaisan, :donvitinh, :nguontaisan, :soluong, :lop_id
end
