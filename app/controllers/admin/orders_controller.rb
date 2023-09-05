class Admin::OrdersController < ApplicationController
  def index
    @oders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
    @order.shipping_cost = 800
  end
  
  private

  def order_params
    params.require(:order).permit(:order_status)
  end

end
