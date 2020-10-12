class Item < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }
    validates :author, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :category, presence: true
end
