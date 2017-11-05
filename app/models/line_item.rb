class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item




  def already_in_cart?
    #use on unpersisted line items to determine if one is already in the cart that you are trying to put the receiving one in.
    self.class.find_by(cart_id: cart_id, item_id: item_id) ? true : false
  end

end
