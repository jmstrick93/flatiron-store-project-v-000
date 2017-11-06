module ItemsHelper
  def add_to_cart_button
    if user_signed_in?
      render :partial => 'store/add_to_cart'
    end
  end
end
