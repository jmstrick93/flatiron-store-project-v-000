module ItemsHelper
  def add_to_cart_button
    if logged_in?
      render :partial => 'store/add_to_cart'
    end
  end
end
