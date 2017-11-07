module CartsHelper

  def current_cart_button(user)
    if user_signed_in?
      link_to "Your cart", assign_cart_path
    end
  end


end
