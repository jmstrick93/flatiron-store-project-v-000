class ItemsController < ApplicationController

  def add_to_cart
    @item = params[:id]
    @user = current_user

  end

end
