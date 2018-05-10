class Khoanphiphaithu < ApplicationRecord

    belongs_to :lop


    validates_presence_of :tendichvu, :phidichvu, :loaidichvu, :kieudichvu, :hinhthuc
end
