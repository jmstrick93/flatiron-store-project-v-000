module CartsHelper

  def current_cart_button(user)
    if user_signed_in?
      link_to "Your cart", cart_path(user.return_or_set_current_cart)
    end
  end


end
