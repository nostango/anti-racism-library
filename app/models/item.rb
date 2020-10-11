class Item < ApplicationRecord
    validates :title, presence: true, length: { maximum: 1000 }
    validates :author, presence: true, length: { maximum: 1000 }
    validates :description, presence: true, length: { maximum: 1000 }
end
