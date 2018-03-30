class News < ApplicationRecord
    validates :title, presence: true, length: {in: 6..50}
    validates :description, presence: true
end
