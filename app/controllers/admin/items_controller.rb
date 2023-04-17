class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save!
      redirect_to admin_item_path(@item.id)
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    iteml = Item.find(params[:id])
    iteml.update(item_params)
    redirect_to adminitem_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:image_id, :genre_id, :name, :introduction, :price_without_tax, :is_active)
  end
end
