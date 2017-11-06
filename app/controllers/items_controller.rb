class ItemsController < ApplicationController

  def add_to_cart
    @item = params[:id]
    @user = current_user
    @user.current_cart.add_item(@item)

    redirect_to cart_path(@user.current_cart)
  end

end
