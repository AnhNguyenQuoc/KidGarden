class Lop < ApplicationRecord
  belongs_to :department
  before_save {self.lophoc = lophoc.downcase}


  VALID_LOPHOC = /(chồi|mầm|lá)?[0-9]+/

  validates :khoihoc, presence: true, length: {minimum: 6}
  validates :lophoc, presence: true, length: {minimum: 6}, format: {with: VALID_LOPHOC}
  validates :syso, presence: true
end
