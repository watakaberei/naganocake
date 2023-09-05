class Public::HomesController < ApplicationController

  def top
    @items = Item.page(params[:page])
  end

  def about
  end

  private
  def item_params
    params.require(:item).permit(:image, :genre_id, :name, :introduction, :price_without_tax, :is_active)
  end
end

