class Public::HomesController < ApplicationController

  def top
  end
  
  def about
  end
  
  private
  def home_params
    params.require(:home).permit(:image)  
  end
end

