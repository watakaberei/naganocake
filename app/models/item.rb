class Item < ApplicationRecord

  has_one_attached :image

  # アソシエーションの設定
  belongs_to :genre

  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy

  ## 消費税を求めるメソッド
  def with_tax_price
    (price_without_tax * 1.1).floor
  end

  validates :name, presence: true

end
