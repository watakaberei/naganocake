class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :item
end
