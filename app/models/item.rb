class Item < ApplicationRecord
    validates :title, presence: true, length: { maximum: 1000 }
    validates :author, presence: true, length: { maximum: 1000 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :url, presence: true
    validates :category, presence: true
end
