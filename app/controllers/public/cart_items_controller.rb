class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_customer.cart_items
    @total_price = 0
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.amount == nil
      @cart_items = current_customer.cart_items
      @total_price = 0
      puts 'test'
      render :index
      return
    end
    @cart_item.customer_id = current_customer.id
    @cart_items = current_customer.cart_items.all
    # binding.pry
    @cart_items.each do |cart_item|
      if cart_item.item_id == @cart_item.item_id
      new_amount = cart_item.amount + @cart_item.amount
      cart_item.update_attribute(:amount, new_amount)
      @cart_item.delete
      redirect_to cart_items_path
      end
    end

    if @cart_item.save
      redirect_to cart_items_path
    end
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(cart_item_params)
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all  #カート内全て削除
    cart_items = current_customer.cart_items.all
    cart_items.destroy_all
    redirect_to cart_items_path
  end

  private
  def cart_item_params
      params.require(:cart_item).permit(:item_id, :customer_id, :amount)
  end
end
