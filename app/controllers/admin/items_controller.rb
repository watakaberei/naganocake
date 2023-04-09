class Admin::ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
  end
  
  private
  
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)  
  end
end
