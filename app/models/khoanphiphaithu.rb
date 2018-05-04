class Khoanphiphaithu < ApplicationRecord


    validates_presence_of :tendichvu, :phidichvu, :loaidichvu, :kieudichvu, :hinhthuc
end
