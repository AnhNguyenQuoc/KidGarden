class Lop < ApplicationRecord
  belongs_to :department
  before_save {self.lophoc = lophoc.downcase}
  has_many :phancongcongviecs

  accepts_nested_attributes_for :phancongcongviecs
  has_many :students
  has_many :taisanlops, dependent: :destroy
  has_many :khoanphiphaithus, dependent: :destroy

  validates :khoihoc, presence: {message: "Không được để trống!"}
  validates :lophoc, presence: {message: "Không được để trống!"}
  validates :syso, presence: {message: "Không được để trống!"}
end
