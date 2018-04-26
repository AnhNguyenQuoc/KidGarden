class Employment < ApplicationRecord
    belongs_to :departments
    has_one :district
    has_one :province
end
