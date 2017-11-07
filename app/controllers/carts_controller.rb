class CartsController < ApplicationController

  # def assign_cart
  #   @user = current_user
  #   @cart = @user.return_or_set_current_cart
  #   redirect_to cart_path(@cart)
  # end

  def show
    @user = current_user
    @cart = Cart.find_by(:id => params[:id])
  end

  def checkout
    @user = current_user
    @cart = @user.current_cart
    #reduce quantity of inventory of all items by the quantity of each line-item purchased
    @cart.remove_purchases_from_inventory
    @user.current_cart_id = nil
    @user.save
    redirect_to cart_path(@cart)
  end

end
