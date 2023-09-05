class CartItem < ApplicationRecord
  belongs_to :item
  belongs_to :customer

  ## 小計を求めるメソッド
  def subtotal
    item.with_tax_price * amount
  end

  validates :item_id, presence: true
  validates :customer_id, presence: true
  validates :amount, presence: true

end
