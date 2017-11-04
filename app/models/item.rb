class Item < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items

  has_many :order_items
  has_many :orders, through: :order_items

  belongs_to :category


end
