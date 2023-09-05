class Public::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  private

  def item_params
    params.require(:item).permit(:image, :genre_id, :name, :introduction, :price_without_tax, :is_active)
  end

end
