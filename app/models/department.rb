class Department < ApplicationRecord

    has_many :employments

    validates :name, presence: true, length: {maximum: 40}
    validates :leader, presence: true

end
