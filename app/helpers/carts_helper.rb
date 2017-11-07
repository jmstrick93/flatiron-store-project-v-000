module CartsHelper

  def current_cart_button(user)
    if user_signed_in?
      if user.current_cart
        link_to "Cart", cart_path(user.current_cart)
      end
    end
  end


end
