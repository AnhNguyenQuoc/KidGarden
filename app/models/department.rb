class Department < ApplicationRecord

    has_many :nhansus


    ONLY_CHARACTER = /[a-zA-Z\w\s]*/
    validates :name, presence: true, length: {maximum: 40}
    validates :leader, presence: true, length: {maximum: 40}, format: { :with => ONLY_CHARACTER }

end
