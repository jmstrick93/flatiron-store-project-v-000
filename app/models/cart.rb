class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items


  def total
    sum = 0
    items.each do |item|
      sum += item.price
    end
    sum
  end

  def add_item(item_id)
    line_item = LineItem.new(cart_id: self.id, item_id: item_id, quantity: 1)

    if line_item.already_in_cart?
      #dont create a new line item, but rather just increase the quantity of the old one
      old_line_item = LineItem.find_by(item_id: item_id, cart_id: id)
      old_line_item.quantity += line_item.quantity
      old_line_item.save
      line_item = old_line_item
    end
    #return the item that was effected
    line_item
  end



end
