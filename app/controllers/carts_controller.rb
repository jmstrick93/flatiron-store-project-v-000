class CartsController < ApplicationController

  def show
    @user = current_user
  end

  def checkout
    @user = current_user
    @cart = @user.current_cart
    @user.current_cart_id = nil
    @user.save
    redirect_to cart_path(@cart)
  end

end
