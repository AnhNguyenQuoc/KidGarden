class Phanconggiangday < ApplicationRecord
  belongs_to :lop
  belongs_to :employment

  validates_presence_of :lop

end
