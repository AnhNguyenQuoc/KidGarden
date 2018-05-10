class Taisanlop < ApplicationRecord
  belongs_to :lop

  validates_presence_of :tentaisan, :donvitaisan, :nguontaisan, :soluong, :lop_id
end
