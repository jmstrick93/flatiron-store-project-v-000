class LineItemsController < ApplicationController
  def create
    @user = current_user
    @cart = @user.current_cart
    @item = Item.find_by(:id => params[:item_id])
    @cart.add_item(@item.id).save

    redirect_to cart_path(@cart)
  end
end
  
